@AbapCatalog.sqlViewName: 'Z_DEMOSQL'
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Custom CDS view for Employee BO'
define view ZI_CUSTOM_CDS_EMP as select from Z_CDS_Employee
{
   key ZEmpId,
    ZEmpName
}
