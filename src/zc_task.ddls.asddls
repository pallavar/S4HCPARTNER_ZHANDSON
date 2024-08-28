@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption View for Task Table'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true

@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}

@UI: { headerInfo: { typeName: 'Task', typeNamePlural: 'Tasks',title: {type: #STANDARD, value: 'TaskName'},description: {
            value: 'TaskId'
        }}} 


define root view entity ZC_TASK
provider contract transactional_query
as projection on ZI_TASK
{

       @UI.facet: [

                  {
                      label: 'General Information',
                      id: 'GeneralInfo',
                      type: #COLLECTION,
                      position: 10
                   },
                  {
                      id: 'Task',
                      purpose:#STANDARD,
                      type: #IDENTIFICATION_REFERENCE,
                      label: 'Task Info',
                      position: 10,
                      parentId: 'GeneralInfo'                                
                   },
                   {
                      id: 'TaskSectionGroup',
                      purpose: #STANDARD,
                      type: #FIELDGROUP_REFERENCE,
                      parentId: 'GeneralInfo',
                      label: 'Task Section',
                      position: 30,
                      targetQualifier: 'TaskSectionGroup'
                    },
                    {
                      id: 'AdditionalInfoGroup',
                      purpose: #STANDARD,
                      type: #FIELDGROUP_REFERENCE,
                      parentId: 'GeneralInfo',
                      label: 'Addition Information',
                      position: 40,
                      targetQualifier: 'AdditionalInfoGroup'
                    },
                   {
                      id: 'TaskItem',
                      purpose: #STANDARD,
                      type:#LINEITEM_REFERENCE,
                      label: 'Task Items',
                      position: 20,
                      targetElement: '_item'
                   }
                   
                    
            ]  
               
               
    key TaskUuid,
    
    
   /* @EndUserText.label: 'Task ID'
     @UI.fieldGroup: [{ qualifier: 'TaskSectionGroup', position: 10 }]
    @Search.defaultSearchElement: true
    @UI.lineItem: [{ position: 10}]
    @UI.identification: [{ position: 10 }]
    @UI.selectionField: [{ position: 10 }] */
    TaskId,
    
    /*@EndUserText.label: 'Task Name'
    @UI.fieldGroup: [{ qualifier: 'TaskSectionGroup', position: 20 }]
    @Search.defaultSearchElement: true
    @UI.lineItem: [{ position: 20 }]
    @UI.identification: [{ position: 20 }]
    @UI.selectionField: [{ position: 20 }]*/
    TaskName,
    
    /*@EndUserText.label: 'Employee ID'
    @Search.defaultSearchElement: true
    @UI.lineItem: [{ position: 30 }]
    @UI.identification: [{ position: 30 }]
    @UI.selectionField: [{ position: 30 }]
    @UI.fieldGroup: [{ qualifier: 'AdditionalInfoGroup', position: 30 }] */
    
    //@Consumption.valueHelpDefinition: [{ entity : {name: 'Z_CDS_Employee', element: 'ZEmpId'  } }]
     @ObjectModel.text.element:  [ 'employeename' ]
     EmpID,
     _ToEmployee.ZEmpName as employeename,
     
     
    LocalLastChangedAt, 
    Gender,
    StatusDesc,
    OverallStatusCriticality,
    //ZI_TASK.StatusDesc as Statusdescription ,
 
    
   _item : redirected to composition child ZC_TASK_ITEM
     
     
    /*@EndUserText.label: 'Overall Status'
    @UI.textArrangement: #TEXT_ONLY
    @Search.defaultSearchElement: true
    @UI.selectionField: [{ position: 40 }] 
    @UI.lineItem: [{ position: 40 }]
    //@UI.identification: [{ position: 40 }]
    @UI.fieldGroup: [{ qualifier: 'AdditionalInfoGroup', position: 40 }] */
    
    
   /* @Consumption.valueHelpDefinition: [{ entity : {name: 'ZDB_STATUS_INTERFACE_VIEW', element: 'Statuscode'} }]
                                //additionalBinding: [{  element: 'ZDB_STATUS_INTERFACE_VIEW', localElement: 'Statusdescription'}]
                                // }]
    Status,*/
    
    
    //@Consumption.valueHelpDefinition: [{ entity : {name: 'ZDB_STATUS_INTERFACE_VIEW', element: 'Statusdescription'}
                              // additionalBinding: [{  element: 'ZDB_STATUS_INTERFACE_VIEW', localElement: 'Statuscode'}]
     
    //@ObjectModel.text.element:  [ 'Statusdescription' ]
   
   
  
    
  

}
