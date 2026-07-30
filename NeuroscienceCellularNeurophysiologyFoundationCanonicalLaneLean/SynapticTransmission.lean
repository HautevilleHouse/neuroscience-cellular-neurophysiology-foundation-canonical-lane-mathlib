import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceCellularNeurophysiologyFoundationCanonicalLaneLean

structure SynapticTransmissionModel where
  neurotransmitterRelease : ℝ → ℝ
  receptorBinding : ℝ → ℝ
  postsynapticPotential : ℝ → ℝ
  vesicleDynamics : Prop
  receptorDesensitization : Prop
  quantalRelease : Prop

structure SynapticTransmissionEvidence (S : SynapticTransmissionModel) where
  vesicleDynamicsClosed : S.vesicleDynamics
  receptorDesensitizationClosed : S.receptorDesensitization
  quantalReleaseClosed : S.quantalRelease

def SynapticTransmissionClosed (S : SynapticTransmissionModel) : Prop :=
  S.vesicleDynamics ∧ S.receptorDesensitization ∧ S.quantalRelease

theorem synaptic_transmission_closed_from_evidence (S : SynapticTransmissionModel) (E : SynapticTransmissionEvidence S) :
    SynapticTransmissionClosed S := by
  exact And.intro E.vesicleDynamicsClosed
    (And.intro E.receptorDesensitizationClosed E.quantalReleaseClosed)

end NeuroscienceCellularNeurophysiologyFoundationCanonicalLaneLean
end HautevilleHouse