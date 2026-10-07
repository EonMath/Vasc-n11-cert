import VascTyped.Block44
import VascDerivative.Block44
import VascTyped.SourceLink
namespace VascDerivativeTyped
open VascDerivativeFull
theorem block44_source_link :
  u44 = triangularLift 69 ((parseInts cert44.uText).getD #[]) ∧
  r44 = ((parseInts cert44.rText).getD #[]) ∧
  u44.size = 69*69 ∧ r44.size = 69*69 ∧ c44.size = 69*69 ∧ j44.size = 69*69 := by native_decide
end VascDerivativeTyped
