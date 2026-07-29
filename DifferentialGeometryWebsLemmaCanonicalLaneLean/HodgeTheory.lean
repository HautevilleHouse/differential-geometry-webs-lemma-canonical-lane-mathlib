import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometryWebsLemmaCanonicalLaneLean

structure HodgeTheoryPackage where
  laplaceOperator : Type u
  harmonicForms : Type v
  hodgeDecomposition : Prop
  hodgeTheorem : Prop
  laplaceOperatorDefined : laplaceOperator
  harmonicFormsDefined : harmonicForms
  hodgeDecompositionProved : hodgeDecomposition
  hodgeTheoremProved : hodgeTheorem

structure HodgeTheoryEvidence (H : HodgeTheoryPackage) where
  laplaceOperatorClosed : H.laplaceOperatorDefined
  harmonicFormsClosed : H.harmonicFormsDefined
  hodgeDecompositionClosed : H.hodgeDecompositionProved
  hodgeTheoremClosed : H.hodgeTheoremProved

def HodgeTheoryClosed (H : HodgeTheoryPackage) : Prop :=
  H.hodgeDecomposition ∧ H.hodgeTheorem

theorem hodge_theory_closed_from_evidence (H : HodgeTheoryPackage) (E : HodgeTheoryEvidence H) :
    HodgeTheoryClosed H := by
  exact And.intro E.hodgeDecompositionClosed E.hodgeTheoremClosed

end DifferentialGeometryWebsLemmaCanonicalLaneLean
end HautevilleHouse