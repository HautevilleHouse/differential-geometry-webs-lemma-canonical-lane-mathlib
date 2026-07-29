import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometryWebsLemmaCanonicalLaneLean

structure CharacteristicClassesPackage where
  eulerClass : Type u
  pontryaginClass : Type v
  chernClass : Type w
  stiefelWhitneyClass : Type x
  eulerClassDefined : eulerClass
  pontryaginClassDefined : pontryaginClass
  chernClassDefined : chernClass
  stiefelWhitneyClassDefined : stiefelWhitneyClass
  chernWeilHomomorphism : Prop
  chernWeilHomomorphismDefined : chernWeilHomomorphism

structure CharacteristicClassesEvidence (C : CharacteristicClassesPackage) where
  eulerClassClosed : C.eulerClassDefined
  pontryaginClassClosed : C.pontryaginClassDefined
  chernClassClosed : C.chernClassDefined
  stiefelWhitneyClassClosed : C.stiefelWhitneyClassDefined
  chernWeilHomomorphismClosed : C.chernWeilHomomorphismDefined

def CharacteristicClassesClosed (C : CharacteristicClassesPackage) : Prop :=
  C.eulerClass ∧ C.pontryaginClass ∧ C.chernClass ∧ C.stiefelWhitneyClass ∧ C.chernWeilHomomorphism

theorem characteristic_classes_closed_from_evidence (C : CharacteristicClassesPackage) (E : CharacteristicClassesEvidence C) :
    CharacteristicClassesClosed C := by
  exact And.intro E.eulerClassClosed (And.intro E.pontryaginClassClosed (And.intro E.chernClassClosed (And.intro E.stiefelWhitneyClassClosed E.chernWeilHomomorphismClosed)))

end DifferentialGeometryWebsLemmaCanonicalLaneLean
end HautevilleHouse