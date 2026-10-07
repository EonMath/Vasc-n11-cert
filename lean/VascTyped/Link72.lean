import VascTyped.Block72
import VascDerivative.Block72
import VascTyped.SourceLink
namespace VascDerivativeTyped
open VascDerivativeFull
theorem block72_source_link :
  u72 = triangularLift 35 ((parseInts cert72.uText).getD #[]) ∧
  r72 = ((parseInts cert72.rText).getD #[]) ∧
  u72.size = 35*35 ∧ r72.size = 35*35 ∧ c72.size = 35*35 ∧ j72.size = 35*35 := by native_decide
end VascDerivativeTyped
