import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CosmologyLargeScaleStructureCanonicalLaneLean

structure GalaxyRedshiftSurveyPackage where
  spectroscopicRedshifts : Prop
  photometricRedshifts : Prop
  clusteringStatistics : Prop
  baryonAcousticOscillations : Prop

structure GalaxyRedshiftSurveyEvidence (G : GalaxyRedshiftSurveyPackage) where
  spectroscopicRedshiftsClosed : G.spectroscopicRedshifts
  photometricRedshiftsClosed : G.photometricRedshifts
  clusteringStatisticsClosed : G.clusteringStatistics
  baryonAcousticOscillationsClosed : G.baryonAcousticOscillations

def GalaxyRedshiftSurveyClosed (G : GalaxyRedshiftSurveyPackage) : Prop :=
  G.spectroscopicRedshifts ∧ G.photometricRedshifts ∧ G.clusteringStatistics ∧ G.baryonAcousticOscillations

theorem galaxy_redshift_survey_closed_from_evidence (G : GalaxyRedshiftSurveyPackage) (E : GalaxyRedshiftSurveyEvidence G) :
    GalaxyRedshiftSurveyClosed G := by
  exact And.intro E.spectroscopicRedshiftsClosed (And.intro E.photometricRedshiftsClosed (And.intro E.clusteringStatisticsClosed E.baryonAcousticOscillationsClosed))

end CosmologyLargeScaleStructureCanonicalLaneLean
end HautevilleHouse