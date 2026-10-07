import VascTyped.Link65
import VascPoly.Defs
namespace VascDerivativePolynomial
open VascCertificate VascCertificate.Polynomial VascDerivativeTyped VascDerivativeFull
def basis65 : Array Int := (parseInts cert65.basisText).getD #[]
def mask65 : Array Int := (parseInts cert65.anchorText).getD #[]
def block65 : DerivativeBlock := {
  q := 74
  U := Gram.readMatrix 74 u65
  R := Gram.readMatrix 74 r65
  C := Gram.readMatrix 74 c65
  J := Gram.readMatrix 74 j65
  E := fun a j => (basis65[(a.val+1)*11+j.val]?.getD 0).toNat
  mask := fun j => (mask65[j.val]?.getD 0).toNat
  anchor := fun j => (basis65[j.val]?.getD 0).toNat
}
theorem block65_check : blockCheck block65.toBlock = true := block65_typed
end VascDerivativePolynomial
