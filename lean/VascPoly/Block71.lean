import VascTyped.Link71
import VascPoly.Defs
namespace VascDerivativePolynomial
open VascCertificate VascCertificate.Polynomial VascDerivativeTyped VascDerivativeFull
def basis71 : Array Int := (parseInts cert71.basisText).getD #[]
def mask71 : Array Int := (parseInts cert71.anchorText).getD #[]
def block71 : DerivativeBlock := {
  q := 36
  U := Gram.readMatrix 36 u71
  R := Gram.readMatrix 36 r71
  C := Gram.readMatrix 36 c71
  J := Gram.readMatrix 36 j71
  E := fun a j => (basis71[(a.val+1)*11+j.val]?.getD 0).toNat
  mask := fun j => (mask71[j.val]?.getD 0).toNat
  anchor := fun j => (basis71[j.val]?.getD 0).toNat
}
theorem block71_check : blockCheck block71.toBlock = true := block71_typed
end VascDerivativePolynomial
