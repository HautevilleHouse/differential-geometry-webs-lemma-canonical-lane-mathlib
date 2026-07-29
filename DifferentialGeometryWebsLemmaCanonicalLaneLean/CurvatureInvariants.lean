import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometryWebsLemmaCanonicalLaneLean

structure CurvatureInvariants (M : Type u) [TopologicalSpace M] where
  web : WebStructure M
  normalCurvature : Type v
  geodesicCurvature : Type w
  gaussMap : Type x
  invariantsDefined : Prop
  invariantsBounded : Prop

structure CurvatureInvariantsEvidence (M : Type u) [TopologicalSpace M]
    (C : CurvatureInvariants M) where
  invariantsDefinedClosed : C.invariantsDefined
  invariantsBoundedClosed : C.invariantsBounded

def CurvatureInvariantsClosed (M : Type u) [TopologicalSpace M]
    (C : CurvatureInvariants M) : Prop :=
  C.invariantsDefined ∧ C.invariantsBounded

theorem curvature_invariants_closed_from_evidence
    (M : Type u) [TopologicalSpace M] (C : CurvatureInvariants M)
    (E : CurvatureInvariantsEvidence M C) : CurvatureInvariantsClosed M C := by
  exact And.intro E.invariantsDefinedClosed E.invariantsBoundedClosed

end DifferentialGeometryWebsLemmaCanonicalLaneLean
end HautevilleHouse