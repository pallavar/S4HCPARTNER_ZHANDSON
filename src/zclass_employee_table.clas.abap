CLASS zclass_employee_table DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .


  PUBLIC SECTION.

  INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCLASS_EMPLOYEE_TABLE IMPLEMENTATION.


METHOD if_oo_adt_classrun~main.


    data: LT_employee_table type STANDARD TABLE OF ZPR_EMP_TABLE.
          LT_employee_table = value #(
                           ( client = '080' z_emp_id = 'EMP1000' z_emp_name = 'Tommy' z_emp_joining_date = '20230607' )
                           ( client = '080' z_emp_id = 'EMP1001' z_emp_name = 'Johny' z_emp_joining_date = '20230107' )
                           ( client = '080' z_emp_id = 'EMP1002' z_emp_name = 'Kenny' z_emp_joining_date = '20230707' )
                           ( client = '080' z_emp_id = 'EMP1003' z_emp_name = 'Sunny' z_emp_joining_date = '20230709' )
        ).

        OUT->write( SY-DBCNT ).
         MODIFY ZPR_EMP_TABLE FROM TABLE @lt_employee_table.
         OUT->write( SY-DBCNT ).






    out->write( 'ENDING:' ).


ENDMETHOD.
ENDCLASS.
