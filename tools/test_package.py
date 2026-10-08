#!/usr/bin/env python3
"""Exercise package source boundaries through the real builder and validator."""
import hashlib
import json
from pathlib import Path
import shutil
import subprocess
import sys
import tempfile
import unittest
import zipfile

ROOT = Path(__file__).resolve().parents[1]


class PackageSourceTests(unittest.TestCase):
    def setUp(self):
        self.directory = tempfile.TemporaryDirectory(prefix='yuoki-package-')
        self.addCleanup(self.directory.cleanup)
        self.workspace = Path(self.directory.name)
        self.root = self.workspace / 'checkout'
        self.root.mkdir()
        (self.root / 'tools').mkdir()
        for name in ('package.py', 'validate_package.py'):
            shutil.copy(ROOT / 'tools' / name, self.root / 'tools' / name)
        self.sources = {
            'info.json': json.dumps({
                'name': 'Yuoki', 'version': '1.2.23', 'title': 'Yuoki',
                'author': 'Fixture', 'factorio_version': '2.0', 'dependencies': ['base >= 2.0.42'],
            }),
            'Licence.txt': 'fixture license\n', '! Thank You !.txt': 'fixture acknowledgments\n',
        }
        for name in ('data.lua', 'data-updates.lua', 'data-final-fixes.lua', 'control.lua', 'settings.lua'):
            self.sources[name] = 'return true\n'
        for name, content in self.sources.items():
            (self.root / name).write_text(content)
        self.git('init', '-q')
        self.git('add', '.')
        self.output = self.workspace / 'dist'
        self.output.mkdir()

    def git(self, *args):
        return subprocess.check_output(['git', *args], cwd=self.root)

    def tool(self, name):
        return subprocess.run([
            sys.executable, str(self.root / 'tools' / name), '--output', str(self.output)
        ], cwd=self.root, capture_output=True, text=True)

    def assert_source_rejected(self, file):
        built = self.tool('package.py')
        archive = self.output / 'Yuoki_1.2.23.zip'
        with self.subTest(tool='builder'):
            self.assertNotEqual(built.returncode, 0, built.stdout)
            if archive.exists():
                with zipfile.ZipFile(archive) as package:
                    self.assertNotIn('Yuoki_1.2.23/' + file, package.namelist())
        # Independently challenge the validator with a forged archive that
        # matches the tracked fixture and its source bytes, including the attack.
        with zipfile.ZipFile(archive, 'w') as package:
            for name in self.sources:
                package.writestr('Yuoki_1.2.23/' + name, (self.root / name).read_bytes())
        checksum = hashlib.sha256(archive.read_bytes()).hexdigest()
        (self.output / 'SHA256SUMS').write_text(f'{checksum}  {archive.name}\n')
        validated = self.tool('validate_package.py')
        with self.subTest(tool='validator'):
            self.assertNotEqual(validated.returncode, 0, validated.stdout)

    def test_tracked_symlink_cannot_ship_runner_file(self):
        outside = self.workspace / 'runner-file'
        outside.write_text('run-owned external sentinel\n')
        file = 'runner-file.txt'
        (self.root / file).symlink_to(outside)
        self.sources[file] = ''
        self.git('add', '--', file)
        self.assert_source_rejected(file)

    def test_metadata_symlink_is_rejected_before_reading(self):
        outside = self.workspace / 'runner-info.json'
        outside.write_text(self.sources['info.json'])
        (self.root / 'info.json').unlink()
        (self.root / 'info.json').symlink_to(outside)
        self.git('add', '--', 'info.json')
        self.assert_source_rejected('info.json')

    def test_source_under_external_directory_symlink_is_rejected(self):
        directory = self.root / 'graphics'
        directory.mkdir()
        file = 'graphics/fixture.png'
        (self.root / file).write_text('fixture art\n')
        self.sources[file] = ''
        self.git('add', '--', file)
        outside = self.workspace / 'runner-directory'
        directory.rename(outside)
        directory.symlink_to(outside, target_is_directory=True)
        self.assert_source_rejected(file)

    def test_windows_traversal_filename_is_rejected(self):
        file = r'safe\..\..\outside.lua'
        (self.root / file).write_text('return true\n')
        self.sources[file] = ''
        self.git('add', '--', file)
        self.assert_source_rejected(file)


if __name__ == '__main__':
    unittest.main()
