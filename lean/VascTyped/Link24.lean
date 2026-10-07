import VascTyped.Block24
import VascDerivative.Block24
import VascTyped.SourceLink
namespace VascDerivativeTyped
open VascDerivativeFull
theorem block24_source_link :
  u24 = triangularLift 71 ((parseInts cert24.uText).getD #[]) ∧
  r24 = ((parseInts cert24.rText).getD #[]) ∧
  u24.size = 71*71 ∧ r24.size = 71*71 ∧ c24.size = 71*71 ∧ j24.size = 71*71 := by native_decide
end VascDerivativeTyped
