import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DifferentialGeometryWebsLemmaCanonicalLaneLean.WebStructure

namespace HautevilleHouse
namespace DifferentialGeometryWebsLemmaCanonicalLaneLean

structure HolonomyGroup (W : WebStructure) where
  basePoint : W.incidenceGraph
  group : Type u
  groupMultiplication : group → group → group
  groupInverse : group → group
  groupIdentity : group
  groupLaws : Group group
  connectionCompatible : Prop
  loopMapping : (W.faces → W.faces) → group
  faithfulMapping : Prop

structure HolonomyGroupEvidence {W : WebStructure} (H : HolonomyGroup W) where
  connectionCompatibleClosed : H.connectionCompatible
  faithfulMappingClosed : H.faithfulMapping

def HolonomyGroupClosed {W : WebStructure} (H : HolonomyGroup W) : Prop :=
  H.connectionCompatible ∧ H.faithfulMapping

theorem holonomy_group_closed_from_evidence {W : WebStructure} (H : HolonomyGroup W)
    (E : HolonomyGroupEvidence H) : HolonomyGroupClosed H := by
  exact And.intro E.connectionCompatibleClosed E.faithfulMappingClosed

end DifferentialGeometryWebsLemmaCanonicalLaneLean
end HautevilleHouse