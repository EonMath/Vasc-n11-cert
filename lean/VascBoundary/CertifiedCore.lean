import Lean
namespace BoundaryCertifiedCore

def parseInts (s : String) : Option (List Int) :=
  (s.splitOn " ").mapM String.toInt?
def parseNats (s : String) : Option (List Nat) :=
  (s.splitOn " ").mapM String.toNat?
def parseIntMatrix (s : String) : Option (List (List Int)) :=
  (s.splitOn ";").mapM parseInts
def parseNatMatrix (s : String) : Option (List (List Nat)) :=
  (s.splitOn ";").mapM parseNats

structure BlockData where
  dimension : Nat
  coordinateText : String
  congruenceText : String
  maskText : String
  basisText : String
  deriving Inhabited

def BlockData.U (d : BlockData) : List Int := (parseInts d.coordinateText).getD []
def BlockData.R (d : BlockData) : List (List Int) := (parseIntMatrix d.congruenceText).getD []
def BlockData.mask (d : BlockData) : List Nat := (parseNats d.maskText).getD []
def BlockData.basis (d : BlockData) : List (List Nat) := (parseNatMatrix d.basisText).getD []

/-- The stored lower-triangular columns are (0,0),(1,0),...,(n-1,0),(1,1),.... -/
def coordinateIndex (n i j : Nat) : Nat :=
  let b := min i j
  let a := max i j
  b * n - b * (b - 1) / 2 + (a - b)

/-- A = 2 N Q. Off-diagonals have coordinate U; diagonals have 2 U. -/
def integerMatrix (n : Nat) (coordinates : List Int) : List (List Int) :=
  let u := coordinates.toArray
  (List.range n).map fun i => (List.range n).map fun j =>
    let v := u[coordinateIndex n i j]!
    if i == j then 2 * v else v

def dot (xs ys : List Int) : Int := (List.zipWith (· * ·) xs ys).foldl (· + ·) 0
def transpose (a : List (List Int)) : List (List Int) :=
  match a with
  | [] => []
  | row :: _ => (List.range row.length).map (fun j => a.map (fun r => r.getD j 0))
def matMul (a b : List (List Int)) : List (List Int) :=
  let bt := transpose b
  a.map (fun r => bt.map (fun c => dot r c))
def squareShape (n : Nat) (a : List (List Int)) : Bool :=
  a.length == n && a.all (fun r => r.length == n)
def symmetric (a : List (List Int)) : Bool := a == transpose a
def absI (x : Int) : Int := if x < 0 then -x else x
def ddRow (row : List Int) (i : Nat) : Bool :=
  let t := ((List.range row.length).filter (fun j => j != i)).foldl
    (fun s j => s + absI (row.getD j 0)) 0
  decide (t < row.getD i 0)
def strictDD (a : List (List Int)) : Bool :=
  (List.zip (List.range a.length) a).all (fun p => ddRow p.2 p.1)

def BlockData.A (d : BlockData) : List (List Int) := integerMatrix d.dimension d.U
def BlockData.J (d : BlockData) : List (List Int) := matMul (matMul d.R d.A) (transpose d.R)

/-- Reject all parse failures and all malformed matrix/basis dimensions before matrix checks. -/
def BlockData.wellFormed (d : BlockData) : Bool :=
  (parseInts d.coordinateText).isSome &&
  (parseIntMatrix d.congruenceText).isSome &&
  (parseNats d.maskText).isSome &&
  (parseNatMatrix d.basisText).isSome &&
  0 < d.dimension &&
  d.U.length == d.dimension * (d.dimension + 1) / 2 &&
  squareShape d.dimension d.R &&
  d.mask.length == 10 &&
  d.basis.length == d.dimension && d.basis.all (fun v => v.length == 10)

def check (d : BlockData) : Bool :=
  d.wellFormed && squareShape d.dimension d.A && symmetric d.A &&
  squareShape d.dimension d.J && symmetric d.J && strictDD d.J

end BoundaryCertifiedCore
