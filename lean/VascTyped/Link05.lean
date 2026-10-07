import VascTyped.Block05
import VascDerivative.Block05
import VascTyped.SourceLink
namespace VascDerivativeTyped
open VascDerivativeFull
theorem block5_source_link :
  u5 = triangularLift 121 ((parseInts cert5.uText).getD #[]) ∧
  r5 = ((parseInts cert5.rText).getD #[]) ∧
  u5.size = 121*121 ∧ r5.size = 121*121 ∧ c5.size = 121*121 ∧ j5.size = 121*121 := by native_decide
end VascDerivativeTyped
