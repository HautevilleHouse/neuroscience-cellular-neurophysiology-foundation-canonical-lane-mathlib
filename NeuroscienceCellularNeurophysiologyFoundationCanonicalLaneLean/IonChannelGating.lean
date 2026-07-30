import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceCellularNeurophysiologyFoundationCanonicalLaneLean

structure IonChannelFamily where
  channelType : String
  conductance : ℝ
  activationVariable : ℝ → ℝ
  inactivationVariable : ℝ → ℝ
  voltageDependence : ℝ → ℝ
  gateKinetics : Prop
  selectivity : Prop
  phosphorylationModulation : Prop

structure IonChannelEvidence (I : IonChannelFamily) where
  gateKineticsClosed : I.gateKinetics
  selectivityClosed : I.selectivity
  phosphorylationModulationClosed : I.phosphorylationModulation

def IonChannelClosed (I : IonChannelFamily) : Prop :=
  I.gateKinetics ∧ I.selectivity ∧ I.phosphorylationModulation

theorem ion_channel_closed_from_evidence (I : IonChannelFamily) (E : IonChannelEvidence I) :
    IonChannelClosed I := by
  exact And.intro E.gateKineticsClosed
    (And.intro E.selectivityClosed E.phosphorylationModulationClosed)

end NeuroscienceCellularNeurophysiologyFoundationCanonicalLaneLean
end HautevilleHouse