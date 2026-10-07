"""Regenerate the release manifest after intentional source/metadata changes."""
import hashlib
from pathlib import Path
root = Path(__file__).resolve().parents[1]
exclude = {'SHA256SUMS', 'certificates/derivative/exact_replay.json',
           'certificates/boundary/boundary_exact_replay.json'}
lines = []
for p in sorted(root.rglob('*')):
    rel = p.relative_to(root)
    if not p.is_file() or str(rel) in exclude:
        continue
    if any(part in {'.git', '.lake', '.venv', '__pycache__'} for part in rel.parts):
        continue
    if p.suffix in {'.pyc', '.log', '.olean', '.ilean', '.o', '.so', '.a'}:
        continue
    h = hashlib.sha256()
    with p.open('rb') as stream:
        for chunk in iter(lambda: stream.read(1024 * 1024), b''):
            h.update(chunk)
    lines.append(h.hexdigest() + '  ' + str(rel))
(root / 'SHA256SUMS').write_text('\n'.join(lines) + '\n')
print('Manifest entries:', len(lines))
