import json, subprocess
from pathlib import Path
root=Path(__file__).resolve().parents[1]
headers=['gfx','app','audio','fetch','args','time','log','glue']
source=root/'.prepare/declarations.c'
source.parent.mkdir(parents=True,exist_ok=True)
source.write_text('\n'.join(f'#include "{root}/native/sokol_{h}.h"' for h in headers))
ast=json.loads(subprocess.check_output(['clang','-Xclang','-ast-dump=json','-fsyntax-only',str(source)]))
prefixes={'gfx':'sg_','app':'sapp_','audio':'saudio_','fetch':'sfetch_','args':'sargs_','time':'stm_','log':'slog_','glue':'sglue_'}
out={k:[] for k in headers}
for d in ast['inner']:
    name=d.get('name','')
    if d['kind']=='EnumDecl' and not name:
        name=next((x.get('name','') for x in d.get('inner',[]) if x['kind']=='EnumConstantDecl'),'').lower()
    module=next((k for k,p in prefixes.items() if name.lower().lstrip('_').startswith(p)),None)
    if module is None: continue
    kind=d['kind']
    if kind=='RecordDecl' and d.get('completeDefinition'):
        out[module].append({'kind':'struct','name':d['name'],'fields':[{'name':f.get('name',''),'type':f['type']['qualType'].replace('_Bool','bool')} for f in d.get('inner',[]) if f['kind']=='FieldDecl']})
    elif kind=='EnumDecl':
        items=[]; v=-1
        for f in d.get('inner',[]):
            if f['kind']!='EnumConstantDecl':continue
            def val(n):
                if n.get('kind')=='ConstantExpr':return int(n['value'])
                for x in n.get('inner',[]):
                    r=val(x)
                    if r is not None:return r
            vv=val(f);v=v+1 if vv is None else vv
            items.append({'name':f['name'],'value':v})
        out[module].append({'kind':'enum' if d.get('name') else 'consts','name':d.get('name',''),'items':items})
    elif kind=='FunctionDecl':
        out[module].append({'kind':'func','name':name,'result':d['type']['qualType'].split('(')[0].strip().replace('_Bool','bool'),'params':[{'name':p.get('name',f'arg{i}'),'type':p['type']['qualType'].replace('_Bool','bool')} for i,p in enumerate(d.get('inner',[])) if p['kind']=='ParmVarDecl']})
(root/'scripts/api.json').write_text(json.dumps(out,indent=2)+'\n')
for k,v in out.items(): print(k,{t:sum(d['kind']==t for d in v) for t in ['struct','enum','func']})
