import VascTyped.Block87
import VascDerivative.Block87
import VascTyped.SourceLink
namespace VascDerivativeTyped
open VascDerivativeFull
theorem block87_source_link :
  u87 = triangularLift 35 ((parseInts cert87.uText).getD #[]) ∧
  r87 = ((parseInts cert87.rText).getD #[]) ∧
  u87.size = 35*35 ∧ r87.size = 35*35 ∧ c87.size = 35*35 ∧ j87.size = 35*35 := by native_decide
end VascDerivativeTyped
