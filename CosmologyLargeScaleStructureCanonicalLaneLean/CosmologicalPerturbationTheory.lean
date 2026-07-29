import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CosmologyLargeScaleStructureCanonicalLaneLean

structure CosmologicalPerturbationPackage where
  backgroundMetric : Type
  perturbationFields : Type
  gaugeInvariantVariables : Prop
  powerSpectrumDefined : Prop
  gaussianityAssumption : Prop
  evolutionEquations : Prop

structure CosmologicalPerturbationEvidence (P : CosmologicalPerturbationPackage) where
  gaugeInvariantVariablesClosed : P.gaugeInvariantVariables
  powerSpectrumDefinedClosed : P.powerSpectrumDefined
  gaussianityAssumptionClosed : P.gaussianityAssumption
  evolutionEquationsClosed : P.evolutionEquations

def CosmologicalPerturbationClosed (P : CosmologicalPerturbationPackage) : Prop :=
  P.gaugeInvariantVariables ∧ P.powerSpectrumDefined ∧
  P.gaussianityAssumption ∧ P.evolutionEquations

theorem cosmological_perturbation_closed_from_evidence (P : CosmologicalPerturbationPackage)
    (E : CosmologicalPerturbationEvidence P) : CosmologicalPerturbationClosed P := by
  exact And.intro E.gaugeInvariantVariablesClosed
    (And.intro E.powerSpectrumDefinedClosed
      (And.intro E.gaussianityAssumptionClosed E.evolutionEquationsClosed))

end CosmologyLargeScaleStructureCanonicalLaneLean
end HautevilleHouse