import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometryWebsLemmaCanonicalLaneLean

structure IndexTheoremPackage where
  ellipticOperator : Type u
  index : Type v
  topologicalIndex : Type w
  analyticIndex : Type x
  ellipticOperatorDefined : ellipticOperator
  indexDefined : index
  topologicalIndexDefined : topologicalIndex
  analyticIndexDefined : analyticIndex
  indexTheorem : Prop
  indexTheoremProved : indexTheorem

structure IndexTheoremEvidence (I : IndexTheoremPackage) where
  ellipticOperatorClosed : I.ellipticOperatorDefined
  indexClosed : I.indexDefined
  topologicalIndexClosed : I.topologicalIndexDefined
  analyticIndexClosed : I.analyticIndexDefined
  indexTheoremClosed : I.indexTheoremProved

def IndexTheoremClosed (I : IndexTheoremPackage) : Prop :=
  I.indexTheorem

theorem index_theorem_closed_from_evidence (I : IndexTheoremPackage) (E : IndexTheoremEvidence I) :
    IndexTheoremClosed I := by
  exact E.indexTheoremClosed

end DifferentialGeometryWebsLemmaCanonicalLaneLean
end HautevilleHouse