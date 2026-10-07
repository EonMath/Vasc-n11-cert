import VascTyped.Link36
import VascPoly.Defs
namespace VascDerivativePolynomial
open VascCertificate VascCertificate.Polynomial VascDerivativeTyped VascDerivativeFull
def basis36 : Array Int := (parseInts cert36.basisText).getD #[]
def mask36 : Array Int := (parseInts cert36.anchorText).getD #[]
def block36 : DerivativeBlock := {
  q := 70
  U := Gram.readMatrix 70 u36
  R := Gram.readMatrix 70 r36
  C := Gram.readMatrix 70 c36
  J := Gram.readMatrix 70 j36
  E := fun a j => (basis36[(a.val+1)*11+j.val]?.getD 0).toNat
  mask := fun j => (mask36[j.val]?.getD 0).toNat
  anchor := fun j => (basis36[j.val]?.getD 0).toNat
}
theorem block36_check : blockCheck block36.toBlock = true := block36_typed
end VascDerivativePolynomial
