CLASS zcl_jsonparse_demo DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_JSONPARSE_DEMO IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    DATA query_string TYPE string.
        DATA json_string TYPE string.

DATA result TYPE string.

*       me->JSONPARSECALL( out = out ).

*    json_string  = '{"bookstore": "My bookstore", "address":{"street" : "sivasailam street", "city": "Chennai", "pincode" : "600017"}, "book":[{ "title": "allopen","author": "pallava" ,"title": "closed","author": "rajan"  }] }'.

*    json_string  = '{"results":[{ "ObjectID": "ABB70CEFB10D1EEF808A69325CED4A49","InternalID": "S4BYDMAT" ,"Description": "S4HANA BYD MATERIAL" }]  }'.

    json_string  = '{"d": {"results":[{ "ObjectID": "ABB70CEFB10D1EEF808A69325CED4A49","InternalID": "S4BYDMAT" ,"Description": "S4HANA BYD MATERIAL" }]  } }'.


" Create an instance of the class
DATA(jsonpath) = NEW zcl_jsonpath( ).

" Set the JSON string
jsonpath->set( json_string = json_string ).

*" Example 1: Get the bookstore name
*query_string = 'bookstore'.
*result = jsonpath->get( query_string = query_string ).
*out->write( 'Bookstore: ' && result ).

" Example 2: Get the city
*query_string = '$.address.city'.
*query_string = '$.book[1].author'.
*result = jsonpath->get( query_string = '$.bookstore' ).
*result = jsonpath->get( query_string = '$.address.city' ).
*result = jsonpath->get( query_string = '$.book[1].title' ).

result = jsonpath->get( query_string = 'd.results[1].ObjectID' ).


              REPLACE ALL OCCURRENCES OF '"' IN result WITH ''.


out->write( 'City: ' && result ).

*" Example 3: Get the pincode
*query_string = 'address.pincode'.
*result = jsonpath->get( query_string = query_string ).
*out->write( 'Pincode: ' && result ).


  ENDMETHOD.
ENDCLASS.
