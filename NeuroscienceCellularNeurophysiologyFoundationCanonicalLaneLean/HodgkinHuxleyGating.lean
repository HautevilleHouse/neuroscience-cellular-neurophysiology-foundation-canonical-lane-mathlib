import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceCellularNeurophysiologyFoundationCanonicalLaneLean

structure HodgkinHuxleyGatingPackage where
  membranePotential : Type u
  sodiumChannelActivation : Type v
  sodiumChannelInactivation : Type w
  potassiumChannelActivation : Type x
  gatingVariableDynamics : Prop
  rateFunctions : Prop
  actionPotentialGeneration : Prop

structure HodgkinHuxleyGatingEvidence (H : HodgkinHuxleyGatingPackage) where
  gatingVariableDynamicsClosed : H.gatingVariableDynamics
  rateFunctionsClosed : H.rateFunctions
  actionPotentialGenerationClosed : H.actionPotentialGeneration

def HodgkinHuxleyGatingClosed (H : HodgkinHuxleyGatingPackage) : Prop :=
  H.gatingVariableDynamics ∧ H.rateFunctions ∧ H.actionPotentialGeneration

theorem hodgkin_huxley_gating_closed_from_evidence
    (H : HodgkinHuxleyGatingPackage) (E : HodgkinHuxleyGatingEvidence H) :
    HodgkinHuxleyGatingClosed H := by
  exact And.intro E.gatingVariableDynamicsClosed
    (And.intro E.rateFunctionsClosed E.actionPotentialGenerationClosed)

end NeuroscienceCellularNeurophysiologyFoundationCanonicalLaneLean
end HautevilleHouse