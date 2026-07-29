import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometryWebsLemmaCanonicalLaneLean

structure ConnectionTheory where
  manifold : WebManifold
  connection : Type w
  parallelTransport : Type x
  holonomyGroup : Type y
  flatCondition : Prop
  webCompatibility : Prop
  flatConditionTerm : flatCondition
  webCompatibilityTerm : webCompatibility

def ConnectionClosed (C : ConnectionTheory) : Prop :=
  C.flatCondition ∧ C.webCompatibility

theorem connection_closed_from_evidence (C : ConnectionTheory) : ConnectionClosed C :=
  And.intro C.flatConditionTerm C.webCompatibilityTerm

end DifferentialGeometryWebsLemmaCanonicalLaneLean
end HautevilleHouse