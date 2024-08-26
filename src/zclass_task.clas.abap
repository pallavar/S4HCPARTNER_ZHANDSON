CLASS zclass_task DEFINITION
 PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES: if_oo_adt_classrun.

  PROTECTED SECTION.
  PRIVATE SECTION.

ENDCLASS.



CLASS ZCLASS_TASK IMPLEMENTATION.


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
