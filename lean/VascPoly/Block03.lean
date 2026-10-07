import VascTyped.Link03
import VascPoly.Defs
namespace VascDerivativePolynomial
open VascCertificate VascCertificate.Polynomial VascDerivativeTyped VascDerivativeFull
def basis3 : Array Int := (parseInts cert3.basisText).getD #[]
def mask3 : Array Int := (parseInts cert3.anchorText).getD #[]
def block3 : DerivativeBlock := {
  q := 118
  U := Gram.readMatrix 118 u3
  R := Gram.readMatrix 118 r3
  C := Gram.readMatrix 118 c3
  J := Gram.readMatrix 118 j3
  E := fun a j => (basis3[(a.val+1)*11+j.val]?.getD 0).toNat
  mask := fun j => (mask3[j.val]?.getD 0).toNat
  anchor := fun j => (basis3[j.val]?.getD 0).toNat
}
theorem block3_check : blockCheck block3.toBlock = true := block3_typed
end VascDerivativePolynomial
