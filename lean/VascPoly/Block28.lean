import VascTyped.Link28
import VascPoly.Defs
namespace VascDerivativePolynomial
open VascCertificate VascCertificate.Polynomial VascDerivativeTyped VascDerivativeFull
def basis28 : Array Int := (parseInts cert28.basisText).getD #[]
def mask28 : Array Int := (parseInts cert28.anchorText).getD #[]
def block28 : DerivativeBlock := {
  q := 70
  U := Gram.readMatrix 70 u28
  R := Gram.readMatrix 70 r28
  C := Gram.readMatrix 70 c28
  J := Gram.readMatrix 70 j28
  E := fun a j => (basis28[(a.val+1)*11+j.val]?.getD 0).toNat
  mask := fun j => (mask28[j.val]?.getD 0).toNat
  anchor := fun j => (basis28[j.val]?.getD 0).toNat
}
theorem block28_check : blockCheck block28.toBlock = true := block28_typed
end VascDerivativePolynomial
