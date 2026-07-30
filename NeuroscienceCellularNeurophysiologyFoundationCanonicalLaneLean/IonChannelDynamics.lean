import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceCellularNeurophysiologyFoundationCanonicalLaneLean

structure IonChannelPackage where
  channelTypes : Prop
  voltageGating : Prop
  ligandGating : Prop
  ionSelectivity : Prop
  conductance : Prop
  kinetics : Prop

structure IonChannelEvidence (I : IonChannelPackage) where
  channelTypesClosed : I.channelTypes
  voltageGatingClosed : I.voltageGating
  ligandGatingClosed : I.ligandGating
  ionSelectivityClosed : I.ionSelectivity
  conductanceClosed : I.conductance
  kineticsClosed : I.kinetics

def IonChannelClosed (I : IonChannelPackage) : Prop :=
  I.channelTypes ∧ I.voltageGating ∧ I.ligandGating ∧
  I.ionSelectivity ∧ I.conductance ∧ I.kinetics

theorem ion_channel_closed_from_evidence (I : IonChannelPackage)
    (E : IonChannelEvidence I) : IonChannelClosed I := by
  exact And.intro E.channelTypesClosed
    (And.intro E.voltageGatingClosed
      (And.intro E.ligandGatingClosed
        (And.intro E.ionSelectivityClosed
          (And.intro E.conductanceClosed E.kineticsClosed))))

end NeuroscienceCellularNeurophysiologyFoundationCanonicalLaneLean
end HautevilleHouse