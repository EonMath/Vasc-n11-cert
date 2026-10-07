import VascTyped.Block51
import VascDerivative.Block51
import VascTyped.SourceLink
namespace VascDerivativeTyped
open VascDerivativeFull
theorem block51_source_link :
  u51 = triangularLift 68 ((parseInts cert51.uText).getD #[]) ∧
  r51 = ((parseInts cert51.rText).getD #[]) ∧
  u51.size = 68*68 ∧ r51.size = 68*68 ∧ c51.size = 68*68 ∧ j51.size = 68*68 := by native_decide
end VascDerivativeTyped
