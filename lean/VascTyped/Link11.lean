import VascTyped.Block11
import VascDerivative.Block11
import VascTyped.SourceLink
namespace VascDerivativeTyped
open VascDerivativeFull
theorem block11_source_link :
  u11 = triangularLift 66 ((parseInts cert11.uText).getD #[]) ∧
  r11 = ((parseInts cert11.rText).getD #[]) ∧
  u11.size = 66*66 ∧ r11.size = 66*66 ∧ c11.size = 66*66 ∧ j11.size = 66*66 := by native_decide
end VascDerivativeTyped
