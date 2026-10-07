import VascTyped.Link17
import VascPoly.Defs
namespace VascDerivativePolynomial
open VascCertificate VascCertificate.Polynomial VascDerivativeTyped VascDerivativeFull
def basis17 : Array Int := (parseInts cert17.basisText).getD #[]
def mask17 : Array Int := (parseInts cert17.anchorText).getD #[]
def block17 : DerivativeBlock := {
  q := 121
  U := Gram.readMatrix 121 u17
  R := Gram.readMatrix 121 r17
  C := Gram.readMatrix 121 c17
  J := Gram.readMatrix 121 j17
  E := fun a j => (basis17[(a.val+1)*11+j.val]?.getD 0).toNat
  mask := fun j => (mask17[j.val]?.getD 0).toNat
  anchor := fun j => (basis17[j.val]?.getD 0).toNat
}
theorem block17_check : blockCheck block17.toBlock = true := block17_typed
end VascDerivativePolynomial
