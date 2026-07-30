import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceCellularNeurophysiologyFoundationCanonicalLaneLean

structure NeuronMembranePotentialPackage where
  restingPotential : ℝ
  thresholdPotential : ℝ
  membraneCapacitance : ℝ
  ionChannelDensity : ℝ
  stimulusApplied : Prop
  actionPotentialTriggered : Prop

structure NeuronMembranePotentialEvidence (N : NeuronMembranePotentialPackage) where
  restingPotentialClosed : N.restingPotential = -70.0
  thresholdPotentialClosed : N.thresholdPotential = -55.0
  membraneCapacitanceClosed : N.membraneCapacitance = 1.0
  ionChannelDensityClosed : N.ionChannelDensity > 0.0
  stimulusAppliedClosed : N.stimulusApplied → N.actionPotentialTriggered

def NeuronMembranePotentialClosed (N : NeuronMembranePotentialPackage) : Prop :=
  N.restingPotential = -70.0 ∧ N.thresholdPotential = -55.0 ∧ N.membraneCapacitance = 1.0 ∧
  N.ionChannelDensity > 0.0 ∧ (N.stimulusApplied → N.actionPotentialTriggered)

theorem neuron_membrane_potential_closed_from_evidence (N : NeuronMembranePotentialPackage)
    (E : NeuronMembranePotentialEvidence N) : NeuronMembranePotentialClosed N := by
  exact And.intro E.restingPotentialClosed
    (And.intro E.thresholdPotentialClosed
      (And.intro E.membraneCapacitanceClosed
        (And.intro E.ionChannelDensityClosed E.stimulusAppliedClosed)))

end NeuroscienceCellularNeurophysiologyFoundationCanonicalLaneLean
end HautevilleHouse
