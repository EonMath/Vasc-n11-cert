import VascTyped.Block19
import VascDerivative.Block19
import VascTyped.SourceLink
namespace VascDerivativeTyped
open VascDerivativeFull
theorem block19_source_link :
  u19 = triangularLift 71 ((parseInts cert19.uText).getD #[]) ∧
  r19 = ((parseInts cert19.rText).getD #[]) ∧
  u19.size = 71*71 ∧ r19.size = 71*71 ∧ c19.size = 71*71 ∧ j19.size = 71*71 := by native_decide
end VascDerivativeTyped
