@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface View for ZEMPSERVICES'
define view entity ZI_EMPSERVICES as select from zempservices
association to parent ZI_SERVICES as _Services
    on $projection.ServiceId = _Services.ServiceId
{
    key z_emp_id as ZEmpId,
    service_id as ServiceId,
    project_name as ProjectName,
    _Services // Make association public
}
