import VascTyped.Block36
import VascDerivative.Block36
import VascTyped.SourceLink
namespace VascDerivativeTyped
open VascDerivativeFull
theorem block36_source_link :
  u36 = triangularLift 70 ((parseInts cert36.uText).getD #[]) ∧
  r36 = ((parseInts cert36.rText).getD #[]) ∧
  u36.size = 70*70 ∧ r36.size = 70*70 ∧ c36.size = 70*70 ∧ j36.size = 70*70 := by native_decide
end VascDerivativeTyped
