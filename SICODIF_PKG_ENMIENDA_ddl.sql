CREATE OR REPLACE 
PACKAGE pkg_enmienda
/* Formatted on 5-mar.-2017 23:53:24 (QP5 v5.126) */
IS
    TYPE cursortype IS REF CURSOR;

    FUNCTION devuelve_autcon (prm_key_year     IN VARCHAR2,
                              prm_key_cuo      IN VARCHAR2,
                              prm_reg_serial   IN VARCHAR2)
        RETURN VARCHAR2;

    FUNCTION devuelve_justautcon (prm_key_year     IN VARCHAR2,
                                  prm_key_cuo      IN VARCHAR2,
                                  prm_reg_serial   IN VARCHAR2)
        RETURN VARCHAR2;

    FUNCTION reporte_enmiendas (prm_gerencia   IN     VARCHAR2,
                                prm_fec_ini    IN     VARCHAR2,
                                prm_fec_fin    IN     VARCHAR2,
                                ct                OUT cursortype)
        RETURN VARCHAR2;

END;
/

CREATE OR REPLACE 
PACKAGE BODY pkg_enmienda
/* Formatted on 6-mar.-2017 2:55:51 (QP5 v5.126) */
IS
    FUNCTION devuelve_autcon (prm_key_year     IN VARCHAR2,
                              prm_key_cuo      IN VARCHAR2,
                              prm_reg_serial   IN VARCHAR2)
        RETURN VARCHAR2
    IS
        res          VARCHAR2 (50) := '';
        v_key_year   VARCHAR2 (4);
        v_key_cuo    VARCHAR2 (4);
        v_key_dec    VARCHAR2 (17);
        v_key_nber   VARCHAR2 (13);
        cont         NUMBER (10);
    BEGIN
        SELECT   a.key_year,
                 a.key_cuo,
                 a.key_dec,
                 a.key_nber
          INTO   v_key_year,
                 v_key_cuo,
                 v_key_dec,
                 v_key_nber
          FROM   ops$asy.sad_gen a
         WHERE       a.sad_reg_year = prm_key_year
                 AND a.key_cuo = prm_key_cuo
                 AND a.sad_reg_serial = 'C'
                 AND a.sad_reg_nber = prm_reg_serial
                 AND a.lst_ope = 'U'
                 AND a.sad_num = 0;

        SELECT   COUNT (1)
          INTO   cont
          FROM   cd_fiscalizacion a
         WHERE       a.fis_key_year = v_key_year
                 AND a.fis_key_cuo = v_key_cuo
                 AND NVL (a.fis_key_dec, '-') = NVL (v_key_dec, '-')
                 AND a.fis_key_nber = v_key_nber
                 AND a.fis_lst_ope = 'U'
                 AND a.fis_numver = 0;

        IF cont = 0
        THEN
            res := '2';
        ELSE
            SELECT   DECODE (fis_justificativo_feccon, NULL, 0, 1)
              INTO   res
              FROM   cd_fiscalizacion a
             WHERE       a.fis_key_year = v_key_year
                     AND a.fis_key_cuo = v_key_cuo
                     AND NVL (a.fis_key_dec, '-') = NVL (v_key_dec, '-')
                     AND a.fis_key_nber = v_key_nber
                     AND a.fis_lst_ope = 'U'
                     AND a.fis_numver = 0;
        END IF;


        RETURN res;
    END devuelve_autcon;

    FUNCTION devuelve_justautcon (prm_key_year     IN VARCHAR2,
                                  prm_key_cuo      IN VARCHAR2,
                                  prm_reg_serial   IN VARCHAR2)
        RETURN VARCHAR2
    IS
        res          VARCHAR2 (200) := '';
        v_key_year   VARCHAR2 (4);
        v_key_cuo    VARCHAR2 (4);
        v_key_dec    VARCHAR2 (17);
        v_key_nber   VARCHAR2 (13);
        cont         NUMBER (10);
    BEGIN
        SELECT   a.key_year,
                 a.key_cuo,
                 a.key_dec,
                 a.key_nber
          INTO   v_key_year,
                 v_key_cuo,
                 v_key_dec,
                 v_key_nber
          FROM   ops$asy.sad_gen a
         WHERE       a.sad_reg_year = prm_key_year
                 AND a.key_cuo = prm_key_cuo
                 AND a.sad_reg_serial = 'C'
                 AND a.sad_reg_nber = prm_reg_serial
                 AND a.lst_ope = 'U'
                 AND a.sad_num = 0;

        SELECT   COUNT (1)
          INTO   cont
          FROM   cd_fiscalizacion a
         WHERE       a.fis_key_year = v_key_year
                 AND a.fis_key_cuo = v_key_cuo
                 AND NVL (a.fis_key_dec, '-') = NVL (v_key_dec, '-')
                 AND a.fis_key_nber = v_key_nber
                 AND a.fis_lst_ope = 'U'
                 AND a.fis_numver = 0;

        IF cont = 0
        THEN
            res := '2';
        ELSE
            SELECT   DECODE (fis_justificativo_feccon,
                             NULL, '0',
                             fis_justificativo_feccon)
              INTO   res
              FROM   cd_fiscalizacion a
             WHERE       a.fis_key_year = v_key_year
                     AND a.fis_key_cuo = v_key_cuo
                     AND NVL (a.fis_key_dec, '-') = NVL (v_key_dec, '-')
                     AND a.fis_key_nber = v_key_nber
                     AND a.fis_lst_ope = 'U'
                     AND a.fis_numver = 0;
        END IF;


        RETURN res;
    END devuelve_justautcon;

    FUNCTION reporte_enmiendas (prm_gerencia   IN     VARCHAR2,
                                prm_fec_ini    IN     VARCHAR2,
                                prm_fec_fin    IN     VARCHAR2,
                                ct                OUT cursortype)
        RETURN VARCHAR2
    IS
        res    VARCHAR2 (50) := 'CORRECTO';
        cont   NUMBER (10);
    BEGIN
        -- ALTER SESSION SET NLS_TERRITORY=america;


        OPEN ct FOR
            SELECT   TO_NUMBER (a.fis_gestion) gestion,
                     DECODE (a.fis_gerencia,
                             'GRLP', 'LA PAZ',
                             'GRCB', 'COCHABAMBA',
                             'GRSC', 'SANTA CRUZ',
                             'GROR', 'ORURO',
                             'GRTJ', 'TARIJA',
                             'GRPT', 'POTOSI',
                             'GNF-DIA')
                         gerencia,
                     a.fis_nro_control nro_correlativo,
                        b.sad_reg_year
                     || '/'
                     || b.fis_key_cuo
                     || '/C-'
                     || b.sad_reg_nber
                         dui,
                     b.fis_fiscalizador,
                     a.enm_usuario,
                     a.enm_tipo_enmienda,
                     replace(a.enm_info_original,' - ','<br>'),
                     replace(a.enm_info_enmendado,' - ','<br>'),
                     UPPER (a.enm_observacion),
                     TO_CHAR (a.enm_fecha, 'dd/mm/yyyy HH24:mi')
              FROM   cd_enmiendas a, cd_fiscalizacion b
             WHERE       a.fis_gestion = b.fis_gestion
                     AND a.fis_gerencia = b.fis_gerencia
                     AND a.fis_nro_control = b.fis_nro_control
                     AND a.enm_lst_ope = 'U'
                     AND a.enm_numver = 0
                     AND b.fis_lst_ope = 'U'
                     AND b.fis_numver = 0
                     AND a.fis_gerencia LIKE prm_gerencia
                     AND TRUNC (a.enm_fecha) BETWEEN TO_DATE (prm_fec_ini,
                                                              'dd/mm/yyyy')
                                                 AND  TO_DATE (prm_fec_fin,
                                                               'dd/mm/yyyy');

        res := 'CORRECTO';

        RETURN res;
    END;
END;
/

