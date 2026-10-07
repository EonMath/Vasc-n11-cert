import VascTyped.Block38
import VascDerivative.Block38
import VascTyped.SourceLink
namespace VascDerivativeTyped
open VascDerivativeFull
theorem block38_source_link :
  u38 = triangularLift 71 ((parseInts cert38.uText).getD #[]) ∧
  r38 = ((parseInts cert38.rText).getD #[]) ∧
  u38.size = 71*71 ∧ r38.size = 71*71 ∧ c38.size = 71*71 ∧ j38.size = 71*71 := by native_decide
end VascDerivativeTyped
