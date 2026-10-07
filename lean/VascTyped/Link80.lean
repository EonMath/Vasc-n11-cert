import VascTyped.Block80
import VascDerivative.Block80
import VascTyped.SourceLink
namespace VascDerivativeTyped
open VascDerivativeFull
theorem block80_source_link :
  u80 = triangularLift 35 ((parseInts cert80.uText).getD #[]) ∧
  r80 = ((parseInts cert80.rText).getD #[]) ∧
  u80.size = 35*35 ∧ r80.size = 35*35 ∧ c80.size = 35*35 ∧ j80.size = 35*35 := by native_decide
end VascDerivativeTyped
