import VascTyped.Block62
import VascDerivative.Block62
import VascTyped.SourceLink
namespace VascDerivativeTyped
open VascDerivativeFull
theorem block62_source_link :
  u62 = triangularLift 71 ((parseInts cert62.uText).getD #[]) ∧
  r62 = ((parseInts cert62.rText).getD #[]) ∧
  u62.size = 71*71 ∧ r62.size = 71*71 ∧ c62.size = 71*71 ∧ j62.size = 71*71 := by native_decide
end VascDerivativeTyped
