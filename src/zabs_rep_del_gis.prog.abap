*&---------------------------------------------------------------------*
*& Report ZABS_REP_DEL_GIS
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zabs_rep_del_gis.

*--Global data declarations
INCLUDE zabs_inc_del_gis_top.
*--Processing data
INCLUDE zabs_inc_del_gis_f01.

*&---------------------------------------------------------------------*
*& AT SELECTION-SCREEN Event
*&---------------------------------------------------------------------*
AT SELECTION-SCREEN.
*--Change Screen Elements
  PERFORM change_screen.

*&---------------------------------------------------------------------*
*& AT SELECTION-SCREEN OUTPUT Event
*&---------------------------------------------------------------------*
AT SELECTION-SCREEN OUTPUT.
*--Change Screen Elements
  PERFORM change_screen.

*&---------------------------------------------------------------------*
*& AT SELECTION-SCREEN ON VALUE-REQUEST FOR Event
*&---------------------------------------------------------------------*
*AT SELECTION-SCREEN ON VALUE-REQUEST FOR...

*&---------------------------------------------------------------------*
*& START-OF-SELECTION
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
START-OF-SELECTION.
  PERFORM select_guid.

*&---------------------------------------------------------------------*
*& END-OF-SELECTION
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
END-OF-SELECTION.
  PERFORM delete_guid.
