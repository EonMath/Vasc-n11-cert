import VascTyped.Link09
import VascPoly.Defs
namespace VascDerivativePolynomial
open VascCertificate VascCertificate.Polynomial VascDerivativeTyped VascDerivativeFull
def basis9 : Array Int := (parseInts cert9.basisText).getD #[]
def mask9 : Array Int := (parseInts cert9.anchorText).getD #[]
def block9 : DerivativeBlock := {
  q := 121
  U := Gram.readMatrix 121 u9
  R := Gram.readMatrix 121 r9
  C := Gram.readMatrix 121 c9
  J := Gram.readMatrix 121 j9
  E := fun a j => (basis9[(a.val+1)*11+j.val]?.getD 0).toNat
  mask := fun j => (mask9[j.val]?.getD 0).toNat
  anchor := fun j => (basis9[j.val]?.getD 0).toNat
}
theorem block9_check : blockCheck block9.toBlock = true := block9_typed
end VascDerivativePolynomial
