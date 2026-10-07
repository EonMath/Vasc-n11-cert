import VascTyped.Link57
import VascPoly.Defs
namespace VascDerivativePolynomial
open VascCertificate VascCertificate.Polynomial VascDerivativeTyped VascDerivativeFull
def basis57 : Array Int := (parseInts cert57.basisText).getD #[]
def mask57 : Array Int := (parseInts cert57.anchorText).getD #[]
def block57 : DerivativeBlock := {
  q := 74
  U := Gram.readMatrix 74 u57
  R := Gram.readMatrix 74 r57
  C := Gram.readMatrix 74 c57
  J := Gram.readMatrix 74 j57
  E := fun a j => (basis57[(a.val+1)*11+j.val]?.getD 0).toNat
  mask := fun j => (mask57[j.val]?.getD 0).toNat
  anchor := fun j => (basis57[j.val]?.getD 0).toNat
}
theorem block57_check : blockCheck block57.toBlock = true := block57_typed
end VascDerivativePolynomial
