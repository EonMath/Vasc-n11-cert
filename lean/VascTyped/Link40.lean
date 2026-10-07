import VascTyped.Block40
import VascDerivative.Block40
import VascTyped.SourceLink
namespace VascDerivativeTyped
open VascDerivativeFull
theorem block40_source_link :
  u40 = triangularLift 71 ((parseInts cert40.uText).getD #[]) ∧
  r40 = ((parseInts cert40.rText).getD #[]) ∧
  u40.size = 71*71 ∧ r40.size = 71*71 ∧ c40.size = 71*71 ∧ j40.size = 71*71 := by native_decide
end VascDerivativeTyped
