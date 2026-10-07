import MatrixSoundness
import VascBoundary.Checked.Block358
namespace BoundarySemantic358
open BoundaryCertifiedCore VascCertificate.Gram
abbrev q := BoundaryCheckedBlock358.data.dimension
/-- Same original coordinate numerators, expanded to dense matrix storage in Lean. -/
def u : Array Int :=
  let v := BoundaryCheckedBlock358.data.U.toArray
  ((List.range q).flatMap fun i => (List.range q).map fun j =>
    v[coordinateIndex q i j]!).toArray
def r : Array Int := BoundaryCheckedBlock358.data.R.flatten.toArray
/-- Computed witnesses; the theorem checks the actual Finset matrix products. -/
def c : Array Int := (matMul BoundaryCheckedBlock358.data.R BoundaryCheckedBlock358.data.A).flatten.toArray
def j : Array Int := BoundaryCheckedBlock358.data.J.flatten.toArray
def A : ZMat q := fromTri (readMatrix q u)
def R : ZMat q := readMatrix q r
def C : ZMat q := readMatrix q c
def J : ZMat q := readMatrix q j
theorem semantic_check : checkMatrixWitness A R C J = true := by native_decide
end BoundarySemantic358
