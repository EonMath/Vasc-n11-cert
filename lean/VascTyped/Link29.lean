import VascTyped.Block29
import VascDerivative.Block29
import VascTyped.SourceLink
namespace VascDerivativeTyped
open VascDerivativeFull
theorem block29_source_link :
  u29 = triangularLift 71 ((parseInts cert29.uText).getD #[]) ∧
  r29 = ((parseInts cert29.rText).getD #[]) ∧
  u29.size = 71*71 ∧ r29.size = 71*71 ∧ c29.size = 71*71 ∧ j29.size = 71*71 := by native_decide
end VascDerivativeTyped
