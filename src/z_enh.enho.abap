CLASS lcl_z_enh DEFINITION DEFERRED.
CLASS zcl_test_clas_with_enho DEFINITION LOCAL FRIENDS lcl_z_enh.
CLASS lcl_z_enh DEFINITION.
  PUBLIC SECTION.
    CLASS-DATA obj TYPE REF TO lcl_z_enh.                   "#EC NEEDED
    DATA core_object TYPE REF TO zcl_test_clas_with_enho .  "#EC NEEDED
 INTERFACES  IPR_Z_ENH.
    METHODS:
      constructor IMPORTING core_object
                              TYPE REF TO zcl_test_clas_with_enho OPTIONAL.
ENDCLASS.
CLASS lcl_z_enh IMPLEMENTATION.
  METHOD constructor.
    me->core_object = core_object.
  ENDMETHOD.

  METHOD ipr_z_enh~run.
*"------------------------------------------------------------------------*
*" Declaration of PRE-method, do not insert any comments here please!
*"
*"methods RUN .
*"------------------------------------------------------------------------*

    IF 1 = 1.

    ENDIF.

  ENDMETHOD.
ENDCLASS.
