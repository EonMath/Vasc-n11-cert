import VascTyped.Link60
import VascPoly.Defs
namespace VascDerivativePolynomial
open VascCertificate VascCertificate.Polynomial VascDerivativeTyped VascDerivativeFull
def basis60 : Array Int := (parseInts cert60.basisText).getD #[]
def mask60 : Array Int := (parseInts cert60.anchorText).getD #[]
def block60 : DerivativeBlock := {
  q := 74
  U := Gram.readMatrix 74 u60
  R := Gram.readMatrix 74 r60
  C := Gram.readMatrix 74 c60
  J := Gram.readMatrix 74 j60
  E := fun a j => (basis60[(a.val+1)*11+j.val]?.getD 0).toNat
  mask := fun j => (mask60[j.val]?.getD 0).toNat
  anchor := fun j => (basis60[j.val]?.getD 0).toNat
}
theorem block60_check : blockCheck block60.toBlock = true := block60_typed
end VascDerivativePolynomial
