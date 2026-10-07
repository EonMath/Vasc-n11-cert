import VascTyped.Link51
import VascPoly.Defs
namespace VascDerivativePolynomial
open VascCertificate VascCertificate.Polynomial VascDerivativeTyped VascDerivativeFull
def basis51 : Array Int := (parseInts cert51.basisText).getD #[]
def mask51 : Array Int := (parseInts cert51.anchorText).getD #[]
def block51 : DerivativeBlock := {
  q := 68
  U := Gram.readMatrix 68 u51
  R := Gram.readMatrix 68 r51
  C := Gram.readMatrix 68 c51
  J := Gram.readMatrix 68 j51
  E := fun a j => (basis51[(a.val+1)*11+j.val]?.getD 0).toNat
  mask := fun j => (mask51[j.val]?.getD 0).toNat
  anchor := fun j => (basis51[j.val]?.getD 0).toNat
}
theorem block51_check : blockCheck block51.toBlock = true := block51_typed
end VascDerivativePolynomial
