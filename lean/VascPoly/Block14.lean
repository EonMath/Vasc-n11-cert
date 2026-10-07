import VascTyped.Link14
import VascPoly.Defs
namespace VascDerivativePolynomial
open VascCertificate VascCertificate.Polynomial VascDerivativeTyped VascDerivativeFull
def basis14 : Array Int := (parseInts cert14.basisText).getD #[]
def mask14 : Array Int := (parseInts cert14.anchorText).getD #[]
def block14 : DerivativeBlock := {
  q := 66
  U := Gram.readMatrix 66 u14
  R := Gram.readMatrix 66 r14
  C := Gram.readMatrix 66 c14
  J := Gram.readMatrix 66 j14
  E := fun a j => (basis14[(a.val+1)*11+j.val]?.getD 0).toNat
  mask := fun j => (mask14[j.val]?.getD 0).toNat
  anchor := fun j => (basis14[j.val]?.getD 0).toNat
}
theorem block14_check : blockCheck block14.toBlock = true := block14_typed
end VascDerivativePolynomial
