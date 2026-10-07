import VascTyped.Link68
import VascPoly.Defs
namespace VascDerivativePolynomial
open VascCertificate VascCertificate.Polynomial VascDerivativeTyped VascDerivativeFull
def basis68 : Array Int := (parseInts cert68.basisText).getD #[]
def mask68 : Array Int := (parseInts cert68.anchorText).getD #[]
def block68 : DerivativeBlock := {
  q := 33
  U := Gram.readMatrix 33 u68
  R := Gram.readMatrix 33 r68
  C := Gram.readMatrix 33 c68
  J := Gram.readMatrix 33 j68
  E := fun a j => (basis68[(a.val+1)*11+j.val]?.getD 0).toNat
  mask := fun j => (mask68[j.val]?.getD 0).toNat
  anchor := fun j => (basis68[j.val]?.getD 0).toNat
}
theorem block68_check : blockCheck block68.toBlock = true := block68_typed
end VascDerivativePolynomial
