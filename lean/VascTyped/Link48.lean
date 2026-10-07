import VascTyped.Block48
import VascDerivative.Block48
import VascTyped.SourceLink
namespace VascDerivativeTyped
open VascDerivativeFull
theorem block48_source_link :
  u48 = triangularLift 69 ((parseInts cert48.uText).getD #[]) ∧
  r48 = ((parseInts cert48.rText).getD #[]) ∧
  u48.size = 69*69 ∧ r48.size = 69*69 ∧ c48.size = 69*69 ∧ j48.size = 69*69 := by native_decide
end VascDerivativeTyped
