@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface View for ZPROJECT_TASK'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_PROJECT_TASK as select from zproject_task
association to parent ZI_PROJECT as _project
on $projection.ProjectUuid = _project.ProjectUuid
{
    key project_task_item_uuid as ProjectTaskItemUuid,
    project_uuid as ProjectUuid,
    project_task_name as ProjectTaskName,
    
//    @Consumption.valueHelpDefinition: [{ entity : {name: 'ZI_SERVICES', element: 'ServiceId'  } }]
//     @ObjectModel.text.element: ['ServiceName']
    
  
    service_id as ServiceID,
    
    service_name as ServiceName,
    
    @Semantics.amount.currencyCode: 'ServiceCurrencyCode'  
    serviceunitprice as ServiceUnitPrice,
    
    servicecurrencycode as ServiceCurrencyCode,
    
    z_task_status as TaskStatus,
    
    _project
    
}
