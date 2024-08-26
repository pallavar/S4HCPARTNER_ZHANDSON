@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface View for Project'
@AbapCatalog.viewEnhancementCategory: [ #NONE ]
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
@ObjectModel.resultSet.sizeCategory: #XS


//@ObjectModel.query.implementedBy: 'ABAP:ZCL_GET_DOMAIN_FIX_VALUES'

define root view entity ZI_PROJECT as select from zproject
composition[0..*] of ZI_PROJECT_TASK as _projecttasks

{
    key project_uuid as ProjectUuid,
    project_id as ProjectId,
    project_name as ProjectName,
    
    attachment            as Attachment,
    @Semantics.mimeType: true
    zproject.mimetype as MimeType,
    zproject.filename as Filename,
    @EndUserText.label: 'Attachemnt'
     @Semantics.largeObject:
      { mimeType: 'MimeType',
      fileName: 'Filename',
      acceptableMimeTypes: [ 'text/csv/pdf' ],
      contentDispositionPreference: #INLINE }
    zproject.newattachment         as NewAttachment,

  
    z_employee_responsible as ZEmployeeResponsible,
    z_project_status as ZProjectStatus,
    project_type as ProjectType,
    z_billtype as BillType,
    
    @Semantics.amount.currencyCode: 'totalprojectcostcurrencycode'  
    totalprojectcost as TotalProjectCost,
    
    totalprojectcostcurrencycode as TotalProjectCostCurrencyCode,
    
    @Semantics.systemDateTime.localInstanceLastChangedAt:true
    local_last_changed_at as LocalLastChangedAt,
     
    @Semantics.systemDateTime.lastChangedAt: true 
    last_changed_at as LastChangedAt,
    
    @Semantics.user.createdBy: true
    created_by as CreatedBy,
    
    @Semantics.systemDateTime.createdAt: true
    created_at as CreatedAt,
       
    @Semantics.user.lastChangedBy: true
    last_changed_by as LastChangedBy,
    
    projectstartdate as ProjectStartDate,
    projectenddate as ProjectEndDate,
    
    _projecttasks
        
    
    
}


