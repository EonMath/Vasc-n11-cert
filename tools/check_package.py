"""Lightweight packaging checks; not mathematical verification."""
import hashlib
import json
from pathlib import Path

root = Path(__file__).resolve().parents[1]
def digest(path):
    h = hashlib.sha256()
    with path.open('rb') as stream:
        for chunk in iter(lambda: stream.read(1024 * 1024), b''):
            h.update(chunk)
    return h.hexdigest()

count = 0
for line in (root / 'SHA256SUMS').read_text().splitlines():
    expected, name = line.split('  ', 1)
    path = root / name
    if not path.is_file() or digest(path) != expected:
        raise SystemExit('Integrity failure: ' + name)
    count += 1
sources = json.loads((root / 'lean/provenance/source_sha256.json').read_text())
for group, entries in sources.items():
    for name, expected in entries.items():
        if digest(root / 'certificates' / group / name) != expected:
            raise SystemExit('Lean source provenance mismatch: ' + name)
for name in ['.git', '.lake']:
    if (root / 'lean' / name).exists():
        print('Note: local ' + name + ' exists (not part of the delivered snapshot).')
print(f'PASS: {count} manifest entries and six JSON source hashes; no theorem verification performed.')
