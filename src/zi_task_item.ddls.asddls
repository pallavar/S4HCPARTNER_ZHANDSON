@AbapCatalog.viewEnhancementCategory: [ #NONE ]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface view for ZTASK_ITEM'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
serviceQuality:#X,
sizeCategory: #S,
dataClass: #MIXED
}

define view entity ZI_TASK_ITEM as select from ztask_item
association to parent ZI_TASK as _task
   on $projection.TaskUuid = _task.TaskUuid 
{
    key task_item_uuid as TaskItemUuid,
    task_uuid as TaskUuid,
    headerunique_id as HeaderUniqueID,
    task_item_id as TaskItemId,
    sub_task_name as SubTaskName,
    due_date as DueDate,
    _task
}
