import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceCellularNeurophysiologyFoundationCanonicalLaneLean

structure ConnectomicsGraphPackage where
  neurons : Type u
  synapses : Type v
  source : synapses → neurons
  target : synapses → neurons
  weight : synapses → ℝ
  graphProperties : Prop
  connectomicsClosed : Prop

structure ConnectomicsGraphEvidence (C : ConnectomicsGraphPackage) where
  finiteNeurons : Fintype C.neurons
  finiteSynapses : Fintype C.synapses
  weightNonNegative : ∀ s, C.weight s ≥ 0.0
  graphPropertiesClosed : C.graphProperties
  connectomicsClosed : C.connectomicsClosed

def ConnectomicsGraphClosed (C : ConnectomicsGraphPackage) : Prop :=
  Nonempty (Fintype C.neurons) ∧ Nonempty (Fintype C.synapses) ∧
  (∀ s, C.weight s ≥ 0.0) ∧ C.graphProperties ∧ C.connectomicsClosed

theorem connectomics_graph_closed_from_evidence (C : ConnectomicsGraphPackage)
    (E : ConnectomicsGraphEvidence C) : ConnectomicsGraphClosed C := by
  have hNeurons : Nonempty (Fintype C.neurons) := ⟨E.finiteNeurons⟩
  have hSynapses : Nonempty (Fintype C.synapses) := ⟨E.finiteSynapses⟩
  exact And.intro hNeurons
    (And.intro hSynapses
      (And.intro E.weightNonNegative
        (And.intro E.graphPropertiesClosed E.connectomicsClosed)))

end NeuroscienceCellularNeurophysiologyFoundationCanonicalLaneLean
end HautevilleHouse
