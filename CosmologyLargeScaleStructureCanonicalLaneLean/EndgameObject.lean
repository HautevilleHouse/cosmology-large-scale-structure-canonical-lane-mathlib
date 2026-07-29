import HautevilleHouse.CosmologyLargeScaleStructureCanonicalLaneLean.StatisticsObservables
import HautevilleHouse.CosmologyLargeScaleStructureCanonicalLaneLean.FinalTheorem

/-!
# Endgame Object Package
-/

namespace HautevilleHouse
namespace CosmologyLargeScaleStructureCanonicalLaneLean

open CosmologyAdmittedObject

structure CosmologySpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure CosmologyAdmittedObject where
  space : CosmologySpace
  backgroundFLRW : Prop
  perturbationFields : Prop
  observationalConsistency : Prop
  conclusion : Prop

def CosmologyWitnessClosed (O : CosmologyAdmittedObject) : Prop :=
  O.backgroundFLRW ∧ O.perturbationFields ∧ O.observationalConsistency

end CosmologyLargeScaleStructureCanonicalLaneLean
end HautevilleHouse
