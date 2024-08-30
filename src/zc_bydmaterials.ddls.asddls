@EndUserText.label: 'Consumption view for ZBYD_MATERIALS'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
//@AbapCatalog.viewEnhancementCategory: [#NONE]



define root view entity ZC_BYDMATERIALS
provider contract transactional_query
 as projection on ZI_BYDMATERIALS
{
    _BydMaterialLog: redirected to composition child ZC_BYD_MAT_LOG,
    
    key ZMaterialInternalId,
    ZMaterialName,
    ZBaseUom,
    ZPlanningUom,
    ZCreatedBy,
    ZCreatedAt,
    ZLastChangedBy,
    ZLastChangedAt,
    ZLocalLastChangedAt
    
}
