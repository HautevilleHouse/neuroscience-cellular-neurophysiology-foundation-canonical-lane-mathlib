import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceCellularNeurophysiologyFoundationCanonicalLaneLean

structure HodgkinHuxleyPackage where
  membraneCapacitance : ℝ
  maxConductances : ℝ × ℝ × ℝ
  reversalPotentials : ℝ × ℝ × ℝ
  gatingDynamics : ℝ → ℝ × ℝ × ℝ  -- n, m, h
  initialConditions : ℝ × ℝ × ℝ × ℝ × ℝ × ℝ
  voltageClampData : Prop
  actionPotentialSimulated : Prop

structure HodgkinHuxleyEvidence (H : HodgkinHuxleyPackage) where
  voltageClampDataClosed : H.voltageClampData
  actionPotentialSimulatedClosed : H.actionPotentialSimulated

def HodgkinHuxleyClosed (H : HodgkinHuxleyPackage) : Prop :=
  H.voltageClampData ∧ H.actionPotentialSimulated

theorem hodgkin_huxley_closed_from_evidence (H : HodgkinHuxleyPackage) (E : HodgkinHuxleyEvidence H) :
    HodgkinHuxleyClosed H := by
  exact And.intro E.voltageClampDataClosed E.actionPotentialSimulatedClosed

end NeuroscienceCellularNeurophysiologyFoundationCanonicalLaneLean
end HautevilleHouse