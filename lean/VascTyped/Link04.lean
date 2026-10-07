import VascTyped.Block04
import VascDerivative.Block04
import VascTyped.SourceLink
namespace VascDerivativeTyped
open VascDerivativeFull
theorem block4_source_link :
  u4 = triangularLift 121 ((parseInts cert4.uText).getD #[]) ∧
  r4 = ((parseInts cert4.rText).getD #[]) ∧
  u4.size = 121*121 ∧ r4.size = 121*121 ∧ c4.size = 121*121 ∧ j4.size = 121*121 := by native_decide
end VascDerivativeTyped
