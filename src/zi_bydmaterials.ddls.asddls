@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface View for ZBYD_MATERIALS'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}

define root view entity ZI_BYDMATERIALS as select from zbyd_materials
composition[0..*] of ZI_BYD_MAT_LOG as _BydMaterialLog
{
    key z_material_internal_id as ZMaterialInternalId,
    z_material_name as ZMaterialName,
    z_base_uom as ZBaseUom,
    z_planning_uom as ZPlanningUom,
    
    @Semantics.user.createdBy: true
    z_created_by as ZCreatedBy,
    
    @Semantics.systemDateTime.createdAt: true
    z_created_at as ZCreatedAt,
       
    @Semantics.user.lastChangedBy: true
    z_last_changed_by as ZLastChangedBy,
        
    
    @Semantics.systemDateTime.lastChangedAt: true
    z_last_changed_at as ZLastChangedAt,
        
    @Semantics.systemDateTime.localInstanceLastChangedAt: true
    z_local_last_changed_at as ZLocalLastChangedAt,
    _BydMaterialLog
}
