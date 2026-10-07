import VascTyped.Link34
import VascPoly.Defs
namespace VascDerivativePolynomial
open VascCertificate VascCertificate.Polynomial VascDerivativeTyped VascDerivativeFull
def basis34 : Array Int := (parseInts cert34.basisText).getD #[]
def mask34 : Array Int := (parseInts cert34.anchorText).getD #[]
def block34 : DerivativeBlock := {
  q := 69
  U := Gram.readMatrix 69 u34
  R := Gram.readMatrix 69 r34
  C := Gram.readMatrix 69 c34
  J := Gram.readMatrix 69 j34
  E := fun a j => (basis34[(a.val+1)*11+j.val]?.getD 0).toNat
  mask := fun j => (mask34[j.val]?.getD 0).toNat
  anchor := fun j => (basis34[j.val]?.getD 0).toNat
}
theorem block34_check : blockCheck block34.toBlock = true := block34_typed
end VascDerivativePolynomial
