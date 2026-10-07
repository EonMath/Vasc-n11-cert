"""Local packaging provenance only; not needed to reproduce certificate checks.
Inputs are passed explicitly; never searches the machine for source files.
"""
import argparse, hashlib, io, json, pathlib, shutil, subprocess, tarfile
p=argparse.ArgumentParser();p.add_argument('--lean-source',type=pathlib.Path,required=True);p.add_argument('--certificate-source',type=pathlib.Path,required=True);a=p.parse_args()
r=pathlib.Path(__file__).resolve().parents[1]
commit=subprocess.check_output(['git','-C',str(a.lean_source),'rev-parse','HEAD'],text=True).strip()
archive=subprocess.Popen(['git','-C',str(a.lean_source),'archive',commit],stdout=subprocess.PIPE)
(r/'lean').mkdir(exist_ok=True)
with tarfile.open(fileobj=archive.stdout,mode='r|') as t:
 for m in t:
  if m.name.startswith('/') or '..' in pathlib.PurePosixPath(m.name).parts or m.issym() or m.islnk():raise RuntimeError(m.name)
  t.extract(m,r/'lean',filter='data')
if archive.wait():raise RuntimeError('git archive failed')
files=[]
for group,names in {'derivative':['multiplier_frame.json','rational_gram.json','psd_congruences.json','replay.py'],'boundary':['boundary_frame.json','boundary_rational_certificate.json','boundary_psd_congruences.json','replay_boundary.py']}.items():
 (r/'certificates'/group).mkdir(parents=True,exist_ok=True)
 for name in names:
  src=a.certificate_source/group/name;dst=r/'certificates'/group/name;shutil.copyfile(src,dst)
  files.append({'path':str(dst.relative_to(r)),'source':f'final_certificate_bundle/{group}/{name}','bytes':dst.stat().st_size,'sha256':hashlib.sha256(dst.read_bytes()).hexdigest()})
shutil.copyfile(a.certificate_source/'requirements.txt',r/'requirements.txt')
manifest={'schema_version':1,'packaged_on':'2026-10-07','lean_source_commit':commit,'lean_export':'git archive HEAD; all tracked files; no working tree changes, Git history, or build caches','certificate_files':files,'license_status':'Pending author decision; see LICENSE_STATUS.md','validation_limits':['No clean Lean build performed during package preparation.','No numerical certificate discovery or regeneration claimed.','Original JSON-to-Lean converters are not included; embedded Lean data are self-contained.'],'dependencies':{'lean':(r/'lean/lean-toolchain').read_text().strip(),'mathlib_revision':next(x['rev'] for x in json.loads((r/'lean/lake-manifest.json').read_text())['packages'] if x['name']=='mathlib'),'python_flint':'0.9.0','replay_tested_python':'3.14.2'}}
(r/'package_manifest.json').write_text(json.dumps(manifest,indent=2)+'\n')
print({'lean_commit':commit,'certificate_files':len(files),'package_bytes':sum(p.stat().st_size for p in r.rglob('*') if p.is_file())})
