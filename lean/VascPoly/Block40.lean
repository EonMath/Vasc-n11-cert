import VascTyped.Link40
import VascPoly.Defs
namespace VascDerivativePolynomial
open VascCertificate VascCertificate.Polynomial VascDerivativeTyped VascDerivativeFull
def basis40 : Array Int := (parseInts cert40.basisText).getD #[]
def mask40 : Array Int := (parseInts cert40.anchorText).getD #[]
def block40 : DerivativeBlock := {
  q := 71
  U := Gram.readMatrix 71 u40
  R := Gram.readMatrix 71 r40
  C := Gram.readMatrix 71 c40
  J := Gram.readMatrix 71 j40
  E := fun a j => (basis40[(a.val+1)*11+j.val]?.getD 0).toNat
  mask := fun j => (mask40[j.val]?.getD 0).toNat
  anchor := fun j => (basis40[j.val]?.getD 0).toNat
}
theorem block40_check : blockCheck block40.toBlock = true := block40_typed
end VascDerivativePolynomial
