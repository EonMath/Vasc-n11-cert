import os
for key in ('OPENBLAS_NUM_THREADS','OMP_NUM_THREADS','MKL_NUM_THREADS'):os.environ[key]='1'
import resource
os.sched_setaffinity(0,{min(os.sched_getaffinity(0))});resource.setrlimit(resource.RLIMIT_AS,(8*1024**3,8*1024**3))
import json,time,math
from pathlib import Path
from collections import Counter
import numpy as np
import scipy.sparse as sp
import scs
root=Path(__file__).resolve().parent;t0=time.monotonic();f=json.loads((root/'multiplier_frame.json').read_text())
def canon(e):return min(e[k:]+e[:k] for k in range(11))
rows=[tuple(e) for e in f['rows']];ri={e:i for i,e in enumerate(rows)};orb={canon(tuple(e)):c for e,c in f['h']}
rr=[];cc=[];vv=[];obj=[];dims=[];jcol=0
for m,B in f['blocks']:
 p=B[0];V=B[1:];q=len(V);dims.append(q)
 for b in range(q):
  for a in range(b,q):
   col=Counter();scale=1 if a==b else math.sqrt(2)
   for u,v,s in ((V[a],V[b],1),(V[a],p,-1),(p,V[b],-1),(p,p,1)):
    e=canon(tuple(m[k]+u[k]+v[k] for k in range(11)));stab=11 if len(set(e))==1 else 1;col[e]+=s*stab
   for e,v in col.items():
    if v:rr.append(ri[e]);cc.append(jcol);vv.append(v*scale)
   obj.append(1 if a==b else 0);jcol+=1
A0=sp.csc_matrix((vv,(rr,cc)),shape=(len(rows),jcol));rhs=np.array([orb.get(e,0) for e in rows],dtype=float)
# Positive row scaling preserves every equality and reduces coefficient disparity.
row_scale=1/np.maximum(1,np.abs(rhs));A0=sp.diags(row_scale)@A0;rhs=rhs*row_scale
A=sp.vstack([A0,-sp.eye(jcol)],format='csc');b=np.r_[rhs,np.zeros(jcol)];c=np.zeros(jcol)
sp.save_npz(root/'scs_A.npz',A);np.savez(root/'scs_data.npz',b=b,c=c,row_scale=row_scale);(root/'scs_cone.json').write_text(json.dumps({'z':len(rows),'s':dims}))
print(json.dumps({'build_seconds':time.monotonic()-t0,'A_shape':A.shape,'A_nnz':A.nnz,'rss_MiB':resource.getrusage(resource.RUSAGE_SELF).ru_maxrss/1024}),flush=True)
solver=scs.SCS({'A':A,'b':b,'c':c},{'z':len(rows),'s':dims},eps_abs=1e-6,eps_rel=1e-6,max_iters=25,verbose=True)
r=solver.solve();np.savez(root/'scs_pilot_vectors.npz',x=r['x'],y=r['y'],s=r['s']);(root/'scs_pilot_info.json').write_text(json.dumps(r['info'],indent=2));print(json.dumps({'final_info':r['info'],'rss_MiB':resource.getrusage(resource.RUSAGE_SELF).ru_maxrss/1024}))
