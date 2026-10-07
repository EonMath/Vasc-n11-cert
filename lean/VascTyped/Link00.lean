import VascTyped.Block00
import VascDerivative.Block00
import VascTyped.SourceLink
namespace VascDerivativeTyped
open VascDerivativeFull
theorem block0_source_link :
  u0 = triangularLift 184 ((parseInts cert0.uText).getD #[]) ∧
  r0 = ((parseInts cert0.rText).getD #[]) ∧
  u0.size = 184*184 ∧ r0.size = 184*184 ∧ c0.size = 184*184 ∧ j0.size = 184*184 := by native_decide
end VascDerivativeTyped
