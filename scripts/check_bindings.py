#!/usr/bin/env python3
"""Ensure every pinned upstream function has a native binding and a public API."""
import json,re
from pathlib import Path
ROOT=Path(__file__).resolve().parents[1]
API=json.loads((ROOT/'scripts/api.json').read_text())
PREFIX=dict(gfx='sg_',app='sapp_',audio='saudio_',fetch='sfetch_',args='sargs_',time='stm_',log='slog_',glue='sglue_')
CUSTOM={
 'sg_shutdown':('mb_gfx_shutdown','shutdown'),
 'sg_install_trace_hooks':('mb_gfx_install_trace_hooks','install_trace_hooks'),
 'sg_add_commit_listener':('mb_gfx_add_commit_listener','add_commit_listener'),
 'sg_remove_commit_listener':('mb_gfx_remove_commit_listener','remove_commit_listener'),
 'sapp_run':('mb_app_run','run'),
 'sapp_html5_fetch_dropped_file':('mb_app_html5_fetch','html5_fetch_dropped_file_native'),
 'saudio_push':('mb_audio_push','push'),
 'sfetch_send':('mb_fetch_send','send'),
 'sfetch_shutdown':('mb_fetch_shutdown','shutdown'),
 'sfetch_dowork':('mb_fetch_dowork','dowork'),
 'sfetch_bind_buffer':('mb_fetch_bind_buffer','bind_buffer'),
 'sfetch_unbind_buffer':('mb_fetch_unbind_buffer','unbind_buffer'),
 'sargs_setup':('mb_args_setup','setup'),
 'stm_laptime':('mb_time_laptime','laptime'),
 'slog_func':('mb_log_write','write'),
}
coverage=json.loads((ROOT/'scripts/coverage.json').read_text())
count=0
for module,decls in API.items():
 c='\n'.join(p.read_text() for p in (ROOT/module).glob('*') if p.suffix in ['.h','.c','.inc'])
 mb='\n'.join(p.read_text() for p in (ROOT/module).glob('*.mbt') if not p.name.endswith(('_test.mbt','_wbtest.mbt')))
 for d in decls:
  if d['kind']!='func':continue
  n=d['name'];bridge,public=CUSTOM.get(n,(f'mb_{module}_{n}',n.removeprefix(PREFIX[module])))
  if public=='continue':public='continue_'
  if n in coverage[module]['direct']:
   ffi=(ROOT/module/'ffi.mbt').read_text()
   if not re.search(r'= \"'+re.escape(n)+r'\"',ffi):raise SystemExit(f'missing direct FFI declaration: {n}')
  elif not re.search(r'\b'+re.escape(bridge)+r'\s*\(',c):raise SystemExit(f'missing C bridge: {n}')
  if not re.search(r'pub fn '+re.escape(public)+r'\s*\(',mb):raise SystemExit(f'missing public API: {n}')
  count+=1
print(f'All {count} upstream functions have native bindings and public MoonBit APIs.')
