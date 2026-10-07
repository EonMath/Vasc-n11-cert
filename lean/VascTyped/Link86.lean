import VascTyped.Block86
import VascDerivative.Block86
import VascTyped.SourceLink
namespace VascDerivativeTyped
open VascDerivativeFull
theorem block86_source_link :
  u86 = triangularLift 35 ((parseInts cert86.uText).getD #[]) ∧
  r86 = ((parseInts cert86.rText).getD #[]) ∧
  u86.size = 35*35 ∧ r86.size = 35*35 ∧ c86.size = 35*35 ∧ j86.size = 35*35 := by native_decide
end VascDerivativeTyped
