import StagedInterfaces
namespace BoundaryCacheCore
open VascCertificate.Sparse
/-- Cached exponents use ten base-16 digits; all parsing failures are explicit. -/
def parseTerm (s : String) : Option (Term 10) := do
  match s.splitOn ":" with
  | [a, b] =>
    let k ← a.toNat?
    if k ≥ 16 ^ 10 then none else do
      let c ← b.toInt?
      let v := ((List.finRange 10).map (fun i => (k / 16 ^ i.val) % 16)).toArray
      pure (fun i => v[i.val]!, c)
  | _ => none

def parsePoly (s : String) : Option (Poly 10) :=
  if s.isEmpty then some [] else (s.splitOn " ").mapM parseTerm

def decodePoly (s : String) : Poly 10 := (parsePoly s).getD []
end BoundaryCacheCore
