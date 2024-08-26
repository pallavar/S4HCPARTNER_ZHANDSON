@AbapCatalog.viewEnhancementCategory: [ #NONE ]
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Interface view for ZTASK'
@Metadata.ignorePropagatedAnnotations: true

@ObjectModel.resultSet.sizeCategory: #XS
@ObjectModel.query.implementedBy: 'ABAP:ZCL_GET_DOMAIN_FIX_VALUES'




@ObjectModel.usageType:{
serviceQuality:#X,
sizeCategory: #S,
dataClass: #MIXED
}



define root view entity ZI_TASK
 as select from ztask
 
 association to Z_CDS_Employee as _ToEmployee
    on $projection.EmpID = _ToEmployee.ZEmpId
    
     association to ZDB_STATUS_INTERFACE_VIEW as _ToStatus
     on $projection.Status = _ToStatus.Statuscode
     
    
composition[0..*] of ZI_TASK_ITEM as _item
{
    key task_uuid as TaskUuid,
    //key unique_id as UniqueID,
    task_id as TaskId,
    task_name as TaskName,
    z_emp_id as EmpID,
    overallstatus as Status,
    overallstatusdesc as StatusDesc,
    z_gender as Gender,
   
    case overallstatusdesc
      when 'Open'  then 2    -- 'Open'       | 2: yellow colour
      when 'Accepted'  then 3    -- 'Accepted'   | 3: green colour
      when 'Rejected'  then 1    -- 'Rejected'   | 1: red colour
                else 0    -- 'nothing'    | 0: unknown
    end                   as OverallStatusCriticality,
    
    
     @Semantics.systemDateTime.localInstanceLastChangedAt:true
     local_last_changed_at as LocalLastChangedAt,
     
     @Semantics.systemDateTime.lastChangedAt: true 
     last_changed_at as LastChangedAt,
     

    _item,
    _ToEmployee,
    _ToStatus
}
