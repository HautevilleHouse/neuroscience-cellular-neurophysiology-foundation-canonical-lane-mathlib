import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceCellularNeurophysiologyFoundationCanonicalLaneLean

structure HodgkinHuxleyFoundation where
  membraneCurrent : Prop
  potassiumCurrent : Prop
  sodiumCurrent : Prop
  leakCurrent : Prop
  gatingVariables : Prop
  timeDomain : Prop

structure HodgkinHuxleyEvidence (H : HodgkinHuxleyFoundation) where
  membraneCurrentClosed : H.membraneCurrent
  potassiumCurrentClosed : H.potassiumCurrent
  sodiumCurrentClosed : H.sodiumCurrent
  leakCurrentClosed : H.leakCurrent
  gatingVariablesClosed : H.gatingVariables
  timeDomainClosed : H.timeDomain

def HodgkinHuxleyClosed (H : HodgkinHuxleyFoundation) : Prop :=
  H.membraneCurrent ∧ H.potassiumCurrent ∧ H.sodiumCurrent ∧
  H.leakCurrent ∧ H.gatingVariables ∧ H.timeDomain

theorem hodgkin_huxley_closed_from_evidence (H : HodgkinHuxleyFoundation)
    (E : HodgkinHuxleyEvidence H) : HodgkinHuxleyClosed H := by
  exact And.intro E.membraneCurrentClosed
    (And.intro E.potassiumCurrentClosed
      (And.intro E.sodiumCurrentClosed
        (And.intro E.leakCurrentClosed
          (And.intro E.gatingVariablesClosed E.timeDomainClosed))))

end NeuroscienceCellularNeurophysiologyFoundationCanonicalLaneLean
end HautevilleHouse