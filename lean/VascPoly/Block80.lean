import VascTyped.Link80
import VascPoly.Defs
namespace VascDerivativePolynomial
open VascCertificate VascCertificate.Polynomial VascDerivativeTyped VascDerivativeFull
def basis80 : Array Int := (parseInts cert80.basisText).getD #[]
def mask80 : Array Int := (parseInts cert80.anchorText).getD #[]
def block80 : DerivativeBlock := {
  q := 35
  U := Gram.readMatrix 35 u80
  R := Gram.readMatrix 35 r80
  C := Gram.readMatrix 35 c80
  J := Gram.readMatrix 35 j80
  E := fun a j => (basis80[(a.val+1)*11+j.val]?.getD 0).toNat
  mask := fun j => (mask80[j.val]?.getD 0).toNat
  anchor := fun j => (basis80[j.val]?.getD 0).toNat
}
theorem block80_check : blockCheck block80.toBlock = true := block80_typed
end VascDerivativePolynomial
