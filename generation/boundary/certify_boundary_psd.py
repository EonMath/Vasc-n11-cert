import os,resource
for k in ('OPENBLAS_NUM_THREADS','OMP_NUM_THREADS','MKL_NUM_THREADS'):os.environ[k]='1'
os.sched_setaffinity(0,{sorted(os.sched_getaffinity(0))[1]});resource.setrlimit(resource.RLIMIT_AS,(3*1024**3,3*1024**3))
import json,time
from pathlib import Path
import numpy as np,scipy.linalg as la,flint
root=Path(__file__).resolve().parent;t0=time.monotonic();f=json.loads((root/'p2_frame.json').read_text());c=json.loads((root/'boundary_rational_certificate.json').read_text());N=c['denominator'];dims=[10]+[len(V) for m,V in f['blocks']];u=c['W_coordinates_numerators']+c['Q_coordinates_numerators'];off=0;cert=[];reports=[]
for bi,q in enumerate(dims):
 Z=[[0]*q for _ in range(q)]
 for b in range(q):
  for a in range(b,q):
   v=u[off]*(2 if a==b else 1);off+=1;Z[a][b]=Z[b][a]=v
 Qnum=flint.fmpz_mat(Z);Qf=np.array(Z,float)/(2*N);L=la.cholesky(Qf,lower=True);Ri=la.solve_triangular(L,np.eye(q),lower=True);Rnum=[[int(round(a*10**10)) for a in row] for row in Ri];R=flint.fmpz_mat(Rnum);J=R*Qnum*R.transpose();margins=[int(J[i,i]-sum(abs(J[i,j]) for j in range(q) if j!=i)) for i in range(q)];assert min(margins)>0,(bi,min(margins));cert.append({'block':bi,'R_integer':Rnum});reports.append({'block':bi,'dimension':q,'minimum_integer_DD_margin':str(min(margins))})
 if bi in(0,1):print(json.dumps({'block':bi,'dimension':q,'seconds':time.monotonic()-t0,'exact_positive_definite':True}),flush=True)
assert off==len(u)
(root/'boundary_psd_congruences.json').write_text(json.dumps({'matrix_denominator':2*N,'blocks':cert}));r={'exact_PD_blocks':len(cert),'DD_rows':sum(dims),'seconds':time.monotonic()-t0,'rss_MiB':resource.getrusage(resource.RUSAGE_SELF).ru_maxrss/1024,'block_reports':reports};(root/'boundary_psd_report.json').write_text(json.dumps(r,indent=2));print(json.dumps({k:v for k,v in r.items() if k!='block_reports'}))
