@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface View for ZINTEG_SETUP'
@Metadata.allowExtensions: true
define root view entity ZI_INTEGSETUP as select from zinteg_setup
{
    key z_configuration_uuid as ZConfigurationUuid,
    z_id as ZId,
    z_grant_type as ZGrantType,
    z_client_id as ZClientId,
    z_client_secret as ZClientSecret,
    z_access_token as ZAccessToken,
    z_token_type as ZTokenType,
    z_expires_in as ZExpiresIn,
    z_status as ZStatus,
    @Semantics.user.createdBy: true
    created_by as CreatedBy,
    @Semantics.systemDateTime.createdAt: true
    created_at as CreatedAt,
    @Semantics.user.localInstanceLastChangedBy: true
    last_changed_by as LastChangedBy,
    @Semantics.systemDateTime.lastChangedAt: true
    last_changed_at as LastChangedAt
}
