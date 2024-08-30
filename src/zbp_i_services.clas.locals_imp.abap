CLASS lsc_zi_services DEFINITION INHERITING FROM cl_abap_behavior_saver.

  PROTECTED SECTION.

    METHODS adjust_numbers REDEFINITION.

ENDCLASS.

CLASS lsc_zi_services IMPLEMENTATION.

  METHOD adjust_numbers.

  SELECT max( service_id )
    from zservices
      into @data(lv_max_serviceID).
      data(lv_unique_serviceID) = lv_max_serviceID + 1.

    LOOP AT mapped-services REFERENCE INTO DATA(map).
        map->ServiceId = lv_unique_serviceID.
    ENDLOOP.
  ENDMETHOD.

ENDCLASS.

CLASS lhc_services DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_instance_authorizations FOR INSTANCE AUTHORIZATION
      IMPORTING keys REQUEST requested_authorizations FOR services RESULT result.

ENDCLASS.

CLASS lhc_services IMPLEMENTATION.

  METHOD get_instance_authorizations.
  ENDMETHOD.

ENDCLASS.
