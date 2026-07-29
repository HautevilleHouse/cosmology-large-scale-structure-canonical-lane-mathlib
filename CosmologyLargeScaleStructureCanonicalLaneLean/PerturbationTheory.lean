import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CosmologyLargeScaleStructure

structure PerturbationTheoryPackage where
  linearPerturbations : Prop
  growthFactor : Prop
  transferFunction : Prop
  matterPowerSpectrum : Prop

structure PerturbationTheoryEvidence (P : PerturbationTheoryPackage) where
  linearPerturbationsClosed : P.linearPerturbations
  growthFactorClosed : P.growthFactor
  transferFunctionClosed : P.transferFunction
  matterPowerSpectrumClosed : P.matterPowerSpectrum

def PerturbationTheoryClosed (P : PerturbationTheoryPackage) : Prop :=
  P.linearPerturbations ∧ P.growthFactor ∧ P.transferFunction ∧ P.matterPowerSpectrum

theorem perturbation_theory_closed_from_evidence (P : PerturbationTheoryPackage)
    (E : PerturbationTheoryEvidence P) : PerturbationTheoryClosed P := by
  exact And.intro E.linearPerturbationsClosed
    (And.intro E.growthFactorClosed
      (And.intro E.transferFunctionClosed E.matterPowerSpectrumClosed))

end CosmologyLargeScaleStructure
end HautevilleHouse
