@EndUserText.label: 'Consumption view for ZBYD_MAT_LOG'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
//@AbapCatalog.viewEnhancementCategory: [#NONE]


define view entity ZC_BYD_MAT_LOG as projection on ZI_BYD_MAT_LOG
{
    key ZLogUuid,
    ZLogId,
    ZLogText,
    ZLogCreatedon,
    ZMaterialInternalId,
    ZCreatedBy,
    ZCreatedAt,
    ZLastChangedBy,
    ZLastChangedAt,
    ZLocalLastChangedAt,
    /* Associations */
    _BydMaterials : redirected to parent ZC_BYDMATERIALS
}
