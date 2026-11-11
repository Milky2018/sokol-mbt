#!/usr/bin/env python3
"""Run the native suite and optional smoke executables under AddressSanitizer.

Adapted from the MoonBit C-binding skill runner for the current toolchain:
MOONBIT_ALLOCATOR=system replaces the old installed-runtime-object workaround.
A temporary compiler wrapper instruments all C units and linker invocations;
package manifests and the installed MoonBit toolchain are never modified.
"""
import argparse
import os
import platform
import shutil
import subprocess
import tempfile
from pathlib import Path


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--repo-root', type=Path, default=Path(__file__).resolve().parents[1])
    parser.add_argument('--cc', help='ASan-capable C compiler (defaults to the system compiler)')
    parser.add_argument('--no-leak-check', action='store_true', help='Disable LSan; always disabled for Apple Clang')
    parser.add_argument('--run', action='append', default=[], metavar='PACKAGE', help='Run a native executable with --smoke after passing tests')
    args = parser.parse_args()
    if os.name == 'nt':
        parser.error('this sanitizer runner requires a Unix compiler; Windows builds are covered by the native CI job')
    root = args.repo_root.resolve()
    if not (root / 'moon.mod').is_file():
        parser.error(f'not a MoonBit module: {root}')
    compiler = shutil.which(args.cc or 'cc')
    if compiler is None:
        parser.error('C compiler not found')
    compiler = str(Path(compiler).resolve())
    leak_check = platform.system() != 'Darwin' and not args.no_leak_check
    with tempfile.TemporaryDirectory(prefix='sokol-asan-') as temporary:
        directory = Path(temporary)
        # Use a recognized compiler filename so Moon selects the correct CLI ABI.
        version = subprocess.check_output([compiler, '--version'], text=True)
        wrapper = directory / ('clang' if 'clang' in version.lower() else 'gcc')
        flags = ['-g', '-fsanitize=address', '-fno-omit-frame-pointer']
        wrapper.write_text('#!/usr/bin/env python3\nimport os, sys\nos.execv(' + repr(compiler) + ', ' + repr([compiler, *flags]) + ' + sys.argv[1:])\n')
        wrapper.chmod(0o755)
        env = dict(os.environ)
        env.update(MOON_CC=str(wrapper), MOON_AR=shutil.which('ar') or 'ar', MOONBIT_ALLOCATOR='system', MOONBIT_NEW_NATIVE='0', ASAN_OPTIONS=f'detect_leaks={int(leak_check)}:fast_unwind_on_malloc=0')
        print(f'ASan compiler: {compiler}; leak detection: {"enabled" if leak_check else "disabled"}', flush=True)
        common = ['--target', 'native', '--target-dir', str(directory / 'build')]
        subprocess.run(['moon', 'test', *common, '-v'], cwd=root, env=env, check=True)
        for package in args.run:
            subprocess.run(['moon', 'run', *common, package, '--', '--smoke'], cwd=root, env=env, check=True)


if __name__ == '__main__':
    main()
