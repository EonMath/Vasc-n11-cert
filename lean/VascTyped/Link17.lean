import VascTyped.Block17
import VascDerivative.Block17
import VascTyped.SourceLink
namespace VascDerivativeTyped
open VascDerivativeFull
theorem block17_source_link :
  u17 = triangularLift 121 ((parseInts cert17.uText).getD #[]) ∧
  r17 = ((parseInts cert17.rText).getD #[]) ∧
  u17.size = 121*121 ∧ r17.size = 121*121 ∧ c17.size = 121*121 ∧ j17.size = 121*121 := by native_decide
end VascDerivativeTyped
