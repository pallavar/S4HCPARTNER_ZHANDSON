CLASS lhc_taskitem DEFINITION INHERITING FROM cl_abap_behavior_handler.

  PRIVATE SECTION.

    METHODS DueDateValidation FOR VALIDATE ON SAVE
      IMPORTING keys FOR TaskItem~DueDateValidation.

ENDCLASS.

CLASS lhc_taskitem IMPLEMENTATION.

  METHOD DueDateValidation.


READ ENTITIES OF ZI_TASK
  ENTITY TaskItem
  FIELDS ( DueDate )
  WITH VALUE #(  ( %key-TaskItemUuid = keys[ 1 ]-%key-TaskItemUuid ) )
  RESULT data(result).

  "raise error message for past date"
  LOOP AT result INTO data(ls_result).
    IF ls_result-DueDate < sy-datum.
        failed-taskitem     = VALUE #(  ( %key-TaskItemUuid = ls_result-TaskItemUuid ) ).
        reported-taskitem   = VALUE #(  ( %key-TaskItemUuid = ls_result-TaskItemUuid
                       %msg = new_message_with_text( text = 'Past Date not allowed' ) ) ).
    ENDIF.

  ENDLOOP.

  ENDMETHOD.

ENDCLASS.

CLASS lhc_task DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_instance_authorizations FOR INSTANCE AUTHORIZATION
      IMPORTING keys REQUEST requested_authorizations FOR task RESULT result.

ENDCLASS.

CLASS lhc_task IMPLEMENTATION.

  METHOD get_instance_authorizations.
  ENDMETHOD.

ENDCLASS.


CLASS read_task DEFINITION.
  PUBLIC SECTION.
  INTERFACES if_oo_adt_classrun.


  PROTECTED SECTION.
  PRIVATE SECTION.

ENDCLASS.

CLASS read_task IMPLEMENTATION.

METHOD if_oo_adt_classrun~main.

READ ENTITIES OF zi_task
    ENTITY Task
    FIELDS ( TaskId TaskName ) WITH VALUE #( ( %key-TaskUuid = '25B76CDB5D4B1EEEAEBBC3965062B1BC' ) )
    RESULT DATA(result)
    FAILED DATA(failed)
    REPORTED DATA(reported).

    out->write( result ).

    READ ENTITIES OF zi_task
    ENTITY Task by \_item
    FIELDS ( SubTaskName TaskItemId ) WITH VALUE #( ( %key-TaskUuid = '25B76CDB5D4B1EEEAEBBC3965062B1BC' ) )
    RESULT DATA(result1)
    FAILED DATA(failed1)
    REPORTED DATA(reported1).

    out->write( result1 ).



ENDMETHOD.

ENDCLASS.
