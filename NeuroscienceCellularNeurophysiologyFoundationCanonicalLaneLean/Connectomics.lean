import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceCellularNeurophysiologyFoundationCanonicalLaneLean

structure ConnectomicsPackage where
  neuronGraph : Type u
  synapticConnections : neuronGraph → neuronGraph → Prop
  graphProperties : Prop
  smallWorldProperty : Prop
  modularStructure : Prop
  richClubProperty : Prop
  graphPropertiesClosed : graphProperties
  smallWorldPropertyClosed : smallWorldProperty
  modularStructureClosed : modularStructure
  richClubPropertyClosed : richClubProperty

def ConnectomicsClosed (C : ConnectomicsPackage) : Prop :=
  C.graphProperties ∧ C.smallWorldProperty ∧ C.modularStructure ∧ C.richClubProperty

theorem connectomics_closed_from_evidence (C : ConnectomicsPackage) :
    ConnectomicsClosed C := by
  exact And.intro C.graphPropertiesClosed
    (And.intro C.smallWorldPropertyClosed
      (And.intro C.modularStructureClosed C.richClubPropertyClosed))

end NeuroscienceCellularNeurophysiologyFoundationCanonicalLaneLean
end HautevilleHouse