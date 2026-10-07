import VascTyped.Link73
import VascPoly.Defs
namespace VascDerivativePolynomial
open VascCertificate VascCertificate.Polynomial VascDerivativeTyped VascDerivativeFull
def basis73 : Array Int := (parseInts cert73.basisText).getD #[]
def mask73 : Array Int := (parseInts cert73.anchorText).getD #[]
def block73 : DerivativeBlock := {
  q := 34
  U := Gram.readMatrix 34 u73
  R := Gram.readMatrix 34 r73
  C := Gram.readMatrix 34 c73
  J := Gram.readMatrix 34 j73
  E := fun a j => (basis73[(a.val+1)*11+j.val]?.getD 0).toNat
  mask := fun j => (mask73[j.val]?.getD 0).toNat
  anchor := fun j => (basis73[j.val]?.getD 0).toNat
}
theorem block73_check : blockCheck block73.toBlock = true := block73_typed
end VascDerivativePolynomial
