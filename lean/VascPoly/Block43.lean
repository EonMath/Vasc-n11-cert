import VascTyped.Link43
import VascPoly.Defs
namespace VascDerivativePolynomial
open VascCertificate VascCertificate.Polynomial VascDerivativeTyped VascDerivativeFull
def basis43 : Array Int := (parseInts cert43.basisText).getD #[]
def mask43 : Array Int := (parseInts cert43.anchorText).getD #[]
def block43 : DerivativeBlock := {
  q := 66
  U := Gram.readMatrix 66 u43
  R := Gram.readMatrix 66 r43
  C := Gram.readMatrix 66 c43
  J := Gram.readMatrix 66 j43
  E := fun a j => (basis43[(a.val+1)*11+j.val]?.getD 0).toNat
  mask := fun j => (mask43[j.val]?.getD 0).toNat
  anchor := fun j => (basis43[j.val]?.getD 0).toNat
}
theorem block43_check : blockCheck block43.toBlock = true := block43_typed
end VascDerivativePolynomial
