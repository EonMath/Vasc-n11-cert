import VascTyped.Block25
import VascDerivative.Block25
import VascTyped.SourceLink
namespace VascDerivativeTyped
open VascDerivativeFull
theorem block25_source_link :
  u25 = triangularLift 70 ((parseInts cert25.uText).getD #[]) ∧
  r25 = ((parseInts cert25.rText).getD #[]) ∧
  u25.size = 70*70 ∧ r25.size = 70*70 ∧ c25.size = 70*70 ∧ j25.size = 70*70 := by native_decide
end VascDerivativeTyped
