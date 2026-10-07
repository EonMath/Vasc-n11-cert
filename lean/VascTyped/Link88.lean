import VascTyped.Block88
import VascDerivative.Block88
import VascTyped.SourceLink
namespace VascDerivativeTyped
open VascDerivativeFull
theorem block88_source_link :
  u88 = triangularLift 35 ((parseInts cert88.uText).getD #[]) ∧
  r88 = ((parseInts cert88.rText).getD #[]) ∧
  u88.size = 35*35 ∧ r88.size = 35*35 ∧ c88.size = 35*35 ∧ j88.size = 35*35 := by native_decide
end VascDerivativeTyped
