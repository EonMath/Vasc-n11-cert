import VascTyped.Link78
import VascPoly.Defs
namespace VascDerivativePolynomial
open VascCertificate VascCertificate.Polynomial VascDerivativeTyped VascDerivativeFull
def basis78 : Array Int := (parseInts cert78.basisText).getD #[]
def mask78 : Array Int := (parseInts cert78.anchorText).getD #[]
def block78 : DerivativeBlock := {
  q := 34
  U := Gram.readMatrix 34 u78
  R := Gram.readMatrix 34 r78
  C := Gram.readMatrix 34 c78
  J := Gram.readMatrix 34 j78
  E := fun a j => (basis78[(a.val+1)*11+j.val]?.getD 0).toNat
  mask := fun j => (mask78[j.val]?.getD 0).toNat
  anchor := fun j => (basis78[j.val]?.getD 0).toNat
}
theorem block78_check : blockCheck block78.toBlock = true := block78_typed
end VascDerivativePolynomial
