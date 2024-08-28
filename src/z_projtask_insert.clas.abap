CLASS z_projtask_insert DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS Z_PROJTASK_INSERT IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
    DATA lt_project TYPE TABLE FOR CREATE zi_project.
    DATA ls_project like line of lt_project.

    DATA lt_projecttask TYPE TABLE FOR CREATE zi_project\_projecttasks.
    DATA ls_projecttask like line of lt_projecttask.

    DATA lt_targetprojecttask LIKE ls_projecttask-%target.
    DATA ls_targetprojecttask like line of lt_targetprojecttask.


    ls_project = VALUE #( %cid = 'projectheader'
                           ProjectId = '782' ProjectName = 'pushtesRasdsOCH'
                           %control = VALUE #( ProjectId = if_abap_behv=>mk-on
                                               ProjectName = if_abap_behv=>mk-on
                                               )
                         ).

    append ls_project to lt_project.

    ls_targetprojecttask = VALUE #( %cid = 'projecttaskitem'
                           ProjectTaskName = 'REALIZE' ServiceID = '5' ServiceUnitPrice = '1610' ServiceCurrencyCode = 'USD'
                           %control = VALUE #( ProjectTaskName = if_abap_behv=>mk-on
                                               ServiceID = if_abap_behv=>mk-on
                                               ServiceUnitPrice = if_abap_behv=>mk-on
                                               )
                            ).

     append ls_targetprojecttask to lt_targetprojecttask.


     ls_projecttask = VALUE #( %cid_ref = 'projectheader' %target = lt_targetprojecttask ).
     append ls_projecttask to lt_projecttask.
     clear lt_targetprojecttask.



     MODIFY ENTITIES OF zi_project
        ENTITY Project
        CREATE FROM lt_project
        CREATE BY \_projecttasks FROM lt_projecttask
        MAPPED data(mapped)
        FAILED data(failed)
        REPORTED data(reported).


       if ( failed is initial or reported is initial ).
        COMMIT ENTITIES.

        out->write( 'created record' ).
        ENDIF.








  ENDMETHOD.
ENDCLASS.
