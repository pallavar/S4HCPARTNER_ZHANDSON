@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface View for ZSERVICES'

//@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}

@Search.searchable: true


define root view entity ZI_SERVICES as select from zservices
composition[0..*] of ZI_EMPSERVICES as _EmpServices
//association [0..1] to I_Currency as _CurrencyAssoc on $projection.CurrCode = _CurrencyAssoc.Currency

  association [1..1] to I_CurrencyText as _Text 
    on $projection.CurrCode = _Text.Currency and _Text.Language = 'E'
                                    

{
    @Search.defaultSearchElement: true
    //@ObjectModel.text.element: [ 'ServiceName' ]
    key service_id as ServiceId,
    
   // @ObjectModel.text.element: [ 'ServiceName' ]
    
    @Search.defaultSearchElement: true
    @Search.fuzzinessThreshold: 0.7
    service_name as ServiceName,
    
    @Semantics.amount.currencyCode: 'CurrCode'
    unitprice as UnitPrice,
    currencycode as CurrCode,
    
    @Semantics.user.createdBy: true
    created_by as CreatedBy,
    
    @Semantics.systemDateTime.createdAt: true
    created_at as CreatedAt,
       
    @Semantics.user.lastChangedBy: true
    last_changed_by as LastChangedBy,
        
    
    @Semantics.systemDateTime.lastChangedAt: true
    last_changed_at as LastChangedAt,
        
    @Semantics.systemDateTime.localInstanceLastChangedAt: true
    locl_last_changed_at as LoclLastChangedAt,
    
    _EmpServices,
//    _CurrencyAssoc
    _Text,
     servicedate as ServiceDate
    
    
}

