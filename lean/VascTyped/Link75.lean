import VascTyped.Block75
import VascDerivative.Block75
import VascTyped.SourceLink
namespace VascDerivativeTyped
open VascDerivativeFull
theorem block75_source_link :
  u75 = triangularLift 32 ((parseInts cert75.uText).getD #[]) ∧
  r75 = ((parseInts cert75.rText).getD #[]) ∧
  u75.size = 32*32 ∧ r75.size = 32*32 ∧ c75.size = 32*32 ∧ j75.size = 32*32 := by native_decide
end VascDerivativeTyped
