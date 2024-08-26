CLASS zclass_status DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCLASS_STATUS IMPLEMENTATION.


METHOD if_oo_adt_classrun~main.

data: LT_status_table type STANDARD TABLE OF zdb_status.
          LT_status_table = value #(
                           ( client = '080'  statuscode = 'O' statusdesc = 'Open' )
                           ( client = '080'  statuscode = 'A' statusdesc = 'Accepted' )
                           ( client = '080'  statuscode = 'R' statusdesc = 'Rejected' )

        ).

        INSERT zdb_status FROM TABLE @LT_status_table.


ENDMETHOD.
ENDCLASS.
