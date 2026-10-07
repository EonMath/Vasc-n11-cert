import VascTyped.Block10
import VascDerivative.Block10
import VascTyped.SourceLink
namespace VascDerivativeTyped
open VascDerivativeFull
theorem block10_source_link :
  u10 = triangularLift 121 ((parseInts cert10.uText).getD #[]) ∧
  r10 = ((parseInts cert10.rText).getD #[]) ∧
  u10.size = 121*121 ∧ r10.size = 121*121 ∧ c10.size = 121*121 ∧ j10.size = 121*121 := by native_decide
end VascDerivativeTyped
