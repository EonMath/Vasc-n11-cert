import Lean.Elab.Tactic.Decide
namespace VascDerivativeFull
abbrev Mat := Array Int
structure Certificate where
  n : Nat
  qDen : Nat
  rDen : Nat
  anchorText : String
  basisText : String
  uText : String
  rawNumText : String
  rawDenText : String
  qText : String
  rText : String

def parseInts (s : String) : Option (Array Int) := do
  let xs ← (s.splitOn " ").mapM String.toInt?
  return xs.toArray

def entry (n : Nat) (m : Mat) (i j : Nat) : Int := m[i*n+j]?.getD 0

def mul (n : Nat) (a b : Mat) : Mat := Id.run do
  let mut ans := Array.replicate (n*n) (0 : Int)
  for i in [:n] do
    for j in [:n] do
      let mut v : Int := 0
      for k in [:n] do
        v := v + entry n a i k * entry n b k j
      ans := ans.set! (i*n+j) v
  return ans

def transpose (n : Nat) (a : Mat) : Mat :=
  (Array.range (n*n)).map fun k => entry n a (k%n) (k/n)

def symmetric (n : Nat) (a : Mat) : Bool :=
  (List.range n).all fun i => (List.range n).all fun j =>
    entry n a i j == entry n a j i

def strictDD (n : Nat) (a : Mat) : Bool :=
  (List.range n).all fun i =>
    decide (entry n a i i > (List.range n).foldl (fun z j =>
      if i = j then z else z + ((entry n a i j).natAbs : Int)) (0 : Int))

-- Original triangular rational coordinates encode diagonal Qaa and offdiagonal 2Qab.
-- Check their exact equality to the dense integer matrix divided by qDen.
def coordinatesMatch (n qDen : Nat) (nums dens q : Array Int) : Bool := Id.run do
  let mut k := 0
  let mut good := true
  for b in [:n] do
    for a in [b:n] do
      let num := nums[k]?.getD 0
      let den := dens[k]?.getD 0
      let factor : Int := if a == b then 1 else 2
      good := good && decide (den > 0) &&
        (entry n q a b * den * factor == num * (qDen : Int))
      k := k + 1
  return good

def matrixCheck (c : Certificate) : Bool :=
  match parseInts c.rawNumText, parseInts c.rawDenText, parseInts c.qText, parseInts c.rText with
  | some nums, some dens, some q, some r =>
    c.n > 0 && c.qDen > 0 && c.rDen > 0 &&
    nums.size == c.n*(c.n+1)/2 && dens.size == nums.size &&
    q.size == c.n*c.n && r.size == c.n*c.n &&
    symmetric c.n q && coordinatesMatch c.n c.qDen nums dens q &&
    strictDD c.n (mul c.n (mul c.n r q) (transpose c.n r))
  | _, _, _, _ => false
end VascDerivativeFull
