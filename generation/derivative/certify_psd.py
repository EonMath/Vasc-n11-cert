import os,resource
os.environ['OPENBLAS_NUM_THREADS']='1';os.sched_setaffinity(0,{min(os.sched_getaffinity(0))});resource.setrlimit(resource.RLIMIT_AS,(2*1024**3,2*1024**3))
import json,time,math
from pathlib import Path
import numpy as np,scipy.linalg as la,flint
root=Path(__file__).resolve().parent;t0=time.monotonic();f=json.loads((root/'multiplier_frame.json').read_text());u=[flint.fmpq(s) for s in json.loads((root/'rational_gram.json').read_text())['u']];off=0;cert=[];reports=[]
for bi,(m,B) in enumerate(f['blocks']):
 q=len(B)-1;Q=[[flint.fmpq(0) for _ in range(q)] for _ in range(q)];den=1
 for b in range(q):
  for a in range(b,q):
   v=u[off]/(1 if a==b else 2);off+=1;Q[a][b]=Q[b][a]=v;den=math.lcm(den,int(v.denominator))
 Qnum=flint.fmpz_mat([[int(v*den) for v in row] for row in Q]);Qf=np.array([[float(v) for v in row] for row in Q]);L=la.cholesky(Qf,lower=True);Ri=la.solve_triangular(L,np.eye(q),lower=True);rden=10**8;Rnum=[[int(round(v*rden)) for v in row] for row in Ri];R=flint.fmpz_mat(Rnum);J=R*Qnum*R.transpose();margins=[int(J[i,i]-sum(abs(J[i,j]) for j in range(q) if j!=i)) for i in range(q)];assert min(margins)>0,(bi,min(margins))
 cert.append({'block':bi,'Q_denominator':den,'R_denominator':rden,'R_numerators':Rnum});reports.append({'block':bi,'dimension':q,'min_integer_dd_margin':str(min(margins))})
 if bi==0:print(json.dumps({'first_block_seconds':time.monotonic()-t0,'dimension':q,'exact_DD':True}),flush=True)
assert off==len(u)
(root/'psd_congruences.json').write_text(json.dumps(cert));r={'all_blocks_exact_PD':True,'blocks':len(cert),'rows_checked':sum(a['dimension'] for a in reports),'elapsed_sec':time.monotonic()-t0,'rss_MiB':resource.getrusage(resource.RUSAGE_SELF).ru_maxrss/1024,'block_reports':reports};(root/'psd_report.json').write_text(json.dumps(r,indent=2));print(json.dumps({k:v for k,v in r.items() if k!='block_reports'}))
