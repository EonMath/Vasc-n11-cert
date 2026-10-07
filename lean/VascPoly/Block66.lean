import VascTyped.Link66
import VascPoly.Defs
namespace VascDerivativePolynomial
open VascCertificate VascCertificate.Polynomial VascDerivativeTyped VascDerivativeFull
def basis66 : Array Int := (parseInts cert66.basisText).getD #[]
def mask66 : Array Int := (parseInts cert66.anchorText).getD #[]
def block66 : DerivativeBlock := {
  q := 35
  U := Gram.readMatrix 35 u66
  R := Gram.readMatrix 35 r66
  C := Gram.readMatrix 35 c66
  J := Gram.readMatrix 35 j66
  E := fun a j => (basis66[(a.val+1)*11+j.val]?.getD 0).toNat
  mask := fun j => (mask66[j.val]?.getD 0).toNat
  anchor := fun j => (basis66[j.val]?.getD 0).toNat
}
theorem block66_check : blockCheck block66.toBlock = true := block66_typed
end VascDerivativePolynomial
