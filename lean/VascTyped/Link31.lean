import VascTyped.Block31
import VascDerivative.Block31
import VascTyped.SourceLink
namespace VascDerivativeTyped
open VascDerivativeFull
theorem block31_source_link :
  u31 = triangularLift 121 ((parseInts cert31.uText).getD #[]) ∧
  r31 = ((parseInts cert31.rText).getD #[]) ∧
  u31.size = 121*121 ∧ r31.size = 121*121 ∧ c31.size = 121*121 ∧ j31.size = 121*121 := by native_decide
end VascDerivativeTyped
