import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CosmologyLargeScaleStructureCanonicalLaneLean

structure NBodySimulationPackage where
  initialConditionsSet : Prop
  gravitySolverImplemented : Prop
  haloFinderApplied : Prop
  mergerTreeConstructed : Prop
  resolutionSufficient : Prop

structure NBodySimulationEvidence (N : NBodySimulationPackage) where
  initialConditionsSetClosed : N.initialConditionsSet
  gravitySolverImplementedClosed : N.gravitySolverImplemented
  haloFinderAppliedClosed : N.haloFinderApplied
  mergerTreeConstructedClosed : N.mergerTreeConstructed
  resolutionSufficientClosed : N.resolutionSufficient

def NBodySimulationClosed (N : NBodySimulationPackage) : Prop :=
  N.initialConditionsSet ∧ N.gravitySolverImplemented ∧
  N.haloFinderApplied ∧ N.mergerTreeConstructed ∧ N.resolutionSufficient

theorem n_body_simulation_closed_from_evidence (N : NBodySimulationPackage)
    (E : NBodySimulationEvidence N) : NBodySimulationClosed N := by
  exact And.intro E.initialConditionsSetClosed
    (And.intro E.gravitySolverImplementedClosed
      (And.intro E.haloFinderAppliedClosed
        (And.intro E.mergerTreeConstructedClosed E.resolutionSufficientClosed)))

end CosmologyLargeScaleStructureCanonicalLaneLean
end HautevilleHouse