import VascTyped.Link07
import VascPoly.Defs
namespace VascDerivativePolynomial
open VascCertificate VascCertificate.Polynomial VascDerivativeTyped VascDerivativeFull
def basis7 : Array Int := (parseInts cert7.basisText).getD #[]
def mask7 : Array Int := (parseInts cert7.anchorText).getD #[]
def block7 : DerivativeBlock := {
  q := 66
  U := Gram.readMatrix 66 u7
  R := Gram.readMatrix 66 r7
  C := Gram.readMatrix 66 c7
  J := Gram.readMatrix 66 j7
  E := fun a j => (basis7[(a.val+1)*11+j.val]?.getD 0).toNat
  mask := fun j => (mask7[j.val]?.getD 0).toNat
  anchor := fun j => (basis7[j.val]?.getD 0).toNat
}
theorem block7_check : blockCheck block7.toBlock = true := block7_typed
end VascDerivativePolynomial
