import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometryWebsLemmaCanonicalLaneLean

structure Holonomy (M : Type u) [TopologicalSpace M] where
  web : WebStructure M
  connection : ConnectionTheory M
  holonomyLieGroup : Type v
  holonomyAlgebra : Type w
  holonomyClosed : Prop
  ambroseSinger : Prop
  reductionTheorem : Prop

structure HolonomyEvidence (M : Type u) [TopologicalSpace M] (H : Holonomy M) where
  holonomyClosedClosed : H.holonomyClosed
  ambroseSingerClosed : H.ambroseSinger
  reductionTheoremClosed : H.reductionTheorem

def HolonomyClosed (M : Type u) [TopologicalSpace M] (H : Holonomy M) : Prop :=
  H.holonomyClosed ∧ H.ambroseSinger ∧ H.reductionTheorem

theorem holonomy_closed_from_evidence
    (M : Type u) [TopologicalSpace M] (H : Holonomy M) (E : HolonomyEvidence M H) :
    HolonomyClosed M H := by
  exact And.intro E.holonomyClosedClosed
    (And.intro E.ambroseSingerClosed E.reductionTheoremClosed)

end DifferentialGeometryWebsLemmaCanonicalLaneLean
end HautevilleHouse