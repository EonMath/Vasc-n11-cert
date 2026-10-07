import VascTyped.Block56
import VascDerivative.Block56
import VascTyped.SourceLink
namespace VascDerivativeTyped
open VascDerivativeFull
theorem block56_source_link :
  u56 = triangularLift 76 ((parseInts cert56.uText).getD #[]) ∧
  r56 = ((parseInts cert56.rText).getD #[]) ∧
  u56.size = 76*76 ∧ r56.size = 76*76 ∧ c56.size = 76*76 ∧ j56.size = 76*76 := by native_decide
end VascDerivativeTyped
