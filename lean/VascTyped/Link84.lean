import VascTyped.Block84
import VascDerivative.Block84
import VascTyped.SourceLink
namespace VascDerivativeTyped
open VascDerivativeFull
theorem block84_source_link :
  u84 = triangularLift 35 ((parseInts cert84.uText).getD #[]) ∧
  r84 = ((parseInts cert84.rText).getD #[]) ∧
  u84.size = 35*35 ∧ r84.size = 35*35 ∧ c84.size = 35*35 ∧ j84.size = 35*35 := by native_decide
end VascDerivativeTyped
