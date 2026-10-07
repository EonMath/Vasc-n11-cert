import PolynomialInterfaces
import VascBoundary.MultiplierData
import VascBoundary.Semantic.Block000
namespace BoundaryConcreteMultiplier
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
def weightArray : Array Int :=
  let p := BoundaryCertificate.p.toArray
  ((List.range 10).flatMap fun i => (List.range 10).map fun j =>
    p[coordinateIndex 10 i j]!).toArray
def multiplier : Multiplier := {
  weights := readMatrix 10 weightArray
  U := readMatrix 10 BoundarySemantic000.u
  R := BoundarySemantic000.R
  C := BoundarySemantic000.C
  J := BoundarySemantic000.J
}
theorem multiplier_certified : multiplierCheck multiplier = true := by native_decide
end BoundaryConcreteMultiplier
