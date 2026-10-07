import MatrixSoundness
import VascBoundary.Checked.Block065
namespace BoundarySemantic065
open BoundaryCertifiedCore VascCertificate.Gram
abbrev q := BoundaryCheckedBlock065.data.dimension
/-- Same original coordinate numerators, expanded to dense matrix storage in Lean. -/
def u : Array Int :=
  let v := BoundaryCheckedBlock065.data.U.toArray
  ((List.range q).flatMap fun i => (List.range q).map fun j =>
    v[coordinateIndex q i j]!).toArray
def r : Array Int := BoundaryCheckedBlock065.data.R.flatten.toArray
/-- Computed witnesses; the theorem checks the actual Finset matrix products. -/
def c : Array Int := (matMul BoundaryCheckedBlock065.data.R BoundaryCheckedBlock065.data.A).flatten.toArray
def j : Array Int := BoundaryCheckedBlock065.data.J.flatten.toArray
def A : ZMat q := fromTri (readMatrix q u)
def R : ZMat q := readMatrix q r
def C : ZMat q := readMatrix q c
def J : ZMat q := readMatrix q j
theorem semantic_check : checkMatrixWitness A R C J = true := by native_decide
end BoundarySemantic065
