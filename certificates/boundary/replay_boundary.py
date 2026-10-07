"""Standalone exact proof-certificate replay. No floats, solvers, NumPy, or tolerance."""
import os,resource,time,json,math,hashlib
from pathlib import Path
from collections import defaultdict
import flint
os.sched_setaffinity(0,{min(os.sched_getaffinity(0))});resource.setrlimit(resource.RLIMIT_AS,(3*1024**3,3*1024**3));root=Path(__file__).resolve().parent;t0=time.monotonic();f=json.loads((root/'boundary_frame.json').read_text());c=json.loads((root/'boundary_rational_certificate.json').read_text());cr=json.loads((root/'boundary_psd_congruences.json').read_text());assert f['variables']==10 and f['degree']==13
assert c['coordinate_convention']=='lower triangular column-major; diagonal Qaa, offdiagonal 2Qab; all divided by denominator'
N=c['denominator'];assert isinstance(N,int) and N>0;weights=c['weights_numerators'];W=c['W_coordinates_numerators'];U=c['Q_coordinates_numerators'];mult=c['multiplier_exponents'];assert len(weights)==len(W)==len(mult)==55 and len(U)==1235364
assert all(isinstance(a,int) for a in weights+W+U);assert min(weights)>0
expected=[]
for i in range(10):
 for j in range(i,10):
  e=[0]*10;e[i]+=1;e[j]+=1;expected.append(e)
assert mult==expected
trace=0;k=0
for b in range(10):
 for a in range(b,10):
  if a==b:trace+=W[k]
  k+=1
assert sum(weights)+trace==N
# Direct restriction x_10=0 of the defining polynomial P, with original cyclic orientation.
B=defaultdict(int);zero=(0,)*10
for i in range(11):
 T={zero:1}
 for j in range(11):
  if j==i:continue
  V=defaultdict(int)
  for e,v in T.items():
   for q in ((j+1)%11,(j+2)%11):
    if q==10:continue
    a=list(e);a[q]+=1;V[tuple(a)]+=v
  T=V
 for e,v in T.items():
  for q,sign in ((i,1),((i+1)%11,-1)):
   if q==10:continue
   a=list(e);a[q]+=1;B[tuple(a)]+=sign*v
B={e:v for e,v in B.items() if v};assert len(B)==2302 and sum(B.values())==256
for e in B:assert len(e)==10 and sum(e)==11 and min(e)>=0
rows=set(map(tuple,f['rows']));assert len(rows)==len(f['rows'])==34304
assert all(len(e)==10 and min(e)>=0 and sum(e)==13 for e in rows)
target=defaultdict(int)
for e,v in B.items():
 for a,w,wm in zip(mult,weights,W):
  exp=tuple(e[i]+a[i] for i in range(10));assert exp in rows;target[exp]+=v*(w+wm)
assert cr['matrix_denominator']==2*N and len(cr['blocks'])==513 and len(f['blocks'])==512
def check_pd(Z,bi):
 q=len(Z);data=cr['blocks'][bi];assert data['block']==bi;Rdata=data['R_integer'];assert len(Rdata)==q and all(len(row)==q for row in Rdata);assert all(isinstance(a,int) for row in Rdata for a in row);R=flint.fmpz_mat(Rdata);J=R*flint.fmpz_mat(Z)*R.transpose()
 for i in range(q):assert J[i,i]>sum(abs(J[i,j]) for j in range(q) if i!=j),(bi,i)
 return q
Z=[[0]*10 for _ in range(10)];k=0
for b in range(10):
 for a in range(b,10):Z[a][b]=Z[b][a]=W[k]*(2 if a==b else 1);k+=1
ddrows=check_pd(Z,0);got=defaultdict(int);off=0
for bi,(m,V) in enumerate(f['blocks'],1):
 assert len(m)==10 and all(a in(0,1) for a in m);assert len(V)==len(set(map(tuple,V)))
 for v in V:assert len(v)==10 and all(isinstance(a,int) and a>=0 for a in v) and sum(m)+2*sum(v)==13
 q=len(V);Z=[[0]*q for _ in range(q)]
 for b in range(q):
  for a in range(b,q):
   u=U[off];off+=1;Z[a][b]=Z[b][a]=u*(2 if a==b else 1);e=tuple(m[i]+V[a][i]+V[b][i] for i in range(10));assert e in rows;got[e]+=u
 ddrows+=check_pd(Z,bi)
assert off==len(U)
for e in rows:assert got[e]==target[e],(e,got[e],target[e])
# Independent evaluation of the original product formula on fixed integer controls.
controls=[]
for z in ([1]*10,[1,1,2,2,4,1,1,1,1,1],[0]*10,[1,0,1,0,1,0,1,0,1,0]):
 x=z+[0];d=[x[(i+1)%11]+x[(i+2)%11] for i in range(11)];p=sum((x[i]-x[(i+1)%11])*math.prod(d[j] for j in range(11) if i!=j) for i in range(11));ev=sum(v*math.prod(z[i]**e[i] for i in range(10)) for e,v in B.items());assert p==ev;controls.append({'z':z,'B':p})
files=['boundary_frame.json','boundary_rational_certificate.json','boundary_psd_congruences.json','replay_boundary.py'];r={'exact_full_boundary_identity':True,'exact_PD_matrices':513,'strict_DD_rows':ddrows,'coefficient_equations':len(rows),'Gram_coordinates':off,'positive_multiplier_weights':len(weights),'common_denominator':N,'exact_normalization':True,'B_terms':len(B),'controls':controls,'sha256':{n:hashlib.sha256((root/n).read_bytes()).hexdigest() for n in files},'bytes':{n:(root/n).stat().st_size for n in files},'seconds':time.monotonic()-t0,'rss_MiB':resource.getrusage(resource.RUSAGE_SELF).ru_maxrss/1024};(root/'boundary_exact_replay.json').write_text(json.dumps(r,indent=2));print(json.dumps(r))
