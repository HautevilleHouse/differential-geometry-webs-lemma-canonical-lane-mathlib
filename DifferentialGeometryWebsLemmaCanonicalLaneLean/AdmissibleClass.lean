import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometryWebsLemmaCanonicalLaneLean

structure WebAdmittedObject where
  web : Type u
  webStructure : WebStructure
  webClosed : WebStructureClosed webStructure
  curvatureInvariants : CurvatureInvariants webStructure
  holonomy : HolonomyGroup webStructure
  index : IndexTheorem webStructure
  connection : ConnectionTheory webStructure
  conclusion : WebStructureClosed webStructure ∧ IndexTheoremClosed index

structure AdmissibleClass where
  object : WebAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  WebStructureClosed A.object.webStructure ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DifferentialGeometryWebsLemmaCanonicalLaneLean
end HautevilleHouse