CLASS lhc_projecttasks DEFINITION INHERITING FROM cl_abap_behavior_handler.

  PRIVATE SECTION.

    METHODS DetermineTotalProjectCost FOR DETERMINE ON MODIFY
      IMPORTING keys FOR ProjectTasks~DetermineTotalProjectCost.
    METHODS ChangeTaskStatus FOR MODIFY
      IMPORTING keys FOR ACTION ProjectTasks~ChangeTaskStatus.
    METHODS get_instance_features FOR INSTANCE FEATURES
      IMPORTING keys REQUEST requested_features FOR ProjectTasks RESULT result.

    METHODS get_global_authorizations FOR GLOBAL AUTHORIZATION
      IMPORTING REQUEST requested_authorizations FOR ProjectTasks RESULT result.

ENDCLASS.

CLASS lhc_projecttasks IMPLEMENTATION.

  METHOD DetermineTotalProjectCost.

  READ ENTITIES OF ZI_PROJECT IN LOCAL MODE
   ENTITY ProjectTasks
    ALL FIELDS WITH CORRESPONDING #( keys )
    RESULT DATA(projecttaskitems).

    CHECK ( projecttaskitems IS NOT INITIAL ).

    DATA(project_uuid) = projecttaskitems[ 1 ]-ProjectUuid.

    READ ENTITIES OF ZI_PROJECT IN LOCAL MODE
    ENTITY Project
    BY \_projecttasks
    ALL FIELDS WITH
    VALUE #( (  %tky-ProjectUuid = project_uuid
                %is_draft = if_abap_behv=>mk-on  ) )
    RESULT DATA(result_all_tasks).

    DATA(total_cost) = 0.

    LOOP AT result_all_tasks INTO DATA(task).
     total_cost = total_cost + ( task-ServiceUnitPrice ).
    ENDLOOP.

    MODIFY ENTITIES OF ZI_PROJECT IN LOCAL MODE
    ENTITY Project
    UPDATE FROM VALUE #( (  %tky-ProjectUuid = project_uuid
                            %is_draft = if_abap_behv=>mk-on
                         %data-TotalProjectCost = total_cost
                         %data-TotalProjectCostCurrencyCode = 'USD'
                         %control-TotalProjectCost = if_abap_behv=>mk-on
                         %control-TotalProjectCostCurrencyCode = if_abap_behv=>mk-on ) )
    FAILED DATA(faileddata)
    REPORTED DATA(reporteddata).


  ENDMETHOD.

  METHOD ChangeTaskStatus.
      data lt_header_u TYPE TABLE FOR UPDATE zi_project_task.
      data ls_header_u LIKE LINE OF lt_header_u.



      READ ENTITIES OF ZI_PROJECT
       ENTITY ProjectTasks
        ALL FIELDS WITH VALUE #(  ( %key-ProjectTaskItemUuid = keys[ 1 ]-%key-ProjectTaskItemUuid ) )
        RESULT DATA(tasks).

        LOOP AT tasks INTO data(task).

*         data(statusvalue) = COND #( WHEN task-TaskStatus EQ ''
*                             THEN if_abap_behv=>fc-o-disabled
*
*                              WHEN task-TaskStatus EQ 'Completed'
*                              THEN if_abap_behv=>fc-o-disabled
*
*                               ELSE if_abap_behv=>fc-o-enabled ).
*
*                   result = VALUE #( ( %tky = lt_header_status_u_var-%tky
*                            %action-ChangeTaskStatus = statusvalue ) ).

            ls_header_u = CORRESPONDING #( task ).
            ls_header_u-TaskStatus = 'Completed'.
            ls_header_u-%control-TaskStatus = if_abap_behv=>mk-on.
            APPEND ls_header_u TO lt_header_u.
        ENDLOOP.

        MODIFY ENTITIES OF ZI_PROJECT
        ENTITY ProjectTasks
        UPDATE FROM lt_header_u
        FAILED DATA(fail)
        REPORTED DATA(rep).

  ENDMETHOD.

  METHOD get_instance_features.
  ENDMETHOD.

  METHOD get_global_authorizations.
  ENDMETHOD.

ENDCLASS.

CLASS lsc_zi_project DEFINITION INHERITING FROM cl_abap_behavior_saver.

  PROTECTED SECTION.

    METHODS cleanup_finalize REDEFINITION.

ENDCLASS.

CLASS lsc_zi_project IMPLEMENTATION.

  METHOD cleanup_finalize.
  ENDMETHOD.

ENDCLASS.

CLASS lhc_project DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_global_authorizations FOR GLOBAL AUTHORIZATION
      IMPORTING REQUEST requested_authorizations FOR project RESULT result.
    METHODS release FOR MODIFY
      IMPORTING keys FOR ACTION project~release.
    METHODS determineprojectstatus FOR VALIDATE ON SAVE
      IMPORTING keys FOR project~determineprojectstatus.
    METHODS changestatus FOR MODIFY
      IMPORTING keys FOR ACTION project~changestatus.
    METHODS get_instance_features FOR INSTANCE FEATURES
      IMPORTING keys REQUEST requested_features FOR project RESULT result.

    METHODS get_global_features FOR GLOBAL FEATURES
      IMPORTING REQUEST requested_features FOR project RESULT result.
    METHODS defaultprojectstatus FOR DETERMINE ON SAVE
      IMPORTING keys FOR project~defaultprojectstatus.

ENDCLASS.

CLASS lhc_project IMPLEMENTATION.

  METHOD get_global_authorizations.
  ENDMETHOD.

  METHOD Release.

  data lt_header_u TYPE TABLE FOR UPDATE zi_project.
  data ls_header_u LIKE LINE OF lt_header_u.

  READ ENTITIES OF ZI_PROJECT
   ENTITY Project
    ALL FIELDS WITH VALUE #(  ( %key-ProjectUuid = keys[ 1 ]-%key-ProjectUuid ) )
    RESULT DATA(header).

    LOOP AT header INTO data(ls_h).
        ls_header_u = CORRESPONDING #( ls_h ).
        ls_header_u-ZProjectStatus = 'Released'.
        ls_header_u-%control-ZProjectStatus = if_abap_behv=>mk-on.
        APPEND ls_header_u TO lt_header_u.
    ENDLOOP.

    MODIFY ENTITIES OF ZI_PROJECT
    ENTITY Project
    UPDATE FROM lt_header_u
    FAILED DATA(fail)
    REPORTED DATA(rep).

  ENDMETHOD.

  METHOD DetermineProjectStatus.

  ENDMETHOD.

  METHOD ChangeStatus.

    MODIFY ENTITIES OF ZI_PROJECT IN LOCAL MODE
    ENTITY Project
    UPDATE FIELDS ( ZProjectStatus )
    WITH VALUE #( FOR key IN keys
                    ( %key-ProjectUuid = key-ProjectUuid
                      ZProjectStatus = key-%param-tobestatus ) )
    FAILED DATA(failed_status)
    REPORTED DATA(reported_status).


  ENDMETHOD.

  METHOD get_instance_features.
    data lt_header_status_u_inst TYPE TABLE FOR UPDATE zi_project.
    data ls_header_status_u_inst LIKE LINE OF lt_header_status_u_inst.
*    DATA: new_message_with_text TYPE any.

  READ ENTITIES OF ZI_PROJECT IN LOCAL MODE
    ENTITY Project
    FIELDS ( ZProjectStatus )
    WITH VALUE #(  ( %key-ProjectUuid = keys[ 1 ]-%key-ProjectUuid ) )
    RESULT DATA(result_var).

    LOOP AT result_var INTO data(lt_header_status_u_var).
        data(statusvalue) = COND #( WHEN lt_header_status_u_var-ZProjectStatus EQ 'Invoiced'
                                    THEN if_abap_behv=>fc-o-disabled

                                    WHEN lt_header_status_u_var-ZProjectStatus EQ 'Completed'
                                    THEN if_abap_behv=>fc-o-disabled

                                    ELSE if_abap_behv=>fc-o-enabled ).

        result = VALUE #( ( %tky = lt_header_status_u_var-%tky
                            %action-ChangeStatus = statusvalue ) ).

        reported-project = VALUE #( ( %tky = lt_header_status_u_var-%tky
                            %action-ChangeStatus = statusvalue
                            %msg = new_message_with_text( text = 'Can not change status for these instances' ) ) ).
    ENDLOOP.


  ENDMETHOD.

  METHOD get_global_features.

   result-%delete = if_abap_behv=>fc-o-disabled.

  ENDMETHOD.

  METHOD DefaultProjectStatus.
   data lt_header_status_u TYPE TABLE FOR UPDATE zi_project.
  data ls_header_status_u LIKE LINE OF lt_header_status_u.

      data lv_system_date TYPE d.
         " Get the current system date
    lv_system_date = cl_abap_context_info=>get_system_date( ).

  READ ENTITIES OF ZI_PROJECT
   ENTITY Project
    ALL FIELDS WITH VALUE #(  ( %key-ProjectUuid = keys[ 1 ]-%key-ProjectUuid ) )
    RESULT DATA(header_status).

    LOOP AT header_status INTO data(ls_status_h).
        ls_header_status_u = CORRESPONDING #( ls_status_h ).
        CHECK ls_header_status_u-ZProjectStatus = ''.

            ls_header_status_u-ZProjectStatus = '02'.
*            ls_header_status_u-ProjectStartDate = cl_abap_context_info=>get_system_date( ).
            ls_header_status_u-ProjectStartDate = lv_system_date - 30.
            ls_header_status_u-ProjectEndDate = lv_system_date - 1.

            ls_header_status_u-%control-ZProjectStatus = if_abap_behv=>mk-on.
            ls_header_status_u-%control-ProjectStartDate = if_abap_behv=>mk-on.
            ls_header_status_u-%control-ProjectEndDate = if_abap_behv=>mk-on.


            APPEND ls_header_status_u TO lt_header_status_u.

    ENDLOOP.

    MODIFY ENTITIES OF ZI_PROJECT
    ENTITY Project
    UPDATE FROM lt_header_status_u
    FAILED DATA(fail)
    REPORTED DATA(rep).

  ENDMETHOD.

ENDCLASS.
