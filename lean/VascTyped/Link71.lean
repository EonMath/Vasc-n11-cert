import VascTyped.Block71
import VascDerivative.Block71
import VascTyped.SourceLink
namespace VascDerivativeTyped
open VascDerivativeFull
theorem block71_source_link :
  u71 = triangularLift 36 ((parseInts cert71.uText).getD #[]) ∧
  r71 = ((parseInts cert71.rText).getD #[]) ∧
  u71.size = 36*36 ∧ r71.size = 36*36 ∧ c71.size = 36*36 ∧ j71.size = 36*36 := by native_decide
end VascDerivativeTyped
