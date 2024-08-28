@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption View for Task Item Table'
@Metadata.ignorePropagatedAnnotations: false
@Metadata.allowExtensions: true


@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}

@UI: { headerInfo: { typeName: 'Task Item', typeNamePlural: 'Task Items'} }

define view entity ZC_TASK_ITEM
as projection on ZI_TASK_ITEM
{
    key TaskItemUuid,
    TaskUuid,
    
    
    @UI.facet: [
    {
                      id: 'TaskItem',
                      purpose: #STANDARD,
                      type: #LINEITEM_REFERENCE,
                      label: 'Items ID REF',
                      position: 10,
                      targetElement: 'TaskUuid'
                   }
            ]
    
    //@EndUserText.label: 'Task Item ID1'
    @Search.defaultSearchElement: true
    @UI.lineItem: [{ position: 10 }]
    @UI.identification: [{ position: 10 }]
    @UI.selectionField: [{ position: 10 }]
    TaskItemId,
    
    @EndUserText.label: 'Sub Task Name2'
    @Search.defaultSearchElement: true
     @UI.lineItem: [{ position: 20 }]
    @UI.identification: [{ position: 20 }]
    @UI.selectionField: [{ position: 20 }]
    SubTaskName,
    
    @EndUserText.label: 'Due1 Date'
    @Search.defaultSearchElement: true
     @UI.lineItem: [{ position: 30 }]
    @UI.identification: [{ position: 30 }]
    @UI.selectionField: [{ position: 30 }]
    DueDate,
    
    /*Association*/
    _task : redirected to parent ZC_TASK
    
   
}
