@EndUserText.label: 'Consumption view for ZSERVICES'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
//@ObjectModel.resultSet.sizeCategory: #XS


@UI: { headerInfo: { typeName: 'Service', typeNamePlural: 'Services',title: {type: #STANDARD, value: 'ServiceId'},description: {
            value: 'ServiceName'
        }}} 
        
        
@Search.searchable: true
        
define root view entity ZC_SERVICES
provider contract transactional_query
as projection on ZI_SERVICES
{

//@UI.facet: [
//                    {
//                      label: 'Service General Info',
//                      id: 'ServiceGeneralInfo',
//                      type: #COLLECTION,
//                      position: 10
//                   },
//                   {
//                      id: 'ServiceInfo',
//                      purpose:#STANDARD,
//                      type: #IDENTIFICATION_REFERENCE,
//                      label: 'Service Info',
//                      position: 10,
//                      parentId: 'ServiceGeneralInfo'                                                      
//                   },
//                   {
//                      id: 'AdminInfo',
//                      purpose:#STANDARD,
//                      type: #FIELDGROUP_REFERENCE,
//                      label: 'Admin Info',
//                      position: 20,
//                      parentId: 'ServiceGeneralInfo',   
//                      targetQualifier: 'AdminSection'
//                   }
//             ]
             
    _EmpServices : redirected to composition child ZC_EMPSERVICES,
   
             
    @ObjectModel.text.element: ['ServiceName']
    key ServiceId,
    
    
    @ObjectModel.text.element:  [ 'currname' ]
    ServiceName,
    _Text.CurrencyName as currname,
    
    
    
    
    
    @Semantics.amount.currencyCode: 'CurrCode'
    UnitPrice,
    @Semantics.currencyCode: true
    
    CurrCode,
    
    
   
     
     
    CreatedBy,
    CreatedAt,
    LastChangedBy,
    LastChangedAt,
    LoclLastChangedAt,
    ServiceDate
    
    
}
