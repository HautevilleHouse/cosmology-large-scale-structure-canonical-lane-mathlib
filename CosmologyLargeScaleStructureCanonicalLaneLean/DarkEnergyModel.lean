import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CosmologyLargeScaleStructureCanonicalLaneLean

structure DarkEnergyModelPackage where
  equationOfState : Prop
  redshiftDependence : Prop
  cosmologicalConstantLimit : Prop
  clusteringProperties : Prop

structure DarkEnergyModelEvidence (D : DarkEnergyModelPackage) where
  equationOfStateClosed : D.equationOfState
  redshiftDependenceClosed : D.redshiftDependence
  cosmologicalConstantLimitClosed : D.cosmologicalConstantLimit
  clusteringPropertiesClosed : D.clusteringProperties

def DarkEnergyModelClosed (D : DarkEnergyModelPackage) : Prop :=
  D.equationOfState ∧ D.redshiftDependence ∧
  D.cosmologicalConstantLimit ∧ D.clusteringProperties

theorem dark_energy_model_closed_from_evidence (D : DarkEnergyModelPackage)
    (E : DarkEnergyModelEvidence D) : DarkEnergyModelClosed D := by
  exact And.intro E.equationOfStateClosed
    (And.intro E.redshiftDependenceClosed
      (And.intro E.cosmologicalConstantLimitClosed E.clusteringPropertiesClosed))

end CosmologyLargeScaleStructureCanonicalLaneLean
end HautevilleHouse