import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometryWebsLemmaCanonicalLaneLean

structure WebManifold where
  carrier : Type u
  topology : TopologicalSpace carrier
  smoothStructure : SmoothManifoldWithCorners 𝓘(ℝ, ℝ³) carrier
  webStructure : Prod (carrier → carrier → ℝ) (carrier → carrier → ℝ)
  webCondition : Prop
  webConditionTerm : webCondition

structure WebPoint where
  manifold : WebManifold
  point : manifold.carrier

end DifferentialGeometryWebsLemmaCanonicalLaneLean
end HautevilleHouse