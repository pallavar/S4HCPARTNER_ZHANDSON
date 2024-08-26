CLASS zcl_jsonpath DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS:
        set IMPORTING json_string TYPE string,
        get IMPORTING query_string TYPE string
            RETURNING VALUE(r_value) TYPE string.
    CLASS-METHODS:
        query IMPORTING json_string TYPE string
                        query_string TYPE string
              RETURNING VALUE(r_value) TYPE string.
  PROTECTED SECTION.
    METHODS:
        set_json_string IMPORTING json_string TYPE string,
        set_query_string IMPORTING query_string TYPE string,
        get_property_from_query_part IMPORTING query_part TYPE string
                    RETURNING VALUE(r_result) TYPE string,
        get_query_part_type IMPORTING query_part TYPE string
                    RETURNING VALUE(r_result) TYPE string,
        query_part_contains_array IMPORTING query_part TYPE string
                    RETURNING VALUE(r_result) TYPE abap_bool,
        find_and_set_array_element IMPORTING query_part TYPE string,
        get_content_between_delimiters IMPORTING str TYPE string
                                                 start_delimiter TYPE c
                                                 end_delimiter TYPE c
                                                 if_limiter_at_edges_only TYPE abap_bool
                                       RETURNING VALUE(r_result) TYPE string,
        get_index_from_query_part IMPORTING query_part TYPE string
                            RETURNING VALUE(r_index) TYPE string,
        format_output RETURNING VALUE(r_value) TYPE string.

  PRIVATE SECTION.
    DATA : json_string TYPE string,
           query_string TYPE string,
           query_parts TYPE TABLE OF string,
           abap_object TYPE REF TO data,
           abap_worker_object TYPE REF TO data.
ENDCLASS.



CLASS ZCL_JSONPATH IMPLEMENTATION.


  METHOD find_and_set_array_element.
    DATA: lv_index_from_query_part TYPE i VALUE 0,
          lv_count TYPE i VALUE 0.

    FIELD-SYMBOLS: <data> TYPE data,
                   <ls_line> TYPE any.

    ASSIGN me->abap_worker_object->* TO <data>.
    IF me->query_part_contains_array( query_part ).
      lv_index_from_query_part = CONV i( me->get_index_from_query_part( query_part ) ).

      " Loop through the ABAP object (JSON array)
      LOOP AT <data> ASSIGNING <ls_line>.
        " Right element found in array
*        IF lv_index_from_query_part = lv_count.
        IF lv_index_from_query_part = 1.

          " Reduce object to the found array_item for potential further query_string segment iterations
          me->abap_worker_object = <ls_line>.
          EXIT.
        ENDIF.
        lv_count = lv_count + 1.
      ENDLOOP.
    ENDIF.
  ENDMETHOD.


  METHOD format_output.
    FIELD-SYMBOLS: <fs_output> TYPE any.
    ASSIGN me->abap_worker_object->* TO <fs_output>.

    IF <fs_output> IS ASSIGNED.
      r_value = /ui2/cl_json=>serialize( data = <fs_output> pretty_name = abap_true ).
    ELSE.
      r_value = ''.
    ENDIF.
  ENDMETHOD.


  METHOD get.
    DATA : lv_property TYPE string,
           lv_query_part_type TYPE string,
           lv_index_from_query_part TYPE i VALUE 0,
           lv_count TYPE i VALUE 0.

    FIELD-SYMBOLS :
      <query_part> TYPE string,
      <data> TYPE data,
      <field> TYPE any.

    " Splitting query_string into internal table
    me->set_query_string( query_string ).

    "create abap worker object that we change during processing
    me->abap_worker_object = me->abap_object.

    " Query the JSON path and return the result
    IF me->abap_worker_object IS BOUND.
      LOOP AT me->query_parts ASSIGNING <query_part>.
        IF <query_part> EQ '$'.
          CONTINUE.
        ENDIF.

        ASSIGN me->abap_worker_object->* TO <data>.
        lv_property = me->get_property_from_query_part( <query_part> ).
        ASSIGN COMPONENT lv_property OF STRUCTURE <data> TO <field>.

        IF <field> IS ASSIGNED.
          me->abap_worker_object = <field>.

          lv_query_part_type = me->get_query_part_type( <query_part> ).
          CASE lv_query_part_type.
            WHEN 'property'.
              " No additional processing needed
            WHEN 'array_element'.
              me->find_and_set_array_element( <query_part> ).
            WHEN OTHERS.
              " Handle other cases if necessary
          ENDCASE.

          " Format the output to string, in case there is no further query_part iteration.
          r_value = me->format_output( ).

          UNASSIGN <field>.
        ELSE.
          r_value = ''. " Not found.
          EXIT.
        ENDIF.
      ENDLOOP.
    ENDIF.
  ENDMETHOD.


  METHOD get_content_between_delimiters.
    DATA: lv_start_pos TYPE i,
          lv_end_pos TYPE i,
          lv_length TYPE i.

    IF if_limiter_at_edges_only = abap_true AND str+0(1) <> start_delimiter.
      r_result = str.
    ELSE.
      lv_start_pos = find( val = str sub = start_delimiter ).
      lv_end_pos = find( val = str sub = end_delimiter ).

      IF lv_start_pos GE 0 AND lv_end_pos GT lv_start_pos.
        lv_length = lv_end_pos - lv_start_pos - 1.
        r_result = substring( val = str off = lv_start_pos + 1 len = lv_length ).
      ELSE.
        r_result = ''.
      ENDIF.
    ENDIF.
  ENDMETHOD.


  METHOD get_index_from_query_part.
    " Get index between brackets e.g. book[1] delivers 1
    r_index = me->get_content_between_delimiters( str = query_part start_delimiter = '[' end_delimiter = ']' if_limiter_at_edges_only = abap_false ).
  ENDMETHOD.


  METHOD get_property_from_query_part.
    IF me->query_part_contains_array( query_part ).
      r_result = segment( val = query_part index = 1 sep = '[' ).
    ELSE.
      r_result = query_part.
    ENDIF.
  ENDMETHOD.


  METHOD get_query_part_type.
    IF me->query_part_contains_array( query_part ).
      r_result = 'array_element'.
    ELSE.
      r_result = 'property'.
    ENDIF.
  ENDMETHOD.


  METHOD query.
    " Static method for all-in-one call
    DATA(jsonpath) = NEW zcl_jsonpath( ).
    jsonpath->set( json_string = json_string ).
    r_value = jsonpath->get( query_string = query_string ).
  ENDMETHOD.


  METHOD query_part_contains_array.

   " Initialize result
    r_result = abap_false.

    " Check if '[' exists in the query_part
    DATA(lv_position) = find( val = query_part sub = '[' ).

*    IF find( val = query_part sub = '[1]' ) NE 0.
     IF lv_position > 0.
      r_result = abap_true.
    ELSE.
      r_result = abap_false.
    ENDIF.
  ENDMETHOD.


  METHOD set.
    " Set the passed JSON string
    me->set_json_string( json_string ).

    " Create ABAP object from JSON on the fly
    DATA(lo_data) = /ui2/cl_json=>generate( json = json_string ).
    me->abap_object = lo_data.
  ENDMETHOD.


  METHOD set_json_string.
    me->json_string = json_string.
  ENDMETHOD.


  METHOD set_query_string.
    me->query_string = query_string.
    " Splitting query_string into internal_table
    SPLIT query_string AT '.' INTO TABLE me->query_parts.
  ENDMETHOD.
ENDCLASS.
