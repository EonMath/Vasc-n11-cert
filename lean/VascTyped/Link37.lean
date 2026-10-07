import VascTyped.Block37
import VascDerivative.Block37
import VascTyped.SourceLink
namespace VascDerivativeTyped
open VascDerivativeFull
theorem block37_source_link :
  u37 = triangularLift 71 ((parseInts cert37.uText).getD #[]) ∧
  r37 = ((parseInts cert37.rText).getD #[]) ∧
  u37.size = 71*71 ∧ r37.size = 71*71 ∧ c37.size = 71*71 ∧ j37.size = 71*71 := by native_decide
end VascDerivativeTyped
