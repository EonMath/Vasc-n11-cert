import VascTyped.Block91
import VascDerivative.Block91
import VascTyped.SourceLink
namespace VascDerivativeTyped
open VascDerivativeFull
theorem block91_source_link :
  u91 = triangularLift 10 ((parseInts cert91.uText).getD #[]) ∧
  r91 = ((parseInts cert91.rText).getD #[]) ∧
  u91.size = 10*10 ∧ r91.size = 10*10 ∧ c91.size = 10*10 ∧ j91.size = 10*10 := by native_decide
end VascDerivativeTyped
