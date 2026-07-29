import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CosmologyLargeScaleStructureCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CosmologyWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CosmologyLargeScaleStructureCanonicalLaneLean
end HautevilleHouse