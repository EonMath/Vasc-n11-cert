import VascTyped.Block90
import VascDerivative.Block90
import VascTyped.SourceLink
namespace VascDerivativeTyped
open VascDerivativeFull
theorem block90_source_link :
  u90 = triangularLift 10 ((parseInts cert90.uText).getD #[]) ∧
  r90 = ((parseInts cert90.rText).getD #[]) ∧
  u90.size = 10*10 ∧ r90.size = 10*10 ∧ c90.size = 10*10 ∧ j90.size = 10*10 := by native_decide
end VascDerivativeTyped
