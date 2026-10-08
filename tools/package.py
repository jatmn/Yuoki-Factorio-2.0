#!/usr/bin/env python3
"""Build a deterministic Yuoki mod ZIP from tracked release sources."""
import argparse
import hashlib
import json
from pathlib import Path, PureWindowsPath
import re
import stat
import subprocess
import zipfile

ROOT = Path(__file__).resolve().parents[1]


def release_source(file):
    if '\\' in file or PureWindowsPath(file).drive or any(
        part in {'', '.', '..'} for part in file.split('/')
    ):
        raise ValueError(f'Unsafe release path: {file!r}')
    source = ROOT / file
    if not stat.S_ISREG(source.lstat().st_mode) or not source.resolve().is_relative_to(ROOT):
        raise ValueError(f'Release source must be a regular file within the checkout: {file!r}')
    return source


def pack(output):
    info = json.loads(release_source('info.json').read_text())
    # Validate path-defining fields before any archive or checksum is written.
    for key, pattern in [('name', r'[A-Za-z0-9_-]+'), ('version', r'\d+\.\d+\.\d+')]:
        if not isinstance(info.get(key), str) or not re.fullmatch(pattern, info[key]):
            raise ValueError(f'info.json: invalid {key}: {info.get(key)!r}')
    name = f'{info["name"]}_{info["version"]}'
    target = output / f'{name}.zip'
    tracked = subprocess.check_output(['git', 'ls-files', '-z'], cwd=ROOT).decode().split('\0')
    with zipfile.ZipFile(target, 'w', compression=zipfile.ZIP_DEFLATED, compresslevel=9) as package:
        for file in sorted(filter(None, tracked)):
            relative = Path(file)
            if relative.parts[0] in {'tests', 'tools', 'docs', 'AGENTS.md', 'CONTRIBUTING.md'}:
                continue
            if any(part.startswith('.') or part in {'build', '__pycache__'} for part in relative.parts):
                continue
            source = release_source(file)
            entry = zipfile.ZipInfo(f'{name}/{file}', date_time=(2026, 10, 8, 0, 0, 0))
            entry.compress_type = zipfile.ZIP_DEFLATED
            entry.external_attr = 0o644 << 16
            package.writestr(entry, source.read_bytes())
    (output / 'SHA256SUMS').write_text(
        f'{hashlib.sha256(target.read_bytes()).hexdigest()}  {target.name}\n'
    )
    print(target)
    return target


if __name__ == '__main__':
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--output', type=Path, default=ROOT / 'build/dist')
    output = parser.parse_args().output
    output.mkdir(parents=True, exist_ok=True)
    pack(output)
