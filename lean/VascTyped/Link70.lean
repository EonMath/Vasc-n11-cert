import VascTyped.Block70
import VascDerivative.Block70
import VascTyped.SourceLink
namespace VascDerivativeTyped
open VascDerivativeFull
theorem block70_source_link :
  u70 = triangularLift 31 ((parseInts cert70.uText).getD #[]) ∧
  r70 = ((parseInts cert70.rText).getD #[]) ∧
  u70.size = 31*31 ∧ r70.size = 31*31 ∧ c70.size = 31*31 ∧ j70.size = 31*31 := by native_decide
end VascDerivativeTyped
