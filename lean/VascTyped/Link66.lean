import VascTyped.Block66
import VascDerivative.Block66
import VascTyped.SourceLink
namespace VascDerivativeTyped
open VascDerivativeFull
theorem block66_source_link :
  u66 = triangularLift 35 ((parseInts cert66.uText).getD #[]) ∧
  r66 = ((parseInts cert66.rText).getD #[]) ∧
  u66.size = 35*35 ∧ r66.size = 35*35 ∧ c66.size = 35*35 ∧ j66.size = 35*35 := by native_decide
end VascDerivativeTyped
