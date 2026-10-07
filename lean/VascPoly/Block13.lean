import VascTyped.Link13
import VascPoly.Defs
namespace VascDerivativePolynomial
open VascCertificate VascCertificate.Polynomial VascDerivativeTyped VascDerivativeFull
def basis13 : Array Int := (parseInts cert13.basisText).getD #[]
def mask13 : Array Int := (parseInts cert13.anchorText).getD #[]
def block13 : DerivativeBlock := {
  q := 66
  U := Gram.readMatrix 66 u13
  R := Gram.readMatrix 66 r13
  C := Gram.readMatrix 66 c13
  J := Gram.readMatrix 66 j13
  E := fun a j => (basis13[(a.val+1)*11+j.val]?.getD 0).toNat
  mask := fun j => (mask13[j.val]?.getD 0).toNat
  anchor := fun j => (basis13[j.val]?.getD 0).toNat
}
theorem block13_check : blockCheck block13.toBlock = true := block13_typed
end VascDerivativePolynomial
