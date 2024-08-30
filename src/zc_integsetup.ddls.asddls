@EndUserText.label: 'Consumption view for ZINTEG_SETUP'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
define root view entity ZC_INTEGSETUP
provider contract transactional_query
as projection on ZI_INTEGSETUP
{
// @UI.facet: [
//                    {
//                      label: 'Configuration Setup',
//                      id: 'ConfigSetup',
//                      type: #COLLECTION,
//                      position: 10
//                   },
//                   {
//                      id: 'Project',
//                      purpose:#STANDARD,
//                      type: #IDENTIFICATION_REFERENCE,
//                      label: 'Config Info',
//                      position: 10,
//                      parentId: 'ConfigSetup'                                
//                   },
//                   {
//                      id: 'AdminInfo',
//                      purpose:#STANDARD,
//                      type: #FIELDGROUP_REFERENCE,
//                      label: 'Admin Info',
//                      position: 20,
//                      parentId: 'ConfigSetup',   
//                      targetQualifier: 'AdminSection'
//                   }
//                ]  
            
    key ZConfigurationUuid,
    ZId,
    ZGrantType,
    ZClientId,
    ZClientSecret,
    ZAccessToken,
    ZTokenType,
    ZExpiresIn,
    ZStatus,
    CreatedBy,
    CreatedAt,
    LastChangedBy,
    LastChangedAt
}
