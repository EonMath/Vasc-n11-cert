import VascTyped.Block82
import VascDerivative.Block82
import VascTyped.SourceLink
namespace VascDerivativeTyped
open VascDerivativeFull
theorem block82_source_link :
  u82 = triangularLift 35 ((parseInts cert82.uText).getD #[]) ∧
  r82 = ((parseInts cert82.rText).getD #[]) ∧
  u82.size = 35*35 ∧ r82.size = 35*35 ∧ c82.size = 35*35 ∧ j82.size = 35*35 := by native_decide
end VascDerivativeTyped
