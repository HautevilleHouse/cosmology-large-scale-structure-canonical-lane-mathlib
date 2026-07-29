import HautevilleHouse.CosmologyLargeScaleStructureCanonicalLaneLean.PerturbationDynamics

/-!
# Statistics and Observables Package
-/

namespace HautevilleHouse
namespace CosmologyLargeScaleStructureCanonicalLaneLean

structure PowerSpectrum where
  primordialSpectrum : Prop
  transferComputed : Prop
  matterPowerSpectrum : Prop

structure CorrelationFunctions where
  twoPoint : Prop
  threePoint : Prop
  pairwiseVelocityStatistics : Prop

structure Observables where
  clusterCounts : Prop
  weakLensing : Prop
  galaxyRedshiftSurveys : Prop
  baryonAcousticOscillationPeak : Prop

structure StatisticsObservables {F : LargeScaleStructureFields}
    {L : LinearTheory} {N : NonlinearDynamics} {D : PerturbationDynamics L N}
    (P : PowerSpectrum) (C : CorrelationFunctions) (O : Observables) where
  dynamicsClosed : DynamicsClosed D
  statisticsConsistentDynamics : Prop
  observablePredictions : Prop

structure StatisticsEvidence {F : LargeScaleStructureFields}
    {L : LinearTheory} {N : NonlinearDynamics} {D : PerturbationDynamics L N}
    {P : PowerSpectrum} {C : CorrelationFunctions} {O : Observables}
    (S : StatisticsObservables P C O) where
  primordialSpectrumClosed : P.primordialSpectrum
  transferComputedClosed : P.transferComputed
  matterPowerSpectrumClosed : P.matterPowerSpectrum
  twoPointClosed : C.twoPoint
  threePointClosed : C.threePoint
  pairwiseVelocityStatisticsClosed : C.pairwiseVelocityStatistics
  clusterCountsClosed : O.clusterCounts
  weakLensingClosed : O.weakLensing
  galaxyRedshiftSurveysClosed : O.galaxyRedshiftSurveys
  baryonAcousticOscillationPeakClosed : O.baryonAcousticOscillationPeak
  dynamicsClosedClosed : S.dynamicsClosed
  statisticsConsistentDynamicsClosed : S.statisticsConsistentDynamics
  observablePredictionsClosed : S.observablePredictions

def StatisticsClosed {F : LargeScaleStructureFields}
    {L : LinearTheory} {N : NonlinearDynamics} {D : PerturbationDynamics L N}
    {P : PowerSpectrum} {C : CorrelationFunctions} {O : Observables}
    (S : StatisticsObservables P C O) : Prop :=
  P.primordialSpectrum ∧ P.transferComputed ∧
  P.matterPowerSpectrum ∧ C.twoPoint ∧
  C.threePoint ∧ C.pairwiseVelocityStatistics ∧
  O.clusterCounts ∧ O.weakLensing ∧
  O.galaxyRedshiftSurveys ∧ O.baryonAcousticOscillationPeak ∧
  S.dynamicsClosed ∧ S.statisticsConsistentDynamics ∧
  S.observablePredictions

theorem statistics_closed_from_evidence {F : LargeScaleStructureFields}
    {L : LinearTheory} {N : NonlinearDynamics} {D : PerturbationDynamics L N}
    {P : PowerSpectrum} {C : CorrelationFunctions} {O : Observables}
    (S : StatisticsObservables P C O) (E : StatisticsEvidence S) : StatisticsClosed S := by
  exact And.intro E.primordialSpectrumClosed
    (And.intro E.transferComputedClosed
      (And.intro E.matterPowerSpectrumClosed
        (And.intro E.twoPointClosed
          (And.intro E.threePointClosed
            (And.intro E.pairwiseVelocityStatisticsClosed
              (And.intro E.clusterCountsClosed
                (And.intro E.weakLensingClosed
                  (And.intro E.galaxyRedshiftSurveysClosed
                    (And.intro E.baryonAcousticOscillationPeakClosed
                      (And.intro E.dynamicsClosedClosed
                        (And.intro E.statisticsConsistentDynamicsClosed
                          E.observablePredictionsClosed)))))))))))

end CosmologyLargeScaleStructureCanonicalLaneLean
end HautevilleHouse
