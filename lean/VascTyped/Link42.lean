import VascTyped.Block42
import VascDerivative.Block42
import VascTyped.SourceLink
namespace VascDerivativeTyped
open VascDerivativeFull
theorem block42_source_link :
  u42 = triangularLift 30 ((parseInts cert42.uText).getD #[]) ∧
  r42 = ((parseInts cert42.rText).getD #[]) ∧
  u42.size = 30*30 ∧ r42.size = 30*30 ∧ c42.size = 30*30 ∧ j42.size = 30*30 := by native_decide
end VascDerivativeTyped
