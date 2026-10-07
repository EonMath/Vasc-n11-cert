import VascTyped.Link87
import VascPoly.Defs
namespace VascDerivativePolynomial
open VascCertificate VascCertificate.Polynomial VascDerivativeTyped VascDerivativeFull
def basis87 : Array Int := (parseInts cert87.basisText).getD #[]
def mask87 : Array Int := (parseInts cert87.anchorText).getD #[]
def block87 : DerivativeBlock := {
  q := 35
  U := Gram.readMatrix 35 u87
  R := Gram.readMatrix 35 r87
  C := Gram.readMatrix 35 c87
  J := Gram.readMatrix 35 j87
  E := fun a j => (basis87[(a.val+1)*11+j.val]?.getD 0).toNat
  mask := fun j => (mask87[j.val]?.getD 0).toNat
  anchor := fun j => (basis87[j.val]?.getD 0).toNat
}
theorem block87_check : blockCheck block87.toBlock = true := block87_typed
end VascDerivativePolynomial
