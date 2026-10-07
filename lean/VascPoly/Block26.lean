import VascTyped.Link26
import VascPoly.Defs
namespace VascDerivativePolynomial
open VascCertificate VascCertificate.Polynomial VascDerivativeTyped VascDerivativeFull
def basis26 : Array Int := (parseInts cert26.basisText).getD #[]
def mask26 : Array Int := (parseInts cert26.anchorText).getD #[]
def block26 : DerivativeBlock := {
  q := 69
  U := Gram.readMatrix 69 u26
  R := Gram.readMatrix 69 r26
  C := Gram.readMatrix 69 c26
  J := Gram.readMatrix 69 j26
  E := fun a j => (basis26[(a.val+1)*11+j.val]?.getD 0).toNat
  mask := fun j => (mask26[j.val]?.getD 0).toNat
  anchor := fun j => (basis26[j.val]?.getD 0).toNat
}
theorem block26_check : blockCheck block26.toBlock = true := block26_typed
end VascDerivativePolynomial
