import VascTyped.Link92
import VascPoly.Defs
namespace VascDerivativePolynomial
open VascCertificate VascCertificate.Polynomial VascDerivativeTyped VascDerivativeFull
def basis92 : Array Int := (parseInts cert92.basisText).getD #[]
def mask92 : Array Int := (parseInts cert92.anchorText).getD #[]
def block92 : DerivativeBlock := {
  q := 10
  U := Gram.readMatrix 10 u92
  R := Gram.readMatrix 10 r92
  C := Gram.readMatrix 10 c92
  J := Gram.readMatrix 10 j92
  E := fun a j => (basis92[(a.val+1)*11+j.val]?.getD 0).toNat
  mask := fun j => (mask92[j.val]?.getD 0).toNat
  anchor := fun j => (basis92[j.val]?.getD 0).toNat
}
theorem block92_check : blockCheck block92.toBlock = true := block92_typed
end VascDerivativePolynomial
