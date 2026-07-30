import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceCellularNeurophysiologyFoundationCanonicalLaneLean

structure NeurotransmitterDynamicsPackage where
  vesicleRelease : Type u
  receptorBinding : Type v
  reuptakeMechanism : Type w
  quantalRelease : Prop
  receptorActivation : Prop
  clearanceDynamics : Prop

structure NeurotransmitterDynamicsEvidence (N : NeurotransmitterDynamicsPackage) where
  quantalReleaseClosed : N.quantalRelease
  receptorActivationClosed : N.receptorActivation
  clearanceDynamicsClosed : N.clearanceDynamics

def NeurotransmitterDynamicsClosed (N : NeurotransmitterDynamicsPackage) : Prop :=
  N.quantalRelease ∧ N.receptorActivation ∧ N.clearanceDynamics

theorem neurotransmitter_dynamics_closed_from_evidence
    (N : NeurotransmitterDynamicsPackage)
    (E : NeurotransmitterDynamicsEvidence N) :
    NeurotransmitterDynamicsClosed N := by
  exact And.intro E.quantalReleaseClosed
    (And.intro E.receptorActivationClosed E.clearanceDynamicsClosed)

end NeuroscienceCellularNeurophysiologyFoundationCanonicalLaneLean
end HautevilleHouse