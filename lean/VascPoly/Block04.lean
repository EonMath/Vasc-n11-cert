import VascTyped.Link04
import VascPoly.Defs
namespace VascDerivativePolynomial
open VascCertificate VascCertificate.Polynomial VascDerivativeTyped VascDerivativeFull
def basis4 : Array Int := (parseInts cert4.basisText).getD #[]
def mask4 : Array Int := (parseInts cert4.anchorText).getD #[]
def block4 : DerivativeBlock := {
  q := 121
  U := Gram.readMatrix 121 u4
  R := Gram.readMatrix 121 r4
  C := Gram.readMatrix 121 c4
  J := Gram.readMatrix 121 j4
  E := fun a j => (basis4[(a.val+1)*11+j.val]?.getD 0).toNat
  mask := fun j => (mask4[j.val]?.getD 0).toNat
  anchor := fun j => (basis4[j.val]?.getD 0).toNat
}
theorem block4_check : blockCheck block4.toBlock = true := block4_typed
end VascDerivativePolynomial
