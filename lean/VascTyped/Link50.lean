import VascTyped.Block50
import VascDerivative.Block50
import VascTyped.SourceLink
namespace VascDerivativeTyped
open VascDerivativeFull
theorem block50_source_link :
  u50 = triangularLift 70 ((parseInts cert50.uText).getD #[]) ∧
  r50 = ((parseInts cert50.rText).getD #[]) ∧
  u50.size = 70*70 ∧ r50.size = 70*70 ∧ c50.size = 70*70 ∧ j50.size = 70*70 := by native_decide
end VascDerivativeTyped
