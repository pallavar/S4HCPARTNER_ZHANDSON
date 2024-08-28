@EndUserText.label: 'Consumption View for Project'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true

@AbapCatalog.viewEnhancementCategory: [#NONE]
@Metadata.ignorePropagatedAnnotations: true


@UI: { headerInfo: { typeName: 'Project', typeNamePlural: 'Projects',title: {type: #STANDARD, value: 'ProjectId'},description: {
            value: 'ProjectName'
        }}} 

define root view entity ZC_PROJECT
provider contract transactional_query
as projection on ZI_PROJECT
{
    @UI.facet: [
                    {
                      label: 'General Information',
                      id: 'GeneralInfo',
                      type: #COLLECTION,
                      position: 10
                   },
                   {
                      id: 'Project',
                      purpose:#STANDARD,
                      type: #IDENTIFICATION_REFERENCE,
                      label: 'Project Info',
                      position: 10,
                      parentId: 'GeneralInfo'                                
                   },
                   {
                      id: 'Upload',
                      purpose: #STANDARD,
                      type: #FIELDGROUP_REFERENCE,
                      parentId: 'GeneralInfo',
                      label: 'Upload Invoice',
                      position: 20,
                      targetQualifier: 'Upload'
                  },
                   {
                      id: 'AdminInfo',
                      purpose:#STANDARD,
                      type: #FIELDGROUP_REFERENCE,
                      label: 'Admin Info',
                      position: 30,
                      parentId: 'GeneralInfo',   
                      targetQualifier: 'AdminSection'
                   },
                    {
                      id: 'ProjectTaskItem',
                      purpose: #STANDARD,
                      type:#LINEITEM_REFERENCE,
                      label: 'Project Task Items',
                      position: 20,
                      targetElement: '_projecttasks'
                   }
                   
                ]  
            
    _projecttasks : redirected to composition child ZC_PROJECT_TASK,
            
            
    key ProjectUuid,
    ProjectId,
    ProjectName,
    ZEmployeeResponsible,
    ZProjectStatus,
    BillType,
    ProjectType,
    @Semantics.amount.currencyCode: 'TotalProjectCostCurrencyCode'
    TotalProjectCost,
    @Semantics.currencyCode: true
    TotalProjectCostCurrencyCode,
    Attachment,
    NewAttachment,
    @Semantics.mimeType: true
    MimeType,
    Filename,
    CreatedBy,
    CreatedAt,
    LastChangedBy, 
    LocalLastChangedAt,
    LastChangedAt,
    ProjectStartDate,
    ProjectEndDate
    
}
