import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceCellularNeurophysiologyFoundationCanonicalLaneLean

structure NeurotransmitterReleasePackage where
  vesicleDocking : Type u
  calciumInflux : Type v
  exocytosis : Type w
  vesicleFusion : Prop
  quantalRelease : Prop
  releaseProbability : Prop

structure NeurotransmitterReleaseEvidence (P : NeurotransmitterReleasePackage) where
  vesicleFusionClosed : P.vesicleFusion
  quantalReleaseClosed : P.quantalRelease
  releaseProbabilityClosed : P.releaseProbability

def NeurotransmitterReleaseClosed (P : NeurotransmitterReleasePackage) : Prop :=
  P.vesicleFusion ∧ P.quantalRelease ∧ P.releaseProbability

theorem neurotransmitter_release_closed_from_evidence
    (P : NeurotransmitterReleasePackage) (E : NeurotransmitterReleaseEvidence P) :
    NeurotransmitterReleaseClosed P := by
  exact And.intro E.vesicleFusionClosed
    (And.intro E.quantalReleaseClosed E.releaseProbabilityClosed)

end NeuroscienceCellularNeurophysiologyFoundationCanonicalLaneLean
end HautevilleHouse
