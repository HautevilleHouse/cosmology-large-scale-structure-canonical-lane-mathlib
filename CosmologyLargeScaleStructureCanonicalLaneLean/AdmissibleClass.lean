import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CosmologyLargeScaleStructureCanonicalLaneLean

structure AdmissibleClass where
  object : CosmologyAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CosmologyWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CosmologyLargeScaleStructureCanonicalLaneLean
end HautevilleHouse