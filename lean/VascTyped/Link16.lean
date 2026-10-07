import VascTyped.Block16
import VascDerivative.Block16
import VascTyped.SourceLink
namespace VascDerivativeTyped
open VascDerivativeFull
theorem block16_source_link :
  u16 = triangularLift 121 ((parseInts cert16.uText).getD #[]) ∧
  r16 = ((parseInts cert16.rText).getD #[]) ∧
  u16.size = 121*121 ∧ r16.size = 121*121 ∧ c16.size = 121*121 ∧ j16.size = 121*121 := by native_decide
end VascDerivativeTyped
