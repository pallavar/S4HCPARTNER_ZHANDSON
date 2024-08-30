

CLASS zbp_i_task DEFINITION

    PUBLIC ABSTRACT FINAL
    CREATE PUBLIC
    FOR BEHAVIOR OF zi_task.

     PUBLIC SECTION.
      INTERFACES: if_oo_adt_classrun,
               if_rap_query_provider.
      PROTECTED SECTION.
      PRIVATE SECTION.

ENDCLASS.



CLASS ZBP_I_TASK IMPLEMENTATION.


METHOD if_oo_adt_classrun~main.

ENDMETHOD.
ENDCLASS.
