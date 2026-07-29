import HautevilleHouse.CosmologyLargeScaleStructureCanonicalLaneLean.LargeScaleStructureFields

/-!
# Perturbation Dynamics Package
-/

namespace HautevilleHouse
namespace CosmologyLargeScaleStructureCanonicalLaneLean

structure LinearTheory where
  growthFactor : Prop
  transferFunction : Prop
  baryonAcousticOscillations : Prop
  darkMatterEvolution : Prop

structure NonlinearDynamics where
  perturbationSeries : Prop
  modeCoupling : Prop
  virialization : Prop

structure PerturbationDynamics {F : LargeScaleStructureFields} (L : LinearTheory) (N : NonlinearDynamics) where
  linearClosed : FieldsClosed F
  linearToNonlinearBridge : Prop
  initialConditionsSet : Prop

structure DynamicsEvidence {F : LargeScaleStructureFields} {L : LinearTheory} {N : NonlinearDynamics}
    (D : PerturbationDynamics L N) where
  growthFactorClosed : L.growthFactor
  transferFunctionClosed : L.transferFunction
  baryonAcousticOscillationsClosed : L.baryonAcousticOscillations
  darkMatterEvolutionClosed : L.darkMatterEvolution
  perturbationSeriesClosed : N.perturbationSeries
  modeCouplingClosed : N.modeCoupling
  virializationClosed : N.virialization
  linearClosedClosed : D.linearClosed
  linearToNonlinearBridgeClosed : D.linearToNonlinearBridge
  initialConditionsSetClosed : D.initialConditionsSet

def DynamicsClosed {F : LargeScaleStructureFields} {L : LinearTheory} {N : NonlinearDynamics}
    (D : PerturbationDynamics L N) : Prop :=
  L.growthFactor ∧ L.transferFunction ∧
  L.baryonAcousticOscillations ∧ L.darkMatterEvolution ∧
  N.perturbationSeries ∧ N.modeCoupling ∧
  N.virialization ∧ D.linearClosed ∧
  D.linearToNonlinearBridge ∧ D.initialConditionsSet

theorem dynamics_closed_from_evidence {F : LargeScaleStructureFields} {L : LinearTheory} {N : NonlinearDynamics}
    (D : PerturbationDynamics L N) (E : DynamicsEvidence D) : DynamicsClosed D := by
  exact And.intro E.growthFactorClosed
    (And.intro E.transferFunctionClosed
      (And.intro E.baryonAcousticOscillationsClosed
        (And.intro E.darkMatterEvolutionClosed
          (And.intro E.perturbationSeriesClosed
            (And.intro E.modeCouplingClosed
              (And.intro E.virializationClosed
                (And.intro E.linearClosedClosed
                  (And.intro E.linearToNonlinearBridgeClosed
                    E.initialConditionsSetClosed))))))))

end CosmologyLargeScaleStructureCanonicalLaneLean
end HautevilleHouse
