import VascTyped.Block59
import VascDerivative.Block59
import VascTyped.SourceLink
namespace VascDerivativeTyped
open VascDerivativeFull
theorem block59_source_link :
  u59 = triangularLift 76 ((parseInts cert59.uText).getD #[]) ∧
  r59 = ((parseInts cert59.rText).getD #[]) ∧
  u59.size = 76*76 ∧ r59.size = 76*76 ∧ c59.size = 76*76 ∧ j59.size = 76*76 := by native_decide
end VascDerivativeTyped
