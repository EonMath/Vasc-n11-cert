import VascTyped.Block09
import VascDerivative.Block09
import VascTyped.SourceLink
namespace VascDerivativeTyped
open VascDerivativeFull
theorem block9_source_link :
  u9 = triangularLift 121 ((parseInts cert9.uText).getD #[]) ∧
  r9 = ((parseInts cert9.rText).getD #[]) ∧
  u9.size = 121*121 ∧ r9.size = 121*121 ∧ c9.size = 121*121 ∧ j9.size = 121*121 := by native_decide
end VascDerivativeTyped
