import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceCellularNeurophysiologyFoundationCanonicalLaneLean

structure HebbianSynapticPlasticityPackage where
  presynapticActivity : Type u
  postsynapticActivity : Type v
  synapticWeight : Type w
  spikeTimingDependence : Prop
  weightUpdateRule : Prop
  longTermPotentiation : Prop
  longTermDepression : Prop

structure HebbianSynapticPlasticityEvidence (H : HebbianSynapticPlasticityPackage) where
  spikeTimingDependenceClosed : H.spikeTimingDependence
  weightUpdateRuleClosed : H.weightUpdateRule
  longTermPotentiationClosed : H.longTermPotentiation
  longTermDepressionClosed : H.longTermDepression

def HebbianSynapticPlasticityClosed (H : HebbianSynapticPlasticityPackage) : Prop :=
  H.spikeTimingDependence ∧ H.weightUpdateRule ∧
  H.longTermPotentiation ∧ H.longTermDepression

theorem hebbian_synaptic_plasticity_closed_from_evidence
    (H : HebbianSynapticPlasticityPackage)
    (E : HebbianSynapticPlasticityEvidence H) :
    HebbianSynapticPlasticityClosed H := by
  exact And.intro E.spikeTimingDependenceClosed
    (And.intro E.weightUpdateRuleClosed
      (And.intro E.longTermPotentiationClosed E.longTermDepressionClosed))

end NeuroscienceCellularNeurophysiologyFoundationCanonicalLaneLean
end HautevilleHouse