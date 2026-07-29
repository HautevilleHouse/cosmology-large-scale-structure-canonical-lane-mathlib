import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CosmologyLargeScaleStructureCanonicalLaneLean

structure LargeScaleStructureStatisticsPackage where
  correlationFunctionDefined : Prop
  powerSpectrumComputed : Prop
  bispectrumDefined : Prop
  genusStatistics : Prop
  voidProbabilityFunction : Prop

structure LargeScaleStructureStatisticsEvidence (S : LargeScaleStructureStatisticsPackage) where
  correlationFunctionDefinedClosed : S.correlationFunctionDefined
  powerSpectrumComputedClosed : S.powerSpectrumComputed
  bispectrumDefinedClosed : S.bispectrumDefined
  genusStatisticsClosed : S.genusStatistics
  voidProbabilityFunctionClosed : S.voidProbabilityFunction

def LargeScaleStructureStatisticsClosed (S : LargeScaleStructureStatisticsPackage) : Prop :=
  S.correlationFunctionDefined ∧ S.powerSpectrumComputed ∧
  S.bispectrumDefined ∧ S.genusStatistics ∧ S.voidProbabilityFunction

theorem large_scale_structure_statistics_closed_from_evidence
    (S : LargeScaleStructureStatisticsPackage)
    (E : LargeScaleStructureStatisticsEvidence S) : LargeScaleStructureStatisticsClosed S := by
  exact And.intro E.correlationFunctionDefinedClosed
    (And.intro E.powerSpectrumComputedClosed
      (And.intro E.bispectrumDefinedClosed
        (And.intro E.genusStatisticsClosed E.voidProbabilityFunctionClosed)))

end CosmologyLargeScaleStructureCanonicalLaneLean
end HautevilleHouse