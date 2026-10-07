import VascTyped.Block45
import VascDerivative.Block45
import VascTyped.SourceLink
namespace VascDerivativeTyped
open VascDerivativeFull
theorem block45_source_link :
  u45 = triangularLift 70 ((parseInts cert45.uText).getD #[]) ∧
  r45 = ((parseInts cert45.rText).getD #[]) ∧
  u45.size = 70*70 ∧ r45.size = 70*70 ∧ c45.size = 70*70 ∧ j45.size = 70*70 := by native_decide
end VascDerivativeTyped
