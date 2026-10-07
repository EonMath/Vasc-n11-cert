import VascTyped.Link37
import VascPoly.Defs
namespace VascDerivativePolynomial
open VascCertificate VascCertificate.Polynomial VascDerivativeTyped VascDerivativeFull
def basis37 : Array Int := (parseInts cert37.basisText).getD #[]
def mask37 : Array Int := (parseInts cert37.anchorText).getD #[]
def block37 : DerivativeBlock := {
  q := 71
  U := Gram.readMatrix 71 u37
  R := Gram.readMatrix 71 r37
  C := Gram.readMatrix 71 c37
  J := Gram.readMatrix 71 j37
  E := fun a j => (basis37[(a.val+1)*11+j.val]?.getD 0).toNat
  mask := fun j => (mask37[j.val]?.getD 0).toNat
  anchor := fun j => (basis37[j.val]?.getD 0).toNat
}
theorem block37_check : blockCheck block37.toBlock = true := block37_typed
end VascDerivativePolynomial
