import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceCellularNeurophysiologyFoundationCanonicalLaneLean

structure HebbianPlasticityPackage where
  presynapticActivity : ℝ → ℝ
  postsynapticActivity : ℝ → ℝ
  synapticWeight : ℝ → ℝ
  learningRate : ℝ
  weightDynamics : Prop
  longTermPotentiation : Prop
  longTermDepression : Prop
  spikeTimingDependent : Prop

structure HebbianPlasticityEvidence (H : HebbianPlasticityPackage) where
  weightDynamicsClosed : H.weightDynamics
  longTermPotentiationClosed : H.longTermPotentiation
  longTermDepressionClosed : H.longTermDepression
  spikeTimingDependentClosed : H.spikeTimingDependent

def HebbianPlasticityClosed (H : HebbianPlasticityPackage) : Prop :=
  H.weightDynamics ∧ H.longTermPotentiation ∧ H.longTermDepression ∧ H.spikeTimingDependent

theorem hebbian_plasticity_closed_from_evidence (H : HebbianPlasticityPackage) (E : HebbianPlasticityEvidence H) :
    HebbianPlasticityClosed H := by
  exact And.intro E.weightDynamicsClosed
    (And.intro E.longTermPotentiationClosed
      (And.intro E.longTermDepressionClosed E.spikeTimingDependentClosed))

end NeuroscienceCellularNeurophysiologyFoundationCanonicalLaneLean
end HautevilleHouse