import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometryWebsLemmaCanonicalLaneLean

structure SymplecticGeometryPackage where
  symplecticForm : Type u
  hamiltonianVectorField : Type v
  poissonBracket : Type w
  liouvilleTheorem : Prop
  darbouxTheorem : Prop
  symplecticFormDefined : symplecticForm
  hamiltonianVectorFieldDefined : hamiltonianVectorField
  poissonBracketDefined : poissonBracket
  liouvilleTheoremProved : liouvilleTheorem
  darbouxTheoremProved : darbouxTheorem

structure SymplecticGeometryEvidence (S : SymplecticGeometryPackage) where
  symplecticFormClosed : S.symplecticFormDefined
  hamiltonianVectorFieldClosed : S.hamiltonianVectorFieldDefined
  poissonBracketClosed : S.poissonBracketDefined
  liouvilleTheoremClosed : S.liouvilleTheoremProved
  darbouxTheoremClosed : S.darbouxTheoremProved

def SymplecticGeometryClosed (S : SymplecticGeometryPackage) : Prop :=
  S.liouvilleTheorem ∧ S.darbouxTheorem

theorem symplectic_geometry_closed_from_evidence (S : SymplecticGeometryPackage) (E : SymplecticGeometryEvidence S) :
    SymplecticGeometryClosed S := by
  exact And.intro E.liouvilleTheoremClosed E.darbouxTheoremClosed

end DifferentialGeometryWebsLemmaCanonicalLaneLean
end HautevilleHouse