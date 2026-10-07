import VascTyped.Link45
import VascPoly.Defs
namespace VascDerivativePolynomial
open VascCertificate VascCertificate.Polynomial VascDerivativeTyped VascDerivativeFull
def basis45 : Array Int := (parseInts cert45.basisText).getD #[]
def mask45 : Array Int := (parseInts cert45.anchorText).getD #[]
def block45 : DerivativeBlock := {
  q := 70
  U := Gram.readMatrix 70 u45
  R := Gram.readMatrix 70 r45
  C := Gram.readMatrix 70 c45
  J := Gram.readMatrix 70 j45
  E := fun a j => (basis45[(a.val+1)*11+j.val]?.getD 0).toNat
  mask := fun j => (mask45[j.val]?.getD 0).toNat
  anchor := fun j => (basis45[j.val]?.getD 0).toNat
}
theorem block45_check : blockCheck block45.toBlock = true := block45_typed
end VascDerivativePolynomial
