CLASS zcl_get_byd_mat_api DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
        TYPES tt_za_materialdetails TYPE STANDARD TABLE OF Z00_MODEL_BYDMAT=>tys_material WITH EMPTY KEY.
    METHODS get_bydmaterial_details RETURNING VALUE(rt_table) TYPE tt_za_materialdetails.
ENDCLASS.



CLASS zcl_get_byd_mat_api IMPLEMENTATION.
    METHOD if_oo_adt_classrun~main.
            out->write( get_bydmaterial_details( ) ).
    ENDMETHOD.

    METHOD get_bydmaterial_details.

        DATA:
              lt_business_data TYPE TABLE OF z00_model_bydmat=>tys_material,
              lo_http_client   TYPE REF TO if_web_http_client,
              lo_client_proxy  TYPE REF TO /iwbep/if_cp_client_proxy,
              lo_request       TYPE REF TO /iwbep/if_cp_request_read_list,
              lo_response      TYPE REF TO /iwbep/if_cp_response_read_lst.

        DATA: lv_url TYPE string VALUE 'https://my316508.sapbydesign.com/'.

        DATA:
         lo_filter_factory   TYPE REF TO /iwbep/if_cp_filter_factory,
         lo_filter_node_1    TYPE REF TO /iwbep/if_cp_filter_node,
*         lo_filter_node_2    TYPE REF TO /iwbep/if_cp_filter_node,
         lo_filter_node_root TYPE REF TO /iwbep/if_cp_filter_node,
         lt_range_internal_id TYPE RANGE OF z00_model_bydmat=>tys_material-internal_id.
*         lt_range_UUID TYPE RANGE OF sysuuid_x16.


TRY.

 " 1. Get the destination of remote system; Create http client
    DATA(lo_destination) = cl_http_destination_provider=>create_by_comm_arrangement(
                                                comm_scenario  = 'Z_COMMU_BYD_MATERIAL'
*                                                comm_system_id = 'BYD_IP_SYS'
*                                                 service_id     = ''
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


        " Navigate to the resource and create a request for the read operation
        lo_request = lo_client_proxy->create_resource_for_entity_set( 'MATERIAL_COLLECTION' )->create_request_for_read( ).

        " Create the filter tree
        lo_filter_factory       = lo_request->create_filter_factory( ).
        lt_range_internal_id    = VALUE #( ( sign = 'I' option = 'EQ' low = 'APPL1' high = ' ' ) ).
        lo_filter_node_1        = lo_filter_factory->create_by_range( iv_property_path     = 'INTERNAL_ID'
        it_range                = lt_range_internal_id ).
        lo_filter_node_root     = lo_filter_node_1.
        lo_request->set_filter( lo_filter_node_root ).
        lo_request->set_top( 100 )->set_skip( 0 ).


      " Execute the request and retrieve the business data
        lo_response = lo_request->execute( ).
        lo_response->get_business_data( IMPORTING et_business_data = rt_table ).


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
