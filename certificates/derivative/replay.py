"""Full exact replay; no solver, NumPy, floats, tolerance, or old coefficient cache."""
import os,resource,time,json,math,hashlib
from pathlib import Path
from collections import defaultdict
import flint
os.sched_setaffinity(0,{min(os.sched_getaffinity(0))});resource.setrlimit(resource.RLIMIT_AS,(2*1024**3,2*1024**3))
root=Path(__file__).resolve().parent;t0=time.monotonic();frame=json.loads((root/'multiplier_frame.json').read_text());record=json.loads((root/'rational_gram.json').read_text());u=[flint.fmpq(s) for s in record['u']];cong=json.loads((root/'psd_congruences.json').read_text())
assert record['coordinate_convention']=='lower triangular column-major; diagonal Qaa, offdiagonal 2Qab'
def canon(e):return min(e[k:]+e[:k] for k in range(11))
H=defaultdict(int);zero=(0,)*11
for i in range(11):
 for j in range(11):
  if i==j:continue
  terms={zero:1}
  for k in range(11):
   if k in (i,j):continue
   out=defaultdict(int)
   for e,c in terms.items():
    for q in ((k+1)%11,(k+2)%11):
     a=list(e);a[q]+=1;out[tuple(a)]+=c
   terms=out
  for e,c in terms.items():
   for q,s in ((i,2),((i+1)%11,-2)):
    a=list(e);a[q]+=1;H[tuple(a)]+=s*c
H={e:c for e,c in H.items() if c};F=defaultdict(int)
for e,c in H.items():
 for i in range(11):
  a=list(e);a[i]+=1;F[tuple(a)]+=c
F={e:c for e,c in F.items() if c};assert F=={tuple(e):c for e,c in frame['h']}
target={}
for e,c in F.items():
 assert len(e)==11 and sum(e)==11
 r=canon(e)
 if r in target:assert target[r]==c
 target[r]=c
rows=set(map(tuple,frame['rows']));assert len(rows)==len(frame['rows'])==6069
assert all(e==canon(e) and len(e)==11 and sum(e)==11 for e in rows);assert set(target)<=rows
Den=1
for a in u:Den=math.lcm(Den,int(a.denominator))
uint=[int(a*Den) for a in u];got=defaultdict(int);off=0;ddrows=0
assert len(frame['blocks'])==len(cong)==93
for bi,(m,B) in enumerate(frame['blocks']):
 assert len(m)==11 and all(a in(0,1) for a in m)
 assert len(B)==len({tuple(b) for b in B})
 for b in B:assert len(b)==11 and all(isinstance(a,int) and a>=0 for a in b) and sum(m)+2*sum(b)==11
 p=B[0];V=B[1:];q=len(V);Q=[[flint.fmpq(0) for _ in range(q)] for _ in range(q)]
 for b in range(q):
  for a in range(b,q):
   entry=u[off]/(1 if a==b else 2);Q[a][b]=Q[b][a]=entry;coef=uint[off];off+=1
   for v,w,s in ((V[a],V[b],1),(V[a],p,-1),(p,V[b],-1),(p,p,1)):
    e=canon(tuple(m[k]+v[k]+w[k] for k in range(11)));assert e in rows
    stab=11 if len(set(e))==1 else 1;got[e]+=s*stab*coef
 c=cong[bi];assert c['block']==bi;qd=c['Q_denominator'];rd=c['R_denominator'];assert isinstance(qd,int) and qd>0 and isinstance(rd,int) and rd>0
 for row in Q:
  for a in row:assert (a*qd).denominator==1
 Qnum=flint.fmpz_mat([[int(a*qd) for a in row] for row in Q]);Rdata=c['R_numerators'];assert len(Rdata)==q and all(len(row)==q for row in Rdata);assert all(isinstance(a,int) for row in Rdata for a in row)
 R=flint.fmpz_mat(Rdata);J=R*Qnum*R.transpose()
 for i in range(q):
  assert J[i,i]>sum(abs(J[i,j]) for j in range(q) if j!=i),(bi,i)
  ddrows+=1
assert off==len(u)==248264
for e in rows:assert got.get(e,0)==Den*target.get(e,0),(e,got.get(e,0),Den*target.get(e,0))
controls=[]
for x in ([1,1,2,2,4,1,1,1,1,1,1],[408,1,550,1,741,1,1000,443,635,464,348,410,149]):
 n=len(x);d=[x[(i+1)%n]+x[(i+2)%n] for i in range(n)];val=2*sum((x[i]-x[(i+1)%n])*sum(math.prod(d[k] for k in range(n) if k not in(i,j)) for j in range(n) if j!=i) for i in range(n));controls.append(val)
assert controls==[292608,-1044394925582368316422150914849984]
files=['multiplier_frame.json','rational_gram.json','psd_congruences.json','replay.py'];r={'exact_coefficient_identity':True,'exact_PD_blocks':93,'diagonal_dominance_rows':ddrows,'coefficient_orbits':len(rows),'gram_coordinates':off,'common_coordinate_denominator':Den,'controls':controls,'sha256':{name:hashlib.sha256((root/name).read_bytes()).hexdigest() for name in files},'elapsed_sec':time.monotonic()-t0,'rss_MiB':resource.getrusage(resource.RUSAGE_SELF).ru_maxrss/1024}
(root/'exact_replay.json').write_text(json.dumps(r,indent=2));print(json.dumps(r))
