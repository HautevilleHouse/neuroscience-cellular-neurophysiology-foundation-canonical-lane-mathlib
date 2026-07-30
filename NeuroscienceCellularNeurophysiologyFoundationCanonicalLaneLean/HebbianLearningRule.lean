import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceCellularNeurophysiologyFoundationCanonicalLaneLean

structure HebbianSynapse where
  preSynapticActivity : ℝ
  postSynapticActivity : ℝ
  learningRate : ℝ
  weightUpdate : ℝ → ℝ → ℝ
  weightBounds : ℝ × ℝ
  correlation : Prop
  stabilityCondition : Prop

structure HebbianEvidence (S : HebbianSynapse) where
  correlationClosed : S.correlation
  stabilityConditionClosed : S.stabilityCondition

def HebbianClosed (S : HebbianSynapse) : Prop :=
  S.correlation ∧ S.stabilityCondition

theorem hebbian_closed_from_evidence (S : HebbianSynapse) (E : HebbianEvidence S) :
    HebbianClosed S := by
  exact And.intro E.correlationClosed E.stabilityConditionClosed

end NeuroscienceCellularNeurophysiologyFoundationCanonicalLaneLean
end HautevilleHouse