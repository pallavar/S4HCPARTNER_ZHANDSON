@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Domain list for billtype'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_BILLTYPE_DOMAIN as select from DDCDS_CUSTOMER_DOMAIN_VALUE_T( p_domain_name:'Z_BILLTYPE' )
{
    key domain_name,
    key value_position,
    key language,
    @Semantics.language: true
    value_low,
    @Semantics.language: true
    text
    
    
    
    
    
    
}
