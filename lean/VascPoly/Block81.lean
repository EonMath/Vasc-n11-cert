import VascTyped.Link81
import VascPoly.Defs
namespace VascDerivativePolynomial
open VascCertificate VascCertificate.Polynomial VascDerivativeTyped VascDerivativeFull
def basis81 : Array Int := (parseInts cert81.basisText).getD #[]
def mask81 : Array Int := (parseInts cert81.anchorText).getD #[]
def block81 : DerivativeBlock := {
  q := 34
  U := Gram.readMatrix 34 u81
  R := Gram.readMatrix 34 r81
  C := Gram.readMatrix 34 c81
  J := Gram.readMatrix 34 j81
  E := fun a j => (basis81[(a.val+1)*11+j.val]?.getD 0).toNat
  mask := fun j => (mask81[j.val]?.getD 0).toNat
  anchor := fun j => (basis81[j.val]?.getD 0).toNat
}
theorem block81_check : blockCheck block81.toBlock = true := block81_typed
end VascDerivativePolynomial
