@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption view for ZEMPSERVICES'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true


define view entity ZC_EMPSERVICES as projection on ZI_EMPSERVICES
{
    key ZEmpId,
  ServiceId,
    ProjectName,
    /* Associations */
     _Services : redirected to parent ZC_SERVICES
}
