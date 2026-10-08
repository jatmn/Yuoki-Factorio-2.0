#!/usr/bin/env python3
"""Build a deterministic Yuoki mod ZIP from tracked release sources."""
import argparse
import hashlib
import json
from pathlib import Path
import subprocess
import zipfile

ROOT = Path(__file__).resolve().parents[1]


def pack(output):
    info = json.loads((ROOT / 'info.json').read_text())
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
            entry = zipfile.ZipInfo(f'{name}/{file}', date_time=(2026, 10, 8, 0, 0, 0))
            entry.compress_type = zipfile.ZIP_DEFLATED
            entry.external_attr = 0o644 << 16
            package.writestr(entry, (ROOT / file).read_bytes())
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
