@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface View for ZBYD_MAT_LOG'
@AbapCatalog.viewEnhancementCategory: [ #NONE ]


define view entity ZI_BYD_MAT_LOG as select from zbyd_mat_log
association to parent ZI_BYDMATERIALS as _BydMaterials
    on $projection.ZMaterialInternalId = _BydMaterials.ZMaterialInternalId
{
    key z_log_uuid as ZLogUuid,
    z_log_id as ZLogId,
    z_log_text as ZLogText,
    z_log_createdon as ZLogCreatedon,
    z_material_internal_id as ZMaterialInternalId,
    z_created_by as ZCreatedBy,
    z_created_at as ZCreatedAt,
    z_last_changed_by as ZLastChangedBy,
    z_last_changed_at as ZLastChangedAt,
    z_local_last_changed_at as ZLocalLastChangedAt,
    _BydMaterials // Make association public
}
