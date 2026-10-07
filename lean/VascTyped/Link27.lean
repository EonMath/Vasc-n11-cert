import VascTyped.Block27
import VascDerivative.Block27
import VascTyped.SourceLink
namespace VascDerivativeTyped
open VascDerivativeFull
theorem block27_source_link :
  u27 = triangularLift 71 ((parseInts cert27.uText).getD #[]) ∧
  r27 = ((parseInts cert27.rText).getD #[]) ∧
  u27.size = 71*71 ∧ r27.size = 71*71 ∧ c27.size = 71*71 ∧ j27.size = 71*71 := by native_decide
end VascDerivativeTyped
