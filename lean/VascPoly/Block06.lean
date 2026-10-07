import VascTyped.Link06
import VascPoly.Defs
namespace VascDerivativePolynomial
open VascCertificate VascCertificate.Polynomial VascDerivativeTyped VascDerivativeFull
def basis6 : Array Int := (parseInts cert6.basisText).getD #[]
def mask6 : Array Int := (parseInts cert6.anchorText).getD #[]
def block6 : DerivativeBlock := {
  q := 121
  U := Gram.readMatrix 121 u6
  R := Gram.readMatrix 121 r6
  C := Gram.readMatrix 121 c6
  J := Gram.readMatrix 121 j6
  E := fun a j => (basis6[(a.val+1)*11+j.val]?.getD 0).toNat
  mask := fun j => (mask6[j.val]?.getD 0).toNat
  anchor := fun j => (basis6[j.val]?.getD 0).toNat
}
theorem block6_check : blockCheck block6.toBlock = true := block6_typed
end VascDerivativePolynomial
