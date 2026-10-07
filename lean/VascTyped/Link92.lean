import VascTyped.Block92
import VascDerivative.Block92
import VascTyped.SourceLink
namespace VascDerivativeTyped
open VascDerivativeFull
theorem block92_source_link :
  u92 = triangularLift 10 ((parseInts cert92.uText).getD #[]) ∧
  r92 = ((parseInts cert92.rText).getD #[]) ∧
  u92.size = 10*10 ∧ r92.size = 10*10 ∧ c92.size = 10*10 ∧ j92.size = 10*10 := by native_decide
end VascDerivativeTyped
