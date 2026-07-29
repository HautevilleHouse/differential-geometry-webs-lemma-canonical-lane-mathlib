import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DifferentialGeometryWebsLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometryWebsLemmaCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end DifferentialGeometryWebsLemmaCanonicalLaneLean
end HautevilleHouse