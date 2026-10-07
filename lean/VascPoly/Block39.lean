import VascTyped.Link39
import VascPoly.Defs
namespace VascDerivativePolynomial
open VascCertificate VascCertificate.Polynomial VascDerivativeTyped VascDerivativeFull
def basis39 : Array Int := (parseInts cert39.basisText).getD #[]
def mask39 : Array Int := (parseInts cert39.anchorText).getD #[]
def block39 : DerivativeBlock := {
  q := 70
  U := Gram.readMatrix 70 u39
  R := Gram.readMatrix 70 r39
  C := Gram.readMatrix 70 c39
  J := Gram.readMatrix 70 j39
  E := fun a j => (basis39[(a.val+1)*11+j.val]?.getD 0).toNat
  mask := fun j => (mask39[j.val]?.getD 0).toNat
  anchor := fun j => (basis39[j.val]?.getD 0).toNat
}
theorem block39_check : blockCheck block39.toBlock = true := block39_typed
end VascDerivativePolynomial
