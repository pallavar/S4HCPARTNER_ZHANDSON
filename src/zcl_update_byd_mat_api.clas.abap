CLASS zcl_update_byd_mat_api DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

    PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
        TYPES tt_za_materialdetails TYPE STANDARD TABLE OF Z00_MODEL_BYDMAT=>tys_material WITH EMPTY KEY.
    METHODS update_bydmaterial_details RETURNING VALUE(rt_table) TYPE tt_za_materialdetails.
ENDCLASS.



CLASS zcl_update_byd_mat_api IMPLEMENTATION.

 METHOD if_oo_adt_classrun~main.
            out->write( update_bydmaterial_details( ) ).
    ENDMETHOD.

    METHOD update_bydmaterial_details.

        DATA:
  ls_business_data TYPE z00_model_bydmat=>tys_material,
  ls_entity_key    TYPE z00_model_bydmat=>tys_material,
  lo_http_client   TYPE REF TO if_web_http_client,
  lo_client_proxy  TYPE REF TO /iwbep/if_cp_client_proxy,
  lo_resource      TYPE REF TO /iwbep/if_cp_resource_entity,
  lo_request       TYPE REF TO /iwbep/if_cp_request_update,
  lo_response      TYPE REF TO /iwbep/if_cp_response_update.


        DATA: lv_url TYPE string VALUE 'https://my316508.sapbydesign.com/'.



TRY.
" Create http client
DATA(lo_destination) = cl_http_destination_provider=>create_by_comm_arrangement(
                                               comm_scenario  = 'Z_COMMU_BYD_MATERIAL'
                                               comm_system_id = 'BYD_IP_SYS'
*                                             service_id     = '<Service Id>'
).

lo_http_client = cl_web_http_client_manager=>create_by_http_destination( lo_destination ).

lo_http_client = cl_web_http_client_manager=>create_by_http_destination(
    i_destination = cl_http_destination_provider=>create_by_url( lv_url ) ).

        lo_http_client->get_http_request( )->set_header_fields( VALUE #(
             (  name = 'Authorization' value = 'Basic bXVndW50aGFuOldlbGNvbWUyMDI0QFNBUEJUUDRVUw==') ) ).

lo_client_proxy = /iwbep/cl_cp_factory_remote=>create_v2_remote_proxy(
  EXPORTING
     is_proxy_model_key       = VALUE #( repository_id       = 'DEFAULT'
                                         proxy_model_id      = 'Z00_MODEL_BYDMAT'
                                         proxy_model_version = '0001' )
    io_http_client             = lo_http_client
    iv_relative_service_root   = '/sap/byd/odata/cust/v1/vmumaterial/' ).

ASSERT lo_http_client IS BOUND.


" Set entity key
ls_entity_key = VALUE #( internal_id = 'APPL1' ).

*z00_model_bydmat=>gcs_entity_set = 'A5DECC17C1271EEEBEFD40D18D30C26E'

" Prepare the business data
ls_business_data = VALUE #(
*           object_id                   = 'A5DECC17C1271EEEBEFD40D18D30C26E'
*          uuid                        = '11112222333344445555666677778888'
*          internal_id                 = 'InternalId'
           description                 = 'helloworld'
*          description_language_code   = 'DescriptionLanguageCode'
*          description_language_cod_2  = 'DescriptionLanguageCod2'
*          base_measure_unit_code      = 'BaseMeasureUnitCode'
*          base_measure_unit_code_tex  = 'BaseMeasureUnitCodeTex'
*          identified_stock_type_code  = 'IdentifiedStockTypeCode'
*          identified_stock_type_co_2  = 'IdentifiedStockTypeCo2'
*          serial_number_profile_code  = 'SerialNumberProfileCode'
*          serial_number_profile_co_2  = 'SerialNumberProfileCo2'
*          creation_date_time          = 20170101123000
*          last_change_date_time       = 20170101123000
*          planning_measure_unit_code  = 'PlanningMeasureUnitCode'
*          planning_measure_unit_co_2  = 'PlanningMeasureUnitCo2'
*          valuation_level_type_code   = 'ValuationLevelTypeCode'
*          valuation_level_type_cod_2  = 'ValuationLevelTypeCod2'
).

" Navigate to the resource and create a request for the update operation
lo_resource = lo_client_proxy->create_resource_for_entity_set( 'MATERIAL_COLLECTION' )->navigate_with_key( ls_entity_key ).
lo_request = lo_resource->create_request_for_update( /iwbep/if_cp_request_update=>gcs_update_semantic-put ).


lo_request->set_business_data( ls_business_data ).

" Execute the request and retrieve the business data
lo_response = lo_request->execute( ).

" Get updated entity
*CLEAR ls_business_data.
*lo_response->get_business_data( importing es_business_data = ls_business_data ).

CATCH /iwbep/cx_cp_remote INTO DATA(lx_remote).
" Handle remote Exception
" It contains details about the problems of your http(s) connection

CATCH /iwbep/cx_gateway INTO DATA(lx_gateway).
" Handle Exception

CATCH cx_web_http_client_error INTO DATA(lx_web_http_client_error).
" Handle Exception
RAISE SHORTDUMP lx_web_http_client_error.


ENDTRY.

    ENDMETHOD.
ENDCLASS.
