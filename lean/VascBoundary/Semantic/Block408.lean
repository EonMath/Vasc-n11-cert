import MatrixSoundness
import VascBoundary.Checked.Block408
namespace BoundarySemantic408
open BoundaryCertifiedCore VascCertificate.Gram
abbrev q := BoundaryCheckedBlock408.data.dimension
/-- Same original coordinate numerators, expanded to dense matrix storage in Lean. -/
def u : Array Int :=
  let v := BoundaryCheckedBlock408.data.U.toArray
  ((List.range q).flatMap fun i => (List.range q).map fun j =>
    v[coordinateIndex q i j]!).toArray
def r : Array Int := BoundaryCheckedBlock408.data.R.flatten.toArray
/-- Computed witnesses; the theorem checks the actual Finset matrix products. -/
def c : Array Int := (matMul BoundaryCheckedBlock408.data.R BoundaryCheckedBlock408.data.A).flatten.toArray
def j : Array Int := BoundaryCheckedBlock408.data.J.flatten.toArray
def A : ZMat q := fromTri (readMatrix q u)
def R : ZMat q := readMatrix q r
def C : ZMat q := readMatrix q c
def J : ZMat q := readMatrix q j
theorem semantic_check : checkMatrixWitness A R C J = true := by native_decide
end BoundarySemantic408
