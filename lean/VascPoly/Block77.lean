import VascTyped.Link77
import VascPoly.Defs
namespace VascDerivativePolynomial
open VascCertificate VascCertificate.Polynomial VascDerivativeTyped VascDerivativeFull
def basis77 : Array Int := (parseInts cert77.basisText).getD #[]
def mask77 : Array Int := (parseInts cert77.anchorText).getD #[]
def block77 : DerivativeBlock := {
  q := 35
  U := Gram.readMatrix 35 u77
  R := Gram.readMatrix 35 r77
  C := Gram.readMatrix 35 c77
  J := Gram.readMatrix 35 j77
  E := fun a j => (basis77[(a.val+1)*11+j.val]?.getD 0).toNat
  mask := fun j => (mask77[j.val]?.getD 0).toNat
  anchor := fun j => (basis77[j.val]?.getD 0).toNat
}
theorem block77_check : blockCheck block77.toBlock = true := block77_typed
end VascDerivativePolynomial
