import VascTyped.Link75
import VascPoly.Defs
namespace VascDerivativePolynomial
open VascCertificate VascCertificate.Polynomial VascDerivativeTyped VascDerivativeFull
def basis75 : Array Int := (parseInts cert75.basisText).getD #[]
def mask75 : Array Int := (parseInts cert75.anchorText).getD #[]
def block75 : DerivativeBlock := {
  q := 32
  U := Gram.readMatrix 32 u75
  R := Gram.readMatrix 32 r75
  C := Gram.readMatrix 32 c75
  J := Gram.readMatrix 32 j75
  E := fun a j => (basis75[(a.val+1)*11+j.val]?.getD 0).toNat
  mask := fun j => (mask75[j.val]?.getD 0).toNat
  anchor := fun j => (basis75[j.val]?.getD 0).toNat
}
theorem block75_check : blockCheck block75.toBlock = true := block75_typed
end VascDerivativePolynomial
