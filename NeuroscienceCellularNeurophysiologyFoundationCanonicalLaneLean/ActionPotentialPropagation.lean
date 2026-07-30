import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceCellularNeurophysiologyFoundationCanonicalLaneLean

structure ActionPotentialModel where
  membranePotential : ℝ → ℝ
  sodiumChannelState : ℝ → ℝ
  potassiumChannelState : ℝ → ℝ
  axialResistance : ℝ
  cableEquation : Prop
  propagationVelocity : Prop
  thresholdExcitation : Prop
  refractoriness : Prop

structure ActionPotentialEvidence (A : ActionPotentialModel) where
  cableEquationClosed : A.cableEquation
  propagationVelocityClosed : A.propagationVelocity
  thresholdExcitationClosed : A.thresholdExcitation
  refractorinessClosed : A.refractoriness

def ActionPotentialClosed (A : ActionPotentialModel) : Prop :=
  A.cableEquation ∧ A.propagationVelocity ∧ A.thresholdExcitation ∧ A.refractoriness

theorem action_potential_closed_from_evidence (A : ActionPotentialModel) (E : ActionPotentialEvidence A) :
    ActionPotentialClosed A := by
  exact And.intro E.cableEquationClosed
    (And.intro E.propagationVelocityClosed
      (And.intro E.thresholdExcitationClosed E.refractorinessClosed))

end NeuroscienceCellularNeurophysiologyFoundationCanonicalLaneLean
end HautevilleHouse