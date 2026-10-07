import VascTyped.Link25
import VascPoly.Defs
namespace VascDerivativePolynomial
open VascCertificate VascCertificate.Polynomial VascDerivativeTyped VascDerivativeFull
def basis25 : Array Int := (parseInts cert25.basisText).getD #[]
def mask25 : Array Int := (parseInts cert25.anchorText).getD #[]
def block25 : DerivativeBlock := {
  q := 70
  U := Gram.readMatrix 70 u25
  R := Gram.readMatrix 70 r25
  C := Gram.readMatrix 70 c25
  J := Gram.readMatrix 70 j25
  E := fun a j => (basis25[(a.val+1)*11+j.val]?.getD 0).toNat
  mask := fun j => (mask25[j.val]?.getD 0).toNat
  anchor := fun j => (basis25[j.val]?.getD 0).toNat
}
theorem block25_check : blockCheck block25.toBlock = true := block25_typed
end VascDerivativePolynomial
