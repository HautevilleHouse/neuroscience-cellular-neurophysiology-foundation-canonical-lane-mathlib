import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceCellularNeurophysiologyFoundationCanonicalLaneLean

structure NeuralFieldTheoryPackage where
  neuralFieldDynamics : Type u
  synapticKernel : Type v
  firingRateFunction : Type w
  bumpSolutionExistence : Prop
  patternFormation : Prop
  travelingWaves : Prop

structure NeuralFieldTheoryEvidence (N : NeuralFieldTheoryPackage) where
  bumpSolutionExistenceClosed : N.bumpSolutionExistence
  patternFormationClosed : N.patternFormation
  travelingWavesClosed : N.travelingWaves

def NeuralFieldTheoryClosed (N : NeuralFieldTheoryPackage) : Prop :=
  N.bumpSolutionExistence ∧ N.patternFormation ∧ N.travelingWaves

theorem neural_field_theory_closed_from_evidence
    (N : NeuralFieldTheoryPackage) (E : NeuralFieldTheoryEvidence N) :
    NeuralFieldTheoryClosed N := by
  exact And.intro E.bumpSolutionExistenceClosed
    (And.intro E.patternFormationClosed E.travelingWavesClosed)

end NeuroscienceCellularNeurophysiologyFoundationCanonicalLaneLean
end HautevilleHouse