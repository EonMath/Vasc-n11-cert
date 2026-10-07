import VascTyped.Block68
import VascDerivative.Block68
import VascTyped.SourceLink
namespace VascDerivativeTyped
open VascDerivativeFull
theorem block68_source_link :
  u68 = triangularLift 33 ((parseInts cert68.uText).getD #[]) ∧
  r68 = ((parseInts cert68.rText).getD #[]) ∧
  u68.size = 33*33 ∧ r68.size = 33*33 ∧ c68.size = 33*33 ∧ j68.size = 33*33 := by native_decide
end VascDerivativeTyped
