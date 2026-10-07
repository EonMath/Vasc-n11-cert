import VascTyped.Link02
import VascPoly.Defs
namespace VascDerivativePolynomial
open VascCertificate VascCertificate.Polynomial VascDerivativeTyped VascDerivativeFull
def basis2 : Array Int := (parseInts cert2.basisText).getD #[]
def mask2 : Array Int := (parseInts cert2.anchorText).getD #[]
def block2 : DerivativeBlock := {
  q := 118
  U := Gram.readMatrix 118 u2
  R := Gram.readMatrix 118 r2
  C := Gram.readMatrix 118 c2
  J := Gram.readMatrix 118 j2
  E := fun a j => (basis2[(a.val+1)*11+j.val]?.getD 0).toNat
  mask := fun j => (mask2[j.val]?.getD 0).toNat
  anchor := fun j => (basis2[j.val]?.getD 0).toNat
}
theorem block2_check : blockCheck block2.toBlock = true := block2_typed
end VascDerivativePolynomial
