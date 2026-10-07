import VascTyped.Link44
import VascPoly.Defs
namespace VascDerivativePolynomial
open VascCertificate VascCertificate.Polynomial VascDerivativeTyped VascDerivativeFull
def basis44 : Array Int := (parseInts cert44.basisText).getD #[]
def mask44 : Array Int := (parseInts cert44.anchorText).getD #[]
def block44 : DerivativeBlock := {
  q := 69
  U := Gram.readMatrix 69 u44
  R := Gram.readMatrix 69 r44
  C := Gram.readMatrix 69 c44
  J := Gram.readMatrix 69 j44
  E := fun a j => (basis44[(a.val+1)*11+j.val]?.getD 0).toNat
  mask := fun j => (mask44[j.val]?.getD 0).toNat
  anchor := fun j => (basis44[j.val]?.getD 0).toNat
}
theorem block44_check : blockCheck block44.toBlock = true := block44_typed
end VascDerivativePolynomial
