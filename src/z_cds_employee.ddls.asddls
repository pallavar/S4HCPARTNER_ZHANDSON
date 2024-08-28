@AbapCatalog.sqlViewName: 'Z_EMP_VIEW'
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Search.searchable: true
@EndUserText.label: 'CDS View for Employee'

define root view Z_CDS_Employee as select from zpr_emp_table
//association [1..*] to Z_CDS_EmployeeSalary as salaries on $projection.ZEmpId = salaries.EmployeeNo
{
    @Search.defaultSearchElement: true
    @ObjectModel.text.element: [ 'ZEmpName' ]
    key z_emp_id as ZEmpId,
    z_emp_name as ZEmpName,
    z_emp_joining_date as ZEmpJoiningDate
    //salaries
}
