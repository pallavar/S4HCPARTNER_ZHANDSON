@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption view for ZPROJECT_TASK'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true

@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}

@UI: { headerInfo: { typeName: 'Project Task', typeNamePlural: 'Project Tasks'} }

define view entity ZC_PROJECT_TASK 
as projection on ZI_PROJECT_TASK

{

 @UI.facet: [
    {
                      id: 'ProjectTasks',
                      purpose: #STANDARD,
                      type: #LINEITEM_REFERENCE,
                      label: 'Tasks',
                      position: 10,
                      targetElement: 'ProjectTaskItemUuid'
                   }
            ]
    
    key ProjectTaskItemUuid,
    ProjectUuid,
    ProjectTaskName,
    @Consumption.valueHelpDefinition: [{ entity : {name: 'ZI_SERVICES', element: 'ServiceID'  } }]
    @ObjectModel.text.element: ['ServiceName']
    ServiceID,
    ServiceName,
    @Semantics.amount.currencyCode: 'ServiceCurrencyCode'
    ServiceUnitPrice,
    @Semantics.currencyCode: true
    ServiceCurrencyCode,
    TaskStatus,
    /* Associations */
    _project : redirected to parent ZC_PROJECT
    
}

