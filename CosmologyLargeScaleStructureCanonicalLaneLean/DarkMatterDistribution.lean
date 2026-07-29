import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CosmologyLargeScaleStructureCanonicalLaneLean

structure DarkMatterDistributionPackage where
  nBodySimulation : Prop
  haloMassFunction : Prop
  substructureAbundance : Prop
  densityProfile : Prop

structure DarkMatterDistributionEvidence (D : DarkMatterDistributionPackage) where
  nBodySimulationClosed : D.nBodySimulation
  haloMassFunctionClosed : D.haloMassFunction
  substructureAbundanceClosed : D.substructureAbundance
  densityProfileClosed : D.densityProfile

def DarkMatterDistributionClosed (D : DarkMatterDistributionPackage) : Prop :=
  D.nBodySimulation ∧ D.haloMassFunction ∧ D.substructureAbundance ∧ D.densityProfile

theorem dark_matter_distribution_closed_from_evidence (D : DarkMatterDistributionPackage) (E : DarkMatterDistributionEvidence D) :
    DarkMatterDistributionClosed D := by
  exact And.intro E.nBodySimulationClosed (And.intro E.haloMassFunctionClosed (And.intro E.substructureAbundanceClosed E.densityProfileClosed))

end CosmologyLargeScaleStructureCanonicalLaneLean
end HautevilleHouse