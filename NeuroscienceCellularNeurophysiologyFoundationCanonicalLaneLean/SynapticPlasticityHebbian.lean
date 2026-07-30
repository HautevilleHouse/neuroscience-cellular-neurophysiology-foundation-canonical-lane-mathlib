import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceCellularNeurophysiologyFoundationCanonicalLaneLean

structure HebbianPlasticityPackage where
  presynapticActivity : Type u
  postsynapticActivity : Type v
  synapticWeight : Type w
  hebbRule : Prop
  longTermPotentiation : Prop
  longTermDepression : Prop
  weightBounds : Prop

structure HebbianPlasticityEvidence (P : HebbianPlasticityPackage) where
  hebbRuleClosed : P.hebbRule
  longTermPotentiationClosed : P.longTermPotentiation
  longTermDepressionClosed : P.longTermDepression
  weightBoundsClosed : P.weightBounds

def HebbianPlasticityClosed (P : HebbianPlasticityPackage) : Prop :=
  P.hebbRule ∧ P.longTermPotentiation ∧ P.longTermDepression ∧ P.weightBounds

theorem hebbian_plasticity_closed_from_evidence
    (P : HebbianPlasticityPackage) (E : HebbianPlasticityEvidence P) :
    HebbianPlasticityClosed P := by
  exact And.intro E.hebbRuleClosed
    (And.intro E.longTermPotentiationClosed
      (And.intro E.longTermDepressionClosed E.weightBoundsClosed))

end NeuroscienceCellularNeurophysiologyFoundationCanonicalLaneLean
end HautevilleHouse
