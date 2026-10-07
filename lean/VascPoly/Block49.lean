import VascTyped.Link49
import VascPoly.Defs
namespace VascDerivativePolynomial
open VascCertificate VascCertificate.Polynomial VascDerivativeTyped VascDerivativeFull
def basis49 : Array Int := (parseInts cert49.basisText).getD #[]
def mask49 : Array Int := (parseInts cert49.anchorText).getD #[]
def block49 : DerivativeBlock := {
  q := 30
  U := Gram.readMatrix 30 u49
  R := Gram.readMatrix 30 r49
  C := Gram.readMatrix 30 c49
  J := Gram.readMatrix 30 j49
  E := fun a j => (basis49[(a.val+1)*11+j.val]?.getD 0).toNat
  mask := fun j => (mask49[j.val]?.getD 0).toNat
  anchor := fun j => (basis49[j.val]?.getD 0).toNat
}
theorem block49_check : blockCheck block49.toBlock = true := block49_typed
end VascDerivativePolynomial
