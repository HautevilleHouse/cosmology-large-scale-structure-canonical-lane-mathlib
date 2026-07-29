import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CosmologyLargeScaleStructureCanonicalLaneLean

structure InitialConditionsPackage where
  primordialPowerSpectrum : Prop
  inflationaryPerturbations : Prop
  nonGaussianity : Prop
  transferFunctions : Prop

structure InitialConditionsEvidence (I : InitialConditionsPackage) where
  primordialPowerSpectrumClosed : I.primordialPowerSpectrum
  inflationaryPerturbationsClosed : I.inflationaryPerturbations
  nonGaussianityClosed : I.nonGaussianity
  transferFunctionsClosed : I.transferFunctions

def InitialConditionsClosed (I : InitialConditionsPackage) : Prop :=
  I.primordialPowerSpectrum ∧ I.inflationaryPerturbations ∧ I.nonGaussianity ∧ I.transferFunctions

theorem initial_conditions_closed_from_evidence (I : InitialConditionsPackage) (E : InitialConditionsEvidence I) :
    InitialConditionsClosed I := by
  exact And.intro E.primordialPowerSpectrumClosed (And.intro E.inflationaryPerturbationsClosed (And.intro E.nonGaussianityClosed E.transferFunctionsClosed))

end CosmologyLargeScaleStructureCanonicalLaneLean
end HautevilleHouse