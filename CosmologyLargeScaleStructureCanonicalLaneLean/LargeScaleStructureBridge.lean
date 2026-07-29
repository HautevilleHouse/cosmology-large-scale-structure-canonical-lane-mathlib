import canonicalLaneMathlib.AdmissibleClass
import CosmologyLargeScaleStructureCanonicalLaneLean.CosmicMicrowaveBackground
import CosmologyLargeScaleStructureCanonicalLaneLean.DarkMatterDistribution
import CosmologyLargeScaleStructureCanonicalLaneLean.GalaxyRedshiftSurvey
import CosmologyLargeScaleStructureCanonicalLaneLean.InitialConditions

namespace HautevilleHouse
namespace CosmologyLargeScaleStructureCanonicalLaneLean

structure LargeScaleStructureAnalyticFoundation where
  cmb : CosmicMicrowaveBackgroundPackage
  cmbEvidence : CosmicMicrowaveBackgroundEvidence cmb
  darkMatter : DarkMatterDistributionPackage
  darkMatterEvidence : DarkMatterDistributionEvidence darkMatter
  galaxySurvey : GalaxyRedshiftSurveyPackage
  galaxySurveyEvidence : GalaxyRedshiftSurveyEvidence galaxySurvey
  initialConditions : InitialConditionsPackage
  initialConditionsEvidence : InitialConditionsEvidence initialConditions

structure LargeScaleStructureAnalyticFoundationClosed (A : LargeScaleStructureAnalyticFoundation) : Prop :=
  cmbClosed : CosmicMicrowaveBackgroundClosed A.cmb
  darkMatterClosed : DarkMatterDistributionClosed A.darkMatter
  galaxySurveyClosed : GalaxyRedshiftSurveyClosed A.galaxySurvey
  initialConditionsClosed : InitialConditionsClosed A.initialConditions

theorem large_scale_structure_foundation_closed_from_evidence (A : LargeScaleStructureAnalyticFoundation) :
    LargeScaleStructureAnalyticFoundationClosed A := by
  refine {
    cmbClosed := cmb_closed_from_evidence A.cmb A.cmbEvidence
    darkMatterClosed := dark_matter_distribution_closed_from_evidence A.darkMatter A.darkMatterEvidence
    galaxySurveyClosed := galaxy_redshift_survey_closed_from_evidence A.galaxySurvey A.galaxySurveyEvidence
    initialConditionsClosed := initial_conditions_closed_from_evidence A.initialConditions A.initialConditionsEvidence
  }

end CosmologyLargeScaleStructureCanonicalLaneLean
end HautevilleHouse