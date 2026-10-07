import VascTyped.Link83
import VascPoly.Defs
namespace VascDerivativePolynomial
open VascCertificate VascCertificate.Polynomial VascDerivativeTyped VascDerivativeFull
def basis83 : Array Int := (parseInts cert83.basisText).getD #[]
def mask83 : Array Int := (parseInts cert83.anchorText).getD #[]
def block83 : DerivativeBlock := {
  q := 10
  U := Gram.readMatrix 10 u83
  R := Gram.readMatrix 10 r83
  C := Gram.readMatrix 10 c83
  J := Gram.readMatrix 10 j83
  E := fun a j => (basis83[(a.val+1)*11+j.val]?.getD 0).toNat
  mask := fun j => (mask83[j.val]?.getD 0).toNat
  anchor := fun j => (basis83[j.val]?.getD 0).toNat
}
theorem block83_check : blockCheck block83.toBlock = true := block83_typed
end VascDerivativePolynomial
