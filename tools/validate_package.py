#!/usr/bin/env python3
"""Validate mod metadata and the distributable ZIP without loading Factorio."""
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


def validate(output):
    info = json.loads(release_source('info.json').read_text())
    for key in ('name', 'version', 'title', 'author', 'factorio_version'):
        if not isinstance(info.get(key), str) or not info[key].strip():
            raise ValueError(f'info.json: {key} must be a nonempty string')
    for key, pattern in [('name', r'[A-Za-z0-9_-]+'),
                         ('version', r'\d+\.\d+\.\d+'),
                         ('factorio_version', r'\d+\.\d+')]:
        if not re.fullmatch(pattern, info[key]):
            raise ValueError(f'info.json: invalid {key}: {info[key]!r}')
    dependencies = info.get('dependencies')
    if not isinstance(dependencies, list) or not dependencies or not all(
        isinstance(value, str) and value.strip() for value in dependencies
    ):
        raise ValueError('info.json: dependencies must be a nonempty list of strings')

    name = f'{info["name"]}_{info["version"]}'
    archive = output / f'{name}.zip'
    tracked = subprocess.check_output(['git', 'ls-files', '-z'], cwd=ROOT).decode().split('\0')
    # The release contract excludes developer files and hidden/generated content.
    expected = {
        file for file in tracked if file
        and Path(file).parts[0] not in {'tests', 'tools', 'docs', 'AGENTS.md', 'CONTRIBUTING.md'}
        and not any(part.startswith('.') or part in {'build', '__pycache__'} for part in Path(file).parts)
    }
    required = {
        'info.json', 'data.lua', 'data-updates.lua', 'data-final-fixes.lua',
        'control.lua', 'settings.lua', 'Licence.txt', '! Thank You !.txt'
    }
    if not required <= expected:
        raise ValueError(f'Missing required release sources: {sorted(required - expected)}')
    for file in expected:
        release_source(file)
    with zipfile.ZipFile(archive) as package:
        names = package.namelist()
        if len(names) != len(set(names)) or set(names) != {f'{name}/{file}' for file in expected}:
            raise ValueError('ZIP entries differ from the expected tracked release files')
        if package.testzip() is not None:
            raise ValueError('ZIP failed its CRC check')
        for file in expected:
            if package.read(f'{name}/{file}') != release_source(file).read_bytes():
                raise ValueError(f'ZIP content differs from source: {file}')
    checksum = hashlib.sha256(archive.read_bytes()).hexdigest()
    if (output / 'SHA256SUMS').read_text() != f'{checksum}  {archive.name}\n':
        raise ValueError('SHA256SUMS does not match the mod ZIP')
    print(f'PASS metadata, {len(expected)} packaged files, notices and checksum')


if __name__ == '__main__':
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--output', type=Path, default=ROOT / 'build/dist')
    validate(parser.parse_args().output)
