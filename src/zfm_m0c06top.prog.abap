***INCLUDE M0C06TOP .

PROGRAM SAPM0C10 MESSAGE-ID SV.

DATA  BEGIN OF VCL_DBA_SELLIST OCCURS 1.
       INCLUDE STRUCTURE VIMSELLIST.
DATA  END   OF VCL_DBA_SELLIST.

DATA: BEGIN OF V_TC37P_TOTAL.
       INCLUDE STRUCTURE V_TC37P.
       INCLUDE STRUCTURE VIMFLAGTAB.
DATA: END   OF V_TC37P_TOTAL.

DATA BEGIN OF TC37P_OUT OCCURS 0.                         "<insert
      INCLUDE STRUCTURE TC37P.                            "<insert
DATA END OF TC37P_OUT.                                    "<insert

DATA  BEGIN OF TC37P_TAB1 OCCURS 0.                       "<insert
      INCLUDE STRUCTURE V_TC37P.                          "<insert
      INCLUDE STRUCTURE VIMFLAGTAB.                       "<insert
DATA  END   OF TC37P_TAB1.                                "<insert

DATA  BEGIN OF TC37P_TAB2 OCCURS 0.                       "<insert
      INCLUDE STRUCTURE TC37P.                            "<insert
DATA  END   OF TC37P_TAB2.                                "<insert

DATA: BEGIN OF V_TC37A_TOTAL OCCURS 0.
       INCLUDE STRUCTURE V_TC37A.
       INCLUDE STRUCTURE VIMFLAGTAB.
DATA: END   OF V_TC37A_TOTAL.

DATA: BEGIN OF V_TC37P_SUBKEY,
       MANDT   LIKE V_TC37P-MANDT,
       SCHGRUP LIKE V_TC37P-SCHGRUP,
       PAPLAN  LIKE V_TC37P-PAPLAN,
      END   OF V_TC37P_SUBKEY.

DATA  BEGIN OF V_TC37A_TAB OCCURS 0.
        INCLUDE STRUCTURE V_TC37A.
        INCLUDE STRUCTURE VIMFLAGTAB.
DATA  END OF  V_TC37A_TAB.

DATA  BEGIN OF TC37A_TAB OCCURS 0.                        "<insert
      INCLUDE STRUCTURE TC37A.                            "<insert
DATA  END OF   TC37A_TAB.                                 "<insert

DATA  BEGIN OF V_TC37A_HSTR.
        INCLUDE STRUCTURE V_TC37A.
        INCLUDE STRUCTURE VIMFLAGTAB.
DATA  END OF  V_TC37A_HSTR.

DATA: BEGIN OF KEY1,
       MANDT    LIKE V_TC37A-MANDT,
       SCHGRUP  LIKE V_TC37A-SCHGRUP,
       KAPTPROG LIKE V_TC37A-KAPTPROG,
       ENDDA    LIKE V_TC37A-ENDDA,
      END   OF KEY1.

DATA: BEGIN OF SHIFT_WITH_BREAKS OCCURS 0.                "<insert
         INCLUDE STRUCTURE CRTIMEPERI.                    "<insert
DATA: END OF SHIFT_WITH_BREAKS.                           "<insert

DATA  ERROR_FLAG.
DATA  CHECK_FIELD.

FIELD-SYMBOLS <VCL_TOTAL_V_TC37A>        TYPE TABLE.
FIELD-SYMBOLS <VCL_EXTRACT_V_TC37A>      TYPE TABLE.
FIELD-SYMBOLS <VCL_EXTRACT_V_PARADAS>    TYPE TABLE.
FIELD-SYMBOLS <VCL_TOTAL_V_TC37P>        TYPE TABLE.
FIELD-SYMBOLS <VCL_EXTRACT_V_TC37P>      TYPE TABLE.      "<insert


DATA
    GT_SHIFT_TSTREAM LIKE TC37A OCCURS 0 WITH HEADER LINE.