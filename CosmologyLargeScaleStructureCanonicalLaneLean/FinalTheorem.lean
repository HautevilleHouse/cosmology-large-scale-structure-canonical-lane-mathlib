import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CosmologyLargeScaleStructureCanonicalLaneLean

def ConstrainedCosmologyClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_cosmology_endgame (A : AdmissibleClass) :
    ConstrainedCosmologyClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CosmologyLargeScaleStructureCanonicalLaneLean
end HautevilleHouse