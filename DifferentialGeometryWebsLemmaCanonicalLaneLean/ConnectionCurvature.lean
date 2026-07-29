import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometryWebsLemmaCanonicalLaneLean

structure ConnectionCurvaturePackage where
  principalBundle : Type u
  connectionForm : Type v
  curvatureForm : Type w
  covariantDerivative : Type x
  parallelTransport : Type y
  holonomyGroup : Type z
  connectionFormDefined : connectionForm
  curvatureFormDefined : curvatureForm
  covariantDerivativeDefined : covariantDerivative
  parallelTransportDefined : parallelTransport
  holonomyGroupDefined : holonomyGroup
  bianchiIdentity : Prop
  structureEquation : Prop
  bianchiIdentityDerived : bianchiIdentity
  structureEquationDerived : structureEquation

structure ConnectionCurvatureEvidence (C : ConnectionCurvaturePackage) where
  connectionFormClosed : C.connectionFormDefined
  curvatureFormClosed : C.curvatureFormDefined
  covariantDerivativeClosed : C.covariantDerivativeDefined
  parallelTransportClosed : C.parallelTransportDefined
  holonomyGroupClosed : C.holonomyGroupDefined
  bianchiIdentityClosed : C.bianchiIdentityDerived
  structureEquationClosed : C.structureEquationDerived

def ConnectionCurvatureClosed (C : ConnectionCurvaturePackage) : Prop :=
  C.bianchiIdentity ∧ C.structureEquation

theorem connection_curvature_closed_from_evidence (C : ConnectionCurvaturePackage) (E : ConnectionCurvatureEvidence C) :
    ConnectionCurvatureClosed C := by
  exact And.intro E.bianchiIdentityClosed E.structureEquationClosed

end DifferentialGeometryWebsLemmaCanonicalLaneLean
end HautevilleHouse