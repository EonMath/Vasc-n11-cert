import VascTyped.Link41
import VascPoly.Defs
namespace VascDerivativePolynomial
open VascCertificate VascCertificate.Polynomial VascDerivativeTyped VascDerivativeFull
def basis41 : Array Int := (parseInts cert41.basisText).getD #[]
def mask41 : Array Int := (parseInts cert41.anchorText).getD #[]
def block41 : DerivativeBlock := {
  q := 70
  U := Gram.readMatrix 70 u41
  R := Gram.readMatrix 70 r41
  C := Gram.readMatrix 70 c41
  J := Gram.readMatrix 70 j41
  E := fun a j => (basis41[(a.val+1)*11+j.val]?.getD 0).toNat
  mask := fun j => (mask41[j.val]?.getD 0).toNat
  anchor := fun j => (basis41[j.val]?.getD 0).toNat
}
theorem block41_check : blockCheck block41.toBlock = true := block41_typed
end VascDerivativePolynomial
