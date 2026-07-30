import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceCellularNeurophysiologyFoundationCanonicalLaneLean

structure NeuralFieldEquation where
  spatialDomain : Type u
  timeDomain : Type v
  firingRateField : spatialDomain → ℝ
  synapticKernel : spatialDomain → spatialDomain → ℝ
  externalInput : spatialDomain → ℝ
  threshold : ℝ
  timeScale : ℝ
  propagationSpeed : ℝ
  wellPosedness : Prop
  patternFormation : Prop

structure NeuralFieldEvidence (N : NeuralFieldEquation) where
  wellPosednessClosed : N.wellPosedness
  patternFormationClosed : N.patternFormation

def NeuralFieldClosed (N : NeuralFieldEquation) : Prop :=
  N.wellPosedness ∧ N.patternFormation

theorem neural_field_closed_from_evidence (N : NeuralFieldEquation) (E : NeuralFieldEvidence N) :
    NeuralFieldClosed N := by
  exact And.intro E.wellPosednessClosed E.patternFormationClosed

end NeuroscienceCellularNeurophysiologyFoundationCanonicalLaneLean
end HautevilleHouse