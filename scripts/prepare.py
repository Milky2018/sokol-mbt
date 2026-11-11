#!/usr/bin/env python3
"""Vendor immutable Sokol sources, verifying every file against its SHA-256.

Adapted from the make-moonbit-c-bindings prepare.py template. No downloads or
code generation run during normal MoonBit builds. --check is fully offline.
"""
from __future__ import annotations
import argparse
import hashlib
import json
import urllib.request
from pathlib import Path

ROOT=Path(__file__).resolve().parents[1]
LOCK=json.loads((ROOT/'scripts/upstream.json').read_text())

def sha256_file(path: Path) -> str:
    return hashlib.sha256(path.read_bytes()).hexdigest()

def main():
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--check',action='store_true',help='check vendored files without network access')
    args=parser.parse_args()
    cache=ROOT/'.prepare/vendor'
    if not args.check:cache.mkdir(parents=True,exist_ok=True)
    for name,expected in LOCK['files'].items():
        dest=ROOT/'native'/name
        if dest.exists() and sha256_file(dest)==expected:continue
        if args.check:raise SystemExit(f'vendored file missing or modified: {dest}')
        cached=cache/name
        if not cached.exists() or sha256_file(cached)!=expected:
            upstream_name='LICENSE' if name=='SOKOL-LICENSE' else name
            url=f'https://raw.githubusercontent.com/floooh/sokol/{LOCK["revision"]}/{upstream_name}'
            with urllib.request.urlopen(url,timeout=60) as response:data=response.read()
            if hashlib.sha256(data).hexdigest()!=expected:raise SystemExit(f'SHA-256 mismatch: {url}')
            cached.write_bytes(data)
        dest.write_bytes(cached.read_bytes())
    print(f'Verified {len(LOCK["files"])} upstream files at {LOCK["revision"]}')

if __name__=='__main__':main()
