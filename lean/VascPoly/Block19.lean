import VascTyped.Link19
import VascPoly.Defs
namespace VascDerivativePolynomial
open VascCertificate VascCertificate.Polynomial VascDerivativeTyped VascDerivativeFull
def basis19 : Array Int := (parseInts cert19.basisText).getD #[]
def mask19 : Array Int := (parseInts cert19.anchorText).getD #[]
def block19 : DerivativeBlock := {
  q := 71
  U := Gram.readMatrix 71 u19
  R := Gram.readMatrix 71 r19
  C := Gram.readMatrix 71 c19
  J := Gram.readMatrix 71 j19
  E := fun a j => (basis19[(a.val+1)*11+j.val]?.getD 0).toNat
  mask := fun j => (mask19[j.val]?.getD 0).toNat
  anchor := fun j => (basis19[j.val]?.getD 0).toNat
}
theorem block19_check : blockCheck block19.toBlock = true := block19_typed
end VascDerivativePolynomial
