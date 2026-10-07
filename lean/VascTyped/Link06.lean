import VascTyped.Block06
import VascDerivative.Block06
import VascTyped.SourceLink
namespace VascDerivativeTyped
open VascDerivativeFull
theorem block6_source_link :
  u6 = triangularLift 121 ((parseInts cert6.uText).getD #[]) ∧
  r6 = ((parseInts cert6.rText).getD #[]) ∧
  u6.size = 121*121 ∧ r6.size = 121*121 ∧ c6.size = 121*121 ∧ j6.size = 121*121 := by native_decide
end VascDerivativeTyped
