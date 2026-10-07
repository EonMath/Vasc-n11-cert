import VascTyped.Block39
import VascDerivative.Block39
import VascTyped.SourceLink
namespace VascDerivativeTyped
open VascDerivativeFull
theorem block39_source_link :
  u39 = triangularLift 70 ((parseInts cert39.uText).getD #[]) ∧
  r39 = ((parseInts cert39.rText).getD #[]) ∧
  u39.size = 70*70 ∧ r39.size = 70*70 ∧ c39.size = 70*70 ∧ j39.size = 70*70 := by native_decide
end VascDerivativeTyped
