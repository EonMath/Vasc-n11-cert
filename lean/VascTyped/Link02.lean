import VascTyped.Block02
import VascDerivative.Block02
import VascTyped.SourceLink
namespace VascDerivativeTyped
open VascDerivativeFull
theorem block2_source_link :
  u2 = triangularLift 118 ((parseInts cert2.uText).getD #[]) ∧
  r2 = ((parseInts cert2.rText).getD #[]) ∧
  u2.size = 118*118 ∧ r2.size = 118*118 ∧ c2.size = 118*118 ∧ j2.size = 118*118 := by native_decide
end VascDerivativeTyped
