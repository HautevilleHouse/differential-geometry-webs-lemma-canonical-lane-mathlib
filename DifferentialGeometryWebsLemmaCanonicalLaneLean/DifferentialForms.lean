import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometryWebsLemmaCanonicalLaneLean

structure DifferentialFormsPackage where
  exteriorAlgebra : Type u
  wedgeProduct : Type v
  exteriorDerivative : Type w
  hodgeStar : Type x
  closedForms : Prop
  exactForms : Prop
  deRhamCohomology : Prop
  wedgeProductDefined : wedgeProduct
  exteriorDerivativeDefined : exteriorDerivative
  hodgeStarDefined : hodgeStar
  closedFormsDefined : closedForms
  exactFormsDefined : exactForms
  deRhamCohomologyDefined : deRhamCohomology

structure DifferentialFormsEvidence (P : DifferentialFormsPackage) where
  wedgeProductClosed : P.wedgeProductDefined
  exteriorDerivativeClosed : P.exteriorDerivativeDefined
  hodgeStarClosed : P.hodgeStarDefined
  closedFormsClosed : P.closedFormsDefined
  exactFormsClosed : P.exactFormsDefined
  deRhamCohomologyClosed : P.deRhamCohomologyDefined

def DifferentialFormsClosed (P : DifferentialFormsPackage) : Prop :=
  P.closedForms ∧ P.exactForms ∧ P.deRhamCohomology

theorem differential_forms_closed_from_evidence (P : DifferentialFormsPackage) (E : DifferentialFormsEvidence P) :
    DifferentialFormsClosed P := by
  exact And.intro E.closedFormsClosed (And.intro E.exactFormsClosed E.deRhamCohomologyClosed)

end DifferentialGeometryWebsLemmaCanonicalLaneLean
end HautevilleHouse