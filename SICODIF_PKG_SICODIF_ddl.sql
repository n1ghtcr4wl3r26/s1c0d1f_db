CREATE OR REPLACE 
PACKAGE pkg_sicodif
/* Formatted on 5-mar.-2017 23:33:21 (QP5 v5.126) */
IS
    TYPE cursortype IS REF CURSOR;


    FUNCTION devuelve_control (prm_key_year   IN     VARCHAR2,
                               prm_key_cuo    IN     VARCHAR2,
                               prm_reg_nber   IN     VARCHAR2,
                               ct                OUT cursortype)
        RETURN VARCHAR2;

    FUNCTION lista_aduana (ct OUT cursortype)
        RETURN VARCHAR2;

    FUNCTION lista_aduana_gerencia (ct OUT cursortype, gerencia VARCHAR2)
        RETURN VARCHAR2;

    FUNCTION lista_fiscalizadores (ct OUT cursortype, gerencia VARCHAR)
        RETURN VARCHAR2;

    FUNCTION devuelve_estado (prm_key_year     IN VARCHAR2,
                              prm_key_cuo      IN VARCHAR2,
                              prm_reg_serial   IN VARCHAR2)
        RETURN VARCHAR2;

    FUNCTION devuelve_consulta (prm_key_year     IN     VARCHAR2,
                                prm_key_cuo      IN     VARCHAR2,
                                prm_reg_serial   IN     VARCHAR2,
                                ct                  OUT cursortype)
        RETURN VARCHAR2;


    FUNCTION devuelve_ufv (prm_fecha IN VARCHAR2)
        RETURN VARCHAR2;

    FUNCTION devuelve_gerencia (prm_usuario IN VARCHAR2)
        RETURN VARCHAR2;

    FUNCTION devuelve_fecha_levante (prm_key_year   IN VARCHAR2,
                                     prm_key_cuo    IN VARCHAR2,
                                     prm_key_dec    IN VARCHAR2,
                                     prm_key_nber   IN VARCHAR2)
        RETURN VARCHAR2;

    FUNCTION bandeja_supervisor (prm_gerencia   IN     VARCHAR2,
                                 prm_estado     IN     VARCHAR2,
                                 ct                OUT cursortype)
        RETURN VARCHAR2;

    FUNCTION bandeja_fiscalizador (prm_fiscalizador   IN     VARCHAR2,
                                   prm_estado         IN     VARCHAR2,
                                   ct                    OUT cursortype)
        RETURN VARCHAR2;

    FUNCTION reporte1 (prm_gerencia   IN     VARCHAR2,
                       prm_fec_ini    IN     VARCHAR2,
                       prm_fec_fin    IN     VARCHAR2,
                       ct                OUT cursortype)
        RETURN VARCHAR2;

    FUNCTION reporte2 (prm_gerencia   IN     VARCHAR2,
                       prm_fec_ini    IN     VARCHAR2,
                       prm_fec_fin    IN     VARCHAR2,
                       ct                OUT cursortype)
        RETURN VARCHAR2;

    FUNCTION reporte3 (prm_gerencia   IN     VARCHAR2,
                       prm_fec_ini    IN     VARCHAR2,
                       prm_fec_fin    IN     VARCHAR2,
                       ct                OUT cursortype)
        RETURN VARCHAR2;

    FUNCTION reporte4 (prm_gerencia   IN     VARCHAR2,
                       prm_fec_ini    IN     VARCHAR2,
                       prm_fec_fin    IN     VARCHAR2,
                       ct                OUT cursortype)
        RETURN VARCHAR2;



    FUNCTION reporte5 (prm_gerencia   IN     VARCHAR2,
                       prm_fec_ini    IN     VARCHAR2,
                       prm_fec_fin    IN     VARCHAR2,
                       ct                OUT cursortype)
        RETURN VARCHAR2;

    FUNCTION lista_recibos (prm_key_year     IN     VARCHAR2,
                            prm_key_cuo      IN     VARCHAR2,
                            prm_reg_serial   IN     VARCHAR2,
                            ct                  OUT cursortype)
        RETURN VARCHAR2;

    FUNCTION elimina_recibo (prm_key_year     IN VARCHAR2,
                             prm_key_cuo      IN VARCHAR2,
                             prm_reg_serial   IN VARCHAR2,
                             prm_id           IN VARCHAR2,
                             prm_usuario      IN VARCHAR2)
        RETURN VARCHAR2;

    FUNCTION devuelve_dui (prm_key_year     IN     VARCHAR2,
                           prm_key_cuo      IN     VARCHAR2,
                           prm_reg_serial   IN     VARCHAR2,
                           ct                  OUT cursortype)
        RETURN VARCHAR2;

    FUNCTION finaliza_control (prm_key_year          IN VARCHAR2,
                               prm_key_cuo           IN VARCHAR2,
                               prm_reg_serial        IN VARCHAR2,
                               prm_tipo_doc_con      IN VARCHAR2,
                               prm_reg_nro_inf       IN VARCHAR2,
                               prm_reg_fec_inf       IN VARCHAR2,
                               prm_reg_nro_doc_con   IN VARCHAR2,
                               prm_reg_fec_doc_con   IN VARCHAR2,
                               prm_observaciones     IN VARCHAR2,
                               prm_contravenciones   IN VARCHAR2,
                               prm_usuario           IN VARCHAR2,
                               prm_ovalor            IN VARCHAR2,
                               prm_opartida          IN VARCHAR2,
                               prm_oorigen           IN VARCHAR2,
                               prm_osinobs           IN VARCHAR2,
                               prm_comision          IN VARCHAR2,
                               prm_ccondel           IN VARCHAR2,
                               prm_cconcon           IN VARCHAR2,
                               prm_cconadu           IN VARCHAR2)
        RETURN VARCHAR2;

    FUNCTION finaliza_control_enm (prm_key_year          IN VARCHAR2,
                                   prm_key_cuo           IN VARCHAR2,
                                   prm_reg_serial        IN VARCHAR2,
                                   prm_tipo_doc_con      IN VARCHAR2,
                                   prm_reg_nro_inf       IN VARCHAR2,
                                   prm_reg_fec_inf       IN VARCHAR2,
                                   prm_reg_nro_doc_con   IN VARCHAR2,
                                   prm_reg_fec_doc_con   IN VARCHAR2,
                                   prm_observaciones     IN VARCHAR2,
                                   prm_contravenciones   IN VARCHAR2,
                                   prm_usuario           IN VARCHAR2,
                                   prm_ovalor            IN VARCHAR2,
                                   prm_opartida          IN VARCHAR2,
                                   prm_oorigen           IN VARCHAR2,
                                   prm_osinobs           IN VARCHAR2,
                                   prm_comision          IN VARCHAR2,
                                   prm_ccondel           IN VARCHAR2,
                                   prm_cconcon           IN VARCHAR2,
                                   prm_cconadu           IN VARCHAR2)
        RETURN VARCHAR2;

    FUNCTION registra_justificativoautcon (prm_key_year        IN VARCHAR2,
                                           prm_key_cuo         IN VARCHAR2,
                                           prm_reg_serial      IN VARCHAR2,
                                           prm_justificativo   IN VARCHAR2,
                                           prm_usuario         IN VARCHAR2)
        RETURN VARCHAR2;

    FUNCTION notifica_control (prm_key_year     IN VARCHAR2,
                               prm_key_cuo      IN VARCHAR2,
                               prm_reg_serial   IN VARCHAR2,
                               prm_fec_not      IN VARCHAR2,
                               prm_obs          IN VARCHAR2,
                               prm_tipo_not     IN VARCHAR2,
                               prm_usuario      IN VARCHAR2)
        RETURN VARCHAR2;

    FUNCTION notifica_control_enm (prm_key_year     IN VARCHAR2,
                                   prm_key_cuo      IN VARCHAR2,
                                   prm_reg_serial   IN VARCHAR2,
                                   prm_fec_not      IN VARCHAR2,
                                   prm_obs          IN VARCHAR2,
                                   prm_tipo_not     IN VARCHAR2,
                                   prm_usuario      IN VARCHAR2)
        RETURN VARCHAR2;


    FUNCTION asigna_control (prm_key_year     IN VARCHAR2,
                             prm_key_cuo      IN VARCHAR2,
                             prm_reg_serial   IN VARCHAR2,
                             prm_usuario      IN VARCHAR2)
        RETURN VARCHAR2;

    FUNCTION registra_control (prm_key_year       IN     VARCHAR2,
                               prm_key_cuo        IN     VARCHAR2,
                               prm_reg_serial     IN     VARCHAR2,
                               prm_usuario        IN     VARCHAR2,
                               prm_fiscalizador   IN     VARCHAR2,
                               prm_gerencia       IN     VARCHAR2,
                               prm_control           OUT VARCHAR2)
        RETURN VARCHAR2;


    FUNCTION resultados_control (prm_key_year               IN VARCHAR2,
                                 prm_key_cuo                IN VARCHAR2,
                                 prm_reg_serial             IN VARCHAR2,
                                 prm_fec_liquidacion        IN VARCHAR2,
                                 prm_tributo_omitido_ga     IN VARCHAR2,
                                 prm_tributo_omitido_iva    IN VARCHAR2,
                                 prm_tributo_omitido_ice    IN VARCHAR2,
                                 prm_tributo_omitido_iehd   IN VARCHAR2,
                                 prm_multa_contrava         IN VARCHAR2,
                                 prm_multa_contrabc         IN VARCHAR2,
                                 prm_multa_contrabd         IN VARCHAR2,
                                 prm_usuario                IN VARCHAR2,
                                 prm_fobfinal               IN NUMBER)
        RETURN VARCHAR2;

    FUNCTION resultados_control_enm (prm_key_year               IN VARCHAR2,
                                     prm_key_cuo                IN VARCHAR2,
                                     prm_reg_serial             IN VARCHAR2,
                                     prm_fec_liquidacion        IN VARCHAR2,
                                     prm_tributo_omitido_ga     IN VARCHAR2,
                                     prm_tributo_omitido_iva    IN VARCHAR2,
                                     prm_tributo_omitido_ice    IN VARCHAR2,
                                     prm_tributo_omitido_iehd   IN VARCHAR2,
                                     prm_multa_contrava         IN VARCHAR2,
                                     prm_multa_contrabc         IN VARCHAR2,
                                     prm_multa_contrabd         IN VARCHAR2,
                                     prm_usuario                IN VARCHAR2,
                                     prm_fobfinal               IN NUMBER)
        RETURN VARCHAR2;

    FUNCTION registra_recibo (prm_gestion          IN VARCHAR2,
                              prm_gerencia         IN VARCHAR2,
                              prm_nro_control      IN VARCHAR2,
                              prm_tipo_deuda       IN VARCHAR2,
                              prm_monto            IN VARCHAR2,
                              prm_fecha_pago       IN VARCHAR2,
                              prm_usuario          IN VARCHAR2,
                              prm_rec_gestion      IN VARCHAR2,
                              prm_rec_aduana       IN VARCHAR2,
                              prm_rec_nro_recibo   IN VARCHAR2)
        RETURN VARCHAR2;

    FUNCTION registra_aceptacion (prm_key_year         IN VARCHAR2,
                                  prm_key_cuo          IN VARCHAR2,
                                  prm_reg_serial       IN VARCHAR2,
                                  prm_fec_aceptacion   IN VARCHAR2,
                                  prm_rec_gestion      IN VARCHAR2,
                                  prm_rec_aduana       IN VARCHAR2,
                                  prm_rec_numero       IN VARCHAR2,
                                  prm_usuario          IN VARCHAR2)
        RETURN VARCHAR2;

    FUNCTION elimina_aceptacion (prm_key_year     IN VARCHAR2,
                                 prm_key_cuo      IN VARCHAR2,
                                 prm_reg_serial   IN VARCHAR2,
                                 prm_usuario      IN VARCHAR2)
        RETURN VARCHAR2;


    FUNCTION registra_not_con (prm_key_year          IN VARCHAR2,
                               prm_key_cuo           IN VARCHAR2,
                               prm_reg_serial        IN VARCHAR2,
                               prm_reg_fec_not_doc   IN VARCHAR2,
                               prm_reg_tip_not_doc   IN VARCHAR2,
                               prm_usuario           IN VARCHAR2)
        RETURN VARCHAR2;

    FUNCTION registra_not_con_enm (prm_key_year          IN VARCHAR2,
                                   prm_key_cuo           IN VARCHAR2,
                                   prm_reg_serial        IN VARCHAR2,
                                   prm_reg_fec_not_doc   IN VARCHAR2,
                                   prm_reg_tip_not_doc   IN VARCHAR2,
                                   prm_usuario           IN VARCHAR2)
        RETURN VARCHAR2;

    FUNCTION registra_envio_legal (prm_key_year            IN VARCHAR2,
                                   prm_key_cuo             IN VARCHAR2,
                                   prm_reg_serial          IN VARCHAR2,
                                   prm_reg_fec_env_legal   IN VARCHAR2,
                                   prm_reg_nro_env_legal   IN VARCHAR2,
                                   prm_usuario             IN VARCHAR2)
        RETURN VARCHAR2;

    FUNCTION registra_envio_legal_enm (prm_key_year            IN VARCHAR2,
                                       prm_key_cuo             IN VARCHAR2,
                                       prm_reg_serial          IN VARCHAR2,
                                       prm_reg_fec_env_legal   IN VARCHAR2,
                                       prm_reg_nro_env_legal   IN VARCHAR2,
                                       prm_usuario             IN VARCHAR2)
        RETURN VARCHAR2;

    FUNCTION rechaza_control (prm_key_year     IN VARCHAR2,
                              prm_key_cuo      IN VARCHAR2,
                              prm_reg_serial   IN VARCHAR2,
                              prm_usuario      IN VARCHAR2)
        RETURN VARCHAR2;


    FUNCTION fiscalizador_enm (prm_key_year       IN VARCHAR2,
                               prm_key_cuo        IN VARCHAR2,
                               prm_reg_serial     IN VARCHAR2,
                               prm_fiscalizador   IN VARCHAR2,
                               prm_usuario        IN VARCHAR2)
        RETURN VARCHAR2;

    FUNCTION fn_devuelve_actividad (p_nit IN VARCHAR2)
        RETURN VARCHAR2;

    FUNCTION f_reg_anul_control_dif (prm_key_year      IN VARCHAR2,
                                     prm_key_cuo       IN VARCHAR2,
                                     prm_reg_serial    IN VARCHAR2,
                                     prm_observacion   IN VARCHAR2,
                                     prm_usuario       IN VARCHAR2)
        RETURN VARCHAR2;

    FUNCTION f_reg_cierre_control_dif (prm_key_year      IN VARCHAR2,
                                       prm_key_cuo       IN VARCHAR2,
                                       prm_reg_serial    IN VARCHAR2,
                                       prm_observacion   IN VARCHAR2,
                                       prm_usuario       IN VARCHAR2)
        RETURN VARCHAR2;

    FUNCTION fn_devuelve_direccion (
        p_nit        IN VARCHAR2,
        w_key_year   IN ops$asy.sad_gen.key_year%TYPE,
        w_key_cuo    IN ops$asy.sad_gen.key_cuo%TYPE,
        w_key_dec    IN ops$asy.sad_gen.key_dec%TYPE,
        w_key_nber   IN ops$asy.sad_gen.key_nber%TYPE)
        RETURN VARCHAR2;
END;
/

CREATE OR REPLACE 
PACKAGE BODY pkg_sicodif
/* Formatted on 6-mar.-2017 2:17:42 (QP5 v5.126) */
IS
    dirmira CONSTANT VARCHAR2 (100)
            := 'http://anbsw07.aduana.gob.bo:7601/mira' ;


    FUNCTION devuelve_control (prm_key_year   IN     VARCHAR2,
                               prm_key_cuo    IN     VARCHAR2,
                               prm_reg_nber   IN     VARCHAR2,
                               ct                OUT cursortype)
        RETURN VARCHAR2
    IS
        res    VARCHAR2 (50) := '';
        cont   NUMBER (10);
    BEGIN
        OPEN ct FOR
            SELECT   a.fis_gestion,                                        --1
                     a.fis_gerencia,
                     a.fis_nro_control,
                     a.fis_key_year,
                     a.fis_key_cuo,                                        --5
                     a.fis_key_nber,
                     a.fis_key_dec,
                     a.sad_reg_year,
                     a.sad_reg_serial,
                     a.sad_reg_nber,                                      --10
                     TO_CHAR (a.fis_fec_pase_salida, 'dd/mm/yyyy'),
                     TO_CHAR (a.fis_fec_registro, 'dd/mm/yyyy'),
                     a.fis_usuario_registro,
                     TO_CHAR (a.fis_fec_asignacion, 'dd/mm/yyyy'),
                     a.fis_usuario_asignacion,                            --15
                     TO_CHAR (a.fis_fec_notificacion, 'dd/mm/yyyy'),
                     a.fis_obs_notificacion,
                     a.fis_tipo_notificacion,
                     a.fis_usuario_notificacion,
                     TO_CHAR (a.fis_fec_liquidacion, 'dd/mm/yyyy'),       --20
                     a.fis_tributo_omitido_ga,
                     a.fis_tributo_omitido_iva,
                     a.fis_tributo_omitido_ice,
                     a.fis_tributo_omitido_iehd,
                     a.fis_sancion_omision,                               --25
                     a.fis_multa_contrava,
                     a.fis_multa_contrabc,
                     a.fis_multa_contrabd,
                     a.fis_usuario_resultados,
                     TO_CHAR (a.fis_fec_aceptacion, 'dd/mm/yyyy'),        --30
                     a.fis_tipo_doc_con,
                     a.fis_reg_nro_inf,
                     TO_CHAR (a.fis_reg_fec_inf, 'dd/mm/yyyy'),
                     a.fis_reg_nro_doc_con,
                     TO_CHAR (a.fis_reg_fec_doc_con, 'dd/mm/yyyy'),       --35
                     a.fis_fec_finalizacion,
                     TO_CHAR (a.fis_reg_fec_not_doc, 'dd/mm/yyyy'),
                     a.fis_reg_tip_not_doc,
                     TO_CHAR (a.fis_reg_fec_env_legal, 'dd/mm/yyyy'),
                     a.fis_reg_nro_env_legal,                             --40
                     a.fis_usuario_finalizacion,
                     a.fis_estado,
                     a.fis_lst_ope,
                     a.fis_usuario,
                     a.fis_numver,                                        --45
                     TO_CHAR (a.fis_fecha, 'dd/mm/yyyy'),
                     a.fis_fiscalizador,
                     a.fis_ovalor,
                     a.fis_opartida,
                     a.fis_oorigen,                                       --50
                     a.fis_osinobs,
                     a.fis_comision,
                     a.fis_ccondel,
                     a.fis_cconcon,
                     a.fis_cconadu,                                       --55
                     a.fis_tributo_omitido_ufv_ga,
                     a.fis_tributo_omitido_ufv_iva,
                     a.fis_tributo_omitido_ufv_ice,
                     a.fis_tributo_omitido_ufv_iehd,
                     a.fis_sancion_omision_ufv,                           --60
                     a.fis_multa_contrava_ufv,
                     a.fis_multa_contrabc_ufv,
                     a.fis_multa_contrabd_ufv,
                     a.fis_valor_ufv,
                     a.fis_usuario_aceptacion,                            --65
                     a.fis_usuario_not_doc_con,
                     a.fis_usuario_env_legal,
                     a.fis_origen_control                                 --68
              FROM   cd_fiscalizacion a
             WHERE       a.sad_reg_year = prm_key_year
                     AND a.fis_key_cuo = prm_key_cuo
                     AND a.sad_reg_nber = prm_reg_nber
                     AND a.fis_lst_ope = 'U'
                     AND a.fis_numver = 0;

        res := 'CORRECTO';

        RETURN res;
    END devuelve_control;



    FUNCTION lista_aduana (ct OUT cursortype)
        RETURN VARCHAR2
    IS
        res   VARCHAR2 (50) := 0;
    BEGIN
        OPEN ct FOR
              SELECT   a.cuo_cod, a.cuo_cod || ':' || a.cuo_nam
                FROM   ops$asy.uncuotab a
               WHERE   a.lst_ope = 'U' AND a.cuo_cod NOT IN ('ALL', 'CUO01')
            ORDER BY   1;

        res := 'CORRECTO';
        RETURN res;
    EXCEPTION
        WHEN OTHERS
        THEN
            ROLLBACK;
            RETURN 'ERROR'
                   || SUBSTR (TO_CHAR (SQLCODE) || ': ' || SQLERRM, 1, 255);
    END;

    FUNCTION lista_aduana_gerencia (ct OUT cursortype, gerencia VARCHAR2)
        RETURN VARCHAR2
    IS
        res   VARCHAR2 (50) := 0;
    BEGIN
        IF (gerencia = 'GRLP')
        THEN
            OPEN ct FOR
                  SELECT   a.cuo_cod, a.cuo_cod || ':' || a.cuo_nam
                    FROM   ops$asy.uncuotab a
                   WHERE       a.lst_ope = 'U'
                           AND a.cuo_cod NOT IN ('ALL', 'CUO01')
                           AND SUBSTR (a.cuo_cod, 1, 1) IN ('2', '8', '9')
                ORDER BY   1;
        END IF;

        IF (gerencia = 'GRCB')
        THEN
            OPEN ct FOR
                  SELECT   a.cuo_cod, a.cuo_cod || ':' || a.cuo_nam
                    FROM   ops$asy.uncuotab a
                   WHERE       a.lst_ope = 'U'
                           AND a.cuo_cod NOT IN ('ALL', 'CUO01')
                           AND SUBSTR (a.cuo_cod, 1, 1) IN ('3', '1')
                ORDER BY   1;
        END IF;

        IF (gerencia = 'GRSC')
        THEN
            OPEN ct FOR
                  SELECT   a.cuo_cod, a.cuo_cod || ':' || a.cuo_nam
                    FROM   ops$asy.uncuotab a
                   WHERE       a.lst_ope = 'U'
                           AND a.cuo_cod NOT IN ('ALL', 'CUO01')
                           AND SUBSTR (a.cuo_cod, 1, 1) IN ('7')
                ORDER BY   1;
        END IF;

        IF (gerencia = 'GROR')
        THEN
            OPEN ct FOR
                  SELECT   a.cuo_cod, a.cuo_cod || ':' || a.cuo_nam
                    FROM   ops$asy.uncuotab a
                   WHERE       a.lst_ope = 'U'
                           AND a.cuo_cod NOT IN ('ALL', 'CUO01')
                           AND SUBSTR (a.cuo_cod, 1, 1) IN ('4')
                ORDER BY   1;
        END IF;

        IF (gerencia = 'GRTJ')
        THEN
            OPEN ct FOR
                  SELECT   a.cuo_cod, a.cuo_cod || ':' || a.cuo_nam
                    FROM   ops$asy.uncuotab a
                   WHERE       a.lst_ope = 'U'
                           AND a.cuo_cod NOT IN ('ALL', 'CUO01')
                           AND SUBSTR (a.cuo_cod, 1, 1) IN ('6')
                ORDER BY   1;
        END IF;

        IF (gerencia = 'GRPT')
        THEN
            OPEN ct FOR
                  SELECT   a.cuo_cod, a.cuo_cod || ':' || a.cuo_nam
                    FROM   ops$asy.uncuotab a
                   WHERE       a.lst_ope = 'U'
                           AND a.cuo_cod NOT IN ('ALL', 'CUO01')
                           AND SUBSTR (a.cuo_cod, 1, 1) IN ('5', '1')
                ORDER BY   1;
        END IF;

        IF (gerencia = 'GNF')
        THEN
            OPEN ct FOR
                  SELECT   a.cuo_cod, a.cuo_cod || ':' || a.cuo_nam
                    FROM   ops$asy.uncuotab a
                   WHERE   a.lst_ope = 'U'
                           AND a.cuo_cod NOT IN ('ALL', 'CUO01')
                ORDER BY   1;
        END IF;



        /*
         SELECT CASE SUBSTR (prm_key_cuo, 1, 1)
                        WHEN '2' THEN 'GRLP'
                        WHEN '8' THEN 'GRLP'
                        WHEN '9' THEN 'GRLP'
                        WHEN '3' THEN 'GRCB'
                        WHEN '1' THEN 'GRCB'
                        WHEN '7' THEN 'GRSC'
                        WHEN '4' THEN 'GROR'
                        WHEN '6' THEN 'GRTJ'
                        WHEN '5' THEN 'GRPT'
                     --ELSE 'OTRO'
                     END
        */

        res := 'CORRECTO';
        RETURN res;
    EXCEPTION
        WHEN OTHERS
        THEN
            ROLLBACK;
            RETURN 'ERROR'
                   || SUBSTR (TO_CHAR (SQLCODE) || ': ' || SQLERRM, 1, 255);
    END;


    FUNCTION lista_fiscalizadores (ct OUT cursortype, gerencia VARCHAR)
        RETURN VARCHAR2
    IS
        res   VARCHAR2 (50) := 0;
    BEGIN
        OPEN ct FOR
              SELECT   a.usucodusu AS codigo,
                          NVL (a.usuapepat, ' ')
                       || ' '
                       || NVL (a.usuapemat, ' ')
                       || ' '
                       || a.usunombre
                           AS nombre
                FROM   usuario.usuario a, usuario.usu_rol b
               WHERE       a.gercodger = gerencia
                       AND a.lst_ope = 'U'
                       AND a.usu_num = 0
                       AND a.usucodusu = b.usucodusu
                       AND b.rol_cod = 'GNF_FISCALIZADORUFR'
                       AND b.ult_ver = 0
                       AND b.lst_ope = 'U'
            ORDER BY   2;

        res := 'CORRECTO';
        RETURN res;
    EXCEPTION
        WHEN OTHERS
        THEN
            ROLLBACK;
            RETURN 'ERROR'
                   || SUBSTR (TO_CHAR (SQLCODE) || ': ' || SQLERRM, 1, 255);
    END;



    FUNCTION devuelve_estado (prm_key_year     IN VARCHAR2,
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
            res := 'VACIO';
        ELSE
            SELECT   fis_estado
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
    END devuelve_estado;


    FUNCTION devuelve_ufv (prm_fecha IN VARCHAR2)
        RETURN VARCHAR2
    IS
        res    VARCHAR2 (50) := '';
        cont   NUMBER (8) := 0;
    BEGIN
        SELECT   COUNT (1)
          INTO   cont
          FROM   ops$asy.unrattab a
         WHERE   a.cur_cod = 'UFV'
                 AND TO_DATE (prm_fecha, 'dd/mm/yyyy') >= TO_DATE (a.eea_dov)
                 AND TO_DATE (prm_fecha, 'dd/mm/yyyy') <=
                        NVL (a.eea_eov, SYSDATE)
                 AND a.lst_ope = 'U';

        IF cont > 0
        THEN
            SELECT   a.rat_exc
              INTO   res
              FROM   ops$asy.unrattab a
             WHERE   a.cur_cod = 'UFV'
                     AND TO_DATE (prm_fecha, 'dd/mm/yyyy') >=
                            TO_DATE (a.eea_dov)
                     AND TO_DATE (prm_fecha, 'dd/mm/yyyy') <=
                            NVL (a.eea_eov, SYSDATE)
                     AND a.lst_ope = 'U';
        ELSE
            res := '0';
        END IF;

        RETURN res;
    EXCEPTION
        WHEN OTHERS
        THEN
            RETURN '0';
    END devuelve_ufv;



    FUNCTION devuelve_gerencia (prm_usuario IN VARCHAR2)
        RETURN VARCHAR2
    IS
        res    VARCHAR2 (50) := '';
        cont   NUMBER (8) := 0;
    BEGIN
        SELECT   COUNT (1)
          INTO   cont
          FROM   usuario.usuario a
         WHERE       a.usucodusu = prm_usuario
                 AND a.lst_ope = 'U'
                 AND a.usu_num = 0;

        IF cont > 0
        THEN
            SELECT   DECODE (a.gercodger,
                             19, 'GRLP',
                             20, 'GROR',
                             21, 'GRCB',
                             22, 'GRSC',
                             23, 'GRTJ',
                             24, 'GRPT',
                             15, 'GNF',
                             '-')
              INTO   res
              FROM   usuario.usuario a
             WHERE       a.usucodusu = prm_usuario
                     AND a.lst_ope = 'U'
                     AND a.usu_num = 0;
        ELSE
            res := '0';
        END IF;

        RETURN res;
    EXCEPTION
        WHEN OTHERS
        THEN
            RETURN '0';
    END devuelve_gerencia;

    FUNCTION devuelve_fecha_levante (prm_key_year   IN VARCHAR2,
                                     prm_key_cuo    IN VARCHAR2,
                                     prm_key_dec    IN VARCHAR2,
                                     prm_key_nber   IN VARCHAR2)
        RETURN VARCHAR2
    IS
        res    VARCHAR2 (50) := '';
        cont   NUMBER (8) := 0;
    BEGIN
        SELECT   TO_CHAR (n.upd_dat, 'dd/mm/yyyy') || ' ' || n.upd_hor
                     AS fecha_levante
          INTO   res
          FROM   ops$asy.sad_spy n
         WHERE       n.key_year = prm_key_year
                 AND n.key_cuo = prm_key_cuo
                 AND NVL (n.key_dec, '-') = NVL (prm_key_dec, '-')
                 AND n.key_nber = prm_key_nber
                 AND ( (n.spy_sta = '6' AND n.spy_act = '9' AND n.sad_clr = 0)
                      OR (    n.spy_sta = '10'
                          AND n.spy_act = '24'
                          AND n.sad_clr = 0));

        IF res = ''
        THEN
            res := '-';
        END IF;

        RETURN res;
    EXCEPTION
        WHEN OTHERS
        THEN
            RETURN '-';
    END devuelve_fecha_levante;

    FUNCTION bandeja_supervisor (prm_gerencia   IN     VARCHAR2,
                                 prm_estado     IN     VARCHAR2,
                                 ct                OUT cursortype)
        RETURN VARCHAR2
    IS
        res    VARCHAR2 (50) := '';
        cont   NUMBER (10);
    BEGIN
        OPEN ct FOR
            SELECT   DISTINCT
                     a.sad_reg_year,
                     a.key_cuo,
                     a.sad_reg_nber,
                     a.sad_typ_dec || '-' || a.sad_typ_proc AS patron,
                     a.sad_itm_total AS items,
                     DECODE (a.sad_consignee,
                             NULL, cns.sad_con_zip,
                             a.sad_consignee)
                         AS nit_importador,
                     DECODE (a.sad_consignee,
                             NULL, cns.sad_con_nam,
                             nvl(cmp.ope_razonsocial,' '))
                         AS importador,
                     pkg_sicodif.devuelve_fecha_levante (f.fis_key_year,
                                                         f.fis_key_cuo,
                                                         f.fis_key_dec,
                                                         f.fis_key_nber)
                         AS fecha_levante,
                     DECODE (
                         f.fis_nro_control,
                         0,
                         'PENDIENTE',
                         f.fis_gestion || 'CD' || f.fis_gerencia
                         || DECODE (LENGTH (f.fis_nro_control),
                                    1, '000' || f.fis_nro_control,
                                    2, '00' || f.fis_nro_control,
                                    3, '0' || f.fis_nro_control,
                                    f.fis_nro_control))
                         AS codigo,
                     f.fis_fiscalizador,
                     TO_CHAR (f.fis_fec_registro, 'dd/mm/yyyy hh24:mi:ss'),
                     f.fis_origen_control,
                     f.fis_fec_asignacion,
                     dirmira pagina
              FROM   cd_fiscalizacion f,
                     ops$asy.sad_gen a,
                     ops$asy.sad_occ_cns cns,
                     ops$asy.bo_oce_opecab cmp
             WHERE                /*  a.sad_flw = 1
                                AND */
                  a      .lst_ope = 'U'
                     AND a.sad_num = 0
                     AND a.key_year = f.fis_key_year
                     AND a.key_cuo = f.fis_key_cuo
                     AND a.key_dec IS NULL
                     AND f.fis_key_dec IS NULL
                     AND a.key_nber = f.fis_key_nber
                     AND a.key_year = cns.key_year(+)
                     AND a.key_cuo = cns.key_cuo(+)
                     AND cns.key_dec(+) IS NULL
                     AND a.key_nber = cns.key_nber(+)
                     AND a.sad_num = cns.sad_num(+)
                     AND cns.sad_num(+) = '0'
                     AND a.sad_consignee = cmp.ope_numerodoc(+)
                     AND cmp.ope_num(+) = 0
                     AND f.fis_gerencia = prm_gerencia
                     --AND f.fis_fec_asignacion IS NULL
                     AND (   f.fis_estado = 'REGISTRADO'
                          OR f.fis_estado = 'REGISTRADO-MIRA'
                          OR f.fis_estado = 'ASIGNADO' --or f.fis_estado like 'NOTIFICADO%'
                                                      )
                     AND f.fis_lst_ope = 'U'
                     AND f.fis_numver = 0
            UNION
            SELECT   DISTINCT
                     a.sad_reg_year,
                     a.key_cuo,
                     a.sad_reg_nber,
                     a.sad_typ_dec || '-' || a.sad_typ_proc AS patron,
                     a.sad_itm_total AS items,
                     DECODE (a.sad_consignee,
                             NULL, cns.sad_con_zip,
                             a.sad_consignee)
                         AS nit_importador,
                     DECODE (a.sad_consignee,
                             NULL, cns.sad_con_nam,
                             nvl(cmp.ope_razonsocial,' '))
                         AS importador,
                     pkg_sicodif.devuelve_fecha_levante (f.fis_key_year,
                                                         f.fis_key_cuo,
                                                         f.fis_key_dec,
                                                         f.fis_key_nber)
                         AS fecha_levante,
                     DECODE (
                         f.fis_nro_control,
                         0,
                         'PENDIENTE',
                         f.fis_gestion || 'CD' || f.fis_gerencia
                         || DECODE (LENGTH (f.fis_nro_control),
                                    1, '000' || f.fis_nro_control,
                                    2, '00' || f.fis_nro_control,
                                    3, '0' || f.fis_nro_control,
                                    f.fis_nro_control))
                         AS codigo,
                     f.fis_fiscalizador,
                     TO_CHAR (f.fis_fec_registro, 'dd/mm/yyyy hh24:mi:ss'),
                     f.fis_origen_control,
                     f.fis_fec_asignacion,
                     dirmira pagina
              FROM   cd_fiscalizacion f,
                     ops$asy.sad_gen a,
                     ops$asy.sad_occ_cns cns,
                     ops$asy.bo_oce_opecab cmp
             WHERE                /*  a.sad_flw = 1
                                AND */
                         a.lst_ope = 'U'
                     AND a.sad_num = 0
                     AND a.key_year = f.fis_key_year
                     AND a.key_cuo = f.fis_key_cuo
                     AND a.key_dec = f.fis_key_dec
                     AND a.key_nber = f.fis_key_nber
                     AND a.key_year = cns.key_year(+)
                     AND a.key_cuo = cns.key_cuo(+)
                     AND a.key_dec = cns.key_dec(+)
                     AND a.key_nber = cns.key_nber(+)
                     AND a.sad_num = cns.sad_num(+)
                     AND cns.sad_num(+) = '0'
                     AND a.sad_consignee = cmp.ope_numerodoc(+)
                     AND cmp.ope_num(+) = 0
                     AND f.fis_gerencia = prm_gerencia
                     --AND f.fis_fec_asignacion IS NULL
                     AND (   f.fis_estado = 'REGISTRADO'
                          OR f.fis_estado = 'REGISTRADO-MIRA'
                          OR f.fis_estado = 'ASIGNADO' --or f.fis_estado like 'NOTIFICADO%'
                                                      )
                     AND f.fis_lst_ope = 'U'
                     AND f.fis_numver = 0
            ORDER BY   11;

        res := 'CORRECTO';

        RETURN res;
    END bandeja_supervisor;

    FUNCTION bandeja_fiscalizador (prm_fiscalizador   IN     VARCHAR2,
                                   prm_estado         IN     VARCHAR2,
                                   ct                    OUT cursortype)
        RETURN VARCHAR2
    IS
        res    VARCHAR2 (50) := '';
        cont   NUMBER (10);
    BEGIN
        OPEN ct FOR
            SELECT   DISTINCT
                     a.sad_reg_year,
                     a.key_cuo,
                     a.sad_reg_nber,
                     a.sad_typ_dec || '-' || a.sad_typ_proc AS patron,
                     a.sad_itm_total AS items,
                     DECODE (a.sad_consignee,
                             NULL, cns.sad_con_zip,
                             a.sad_consignee)
                         AS nit_importador,
                     DECODE (a.sad_consignee,
                             NULL, cns.sad_con_nam,
                             nvl(cmp.ope_razonsocial,' '))
                         AS importador,
                     pkg_sicodif.devuelve_fecha_levante (f.fis_key_year,
                                                         f.fis_key_cuo,
                                                         f.fis_key_dec,
                                                         f.fis_key_nber)
                         AS fecha_levante,
                     f.fis_gestion || 'CD' || f.fis_gerencia
                     || DECODE (LENGTH (f.fis_nro_control),
                                1, '000' || f.fis_nro_control,
                                2, '00' || f.fis_nro_control,
                                3, '0' || f.fis_nro_control,
                                f.fis_nro_control)
                         AS codigo,
                     f.fis_estado AS estado,
                     TO_CHAR (f.fis_fec_asignacion, 'dd/mm/yyyy hh24:mi:ss'),
                     valida_conclusion (f.fis_gestion,
                                        f.fis_gerencia,
                                        f.fis_nro_control),
                     f.fis_origen_control,
                     dirmira pagina
              FROM   cd_fiscalizacion f,
                     ops$asy.sad_gen a,
                     ops$asy.sad_occ_cns cns,
                     ops$asy.bo_oce_opecab cmp
             WHERE                    /*a.sad_flw = 1
                                  AND */
                  a      .lst_ope = 'U'
                     AND a.sad_num = 0
                     AND a.key_year = f.fis_key_year
                     AND a.key_cuo = f.fis_key_cuo
                     AND a.key_dec IS NULL
                     AND f.fis_key_dec IS NULL
                     AND a.key_nber = f.fis_key_nber
                     AND a.key_year = cns.key_year(+)
                     AND a.key_cuo = cns.key_cuo(+)
                     AND cns.key_dec(+) IS NULL
                     AND a.key_nber = cns.key_nber(+)
                     AND a.sad_num = cns.sad_num(+)
                     AND cns.sad_num(+) = '0'
                     AND a.sad_consignee = cmp.ope_numerodoc(+)
                     AND cmp.ope_num(+) = 0
                     AND f.fis_fiscalizador = prm_fiscalizador
                     AND f.fis_fec_asignacion IS NOT NULL
                     AND f.fis_lst_ope = 'U'
                     AND f.fis_numver = 0
                     AND f.fis_estado <> 'CIERRE'
            UNION
            SELECT   DISTINCT
                     a.sad_reg_year,
                     a.key_cuo,
                     a.sad_reg_nber,
                     a.sad_typ_dec || '-' || a.sad_typ_proc AS patron,
                     a.sad_itm_total AS items,
                     DECODE (a.sad_consignee,
                             NULL, cns.sad_con_zip,
                             a.sad_consignee)
                         AS nit_importador,
                     DECODE (a.sad_consignee,
                             NULL, cns.sad_con_nam,
                             nvl(cmp.ope_razonsocial,' '))
                         AS importador,
                     pkg_sicodif.devuelve_fecha_levante (f.fis_key_year,
                                                         f.fis_key_cuo,
                                                         f.fis_key_dec,
                                                         f.fis_key_nber)
                         AS fecha_levante,
                     f.fis_gestion || 'CD' || f.fis_gerencia
                     || DECODE (LENGTH (f.fis_nro_control),
                                1, '000' || f.fis_nro_control,
                                2, '00' || f.fis_nro_control,
                                3, '0' || f.fis_nro_control,
                                f.fis_nro_control)
                         AS codigo,
                     f.fis_estado AS estado,
                     TO_CHAR (f.fis_fec_asignacion, 'dd/mm/yyyy hh24:mi:ss'),
                     valida_conclusion (f.fis_gestion,
                                        f.fis_gerencia,
                                        f.fis_nro_control),
                     f.fis_origen_control,
                     dirmira pagina
              FROM   cd_fiscalizacion f,
                     ops$asy.sad_gen a,
                     ops$asy.sad_occ_cns cns,
                     ops$asy.bo_oce_opecab cmp
             WHERE                    /*a.sad_flw = 1
                                  AND */
                  a      .lst_ope = 'U'
                     AND a.sad_num = 0
                     AND a.key_year = f.fis_key_year
                     AND a.key_cuo = f.fis_key_cuo
                     AND a.key_dec = f.fis_key_dec
                     AND a.key_nber = f.fis_key_nber
                     AND a.key_year = cns.key_year(+)
                     AND a.key_cuo = cns.key_cuo(+)
                     AND a.key_dec = cns.key_dec(+)
                     AND a.key_nber = cns.key_nber(+)
                     AND a.sad_num = cns.sad_num(+)
                     AND cns.sad_num(+) = '0'
                     AND a.sad_consignee = cmp.ope_numerodoc(+)
                     AND cmp.ope_num(+) = 0
                     AND f.fis_fiscalizador = prm_fiscalizador
                     AND f.fis_fec_asignacion IS NOT NULL
                     AND f.fis_lst_ope = 'U'
                     AND f.fis_numver = 0
                     AND f.fis_estado <> 'CIERRE'
            ORDER BY   11;

        res := 'CORRECTO';

        RETURN res;
    END bandeja_fiscalizador;


    FUNCTION devuelve_consulta (prm_key_year     IN     VARCHAR2,
                                prm_key_cuo      IN     VARCHAR2,
                                prm_reg_serial   IN     VARCHAR2,
                                ct                  OUT cursortype)
        RETURN VARCHAR2
    IS
        res    VARCHAR2 (50) := '';
        cont   NUMBER (10);
    BEGIN
        OPEN ct FOR
            SELECT   DISTINCT
                     f.fis_gestion || 'CD' || f.fis_gerencia
                     || DECODE (LENGTH (f.fis_nro_control),
                                1, '000' || f.fis_nro_control,
                                2, '00' || f.fis_nro_control,
                                3, '0' || f.fis_nro_control,
                                f.fis_nro_control)
                         AS codigo,
                     TO_CHAR (f.fis_fec_registro, 'dd/mm/yyyy'),
                     DECODE (f.fis_gerencia,
                             'GRLP',
                             'Gerencia Regional La Paz',
                             'GROR',
                             'Gerencia Regional Oruro',
                             'GRCB',
                             'Gerencia Regional Cochabamba',
                             'GRSC',
                             'Gerencia Regional Santa Cruz',
                             'GRTJ',
                             'Gerencia Regional Tarija',
                             'GRPT',
                             'Gerencia Regional Potosi',
                             'GNF',
                             'Gerencia Nacional de Fiscalizaci&oacute;n',
                             '-')
                         gerencia,
                     DECODE (a.sad_consignee,
                             NULL, cns.sad_con_zip,
                             a.sad_consignee)
                         AS nit_importador,
                     DECODE (a.sad_consignee,
                             NULL, cns.sad_con_nam,
                             nvl(cmp.ope_razonsocial,' '))
                         AS importador,
                     --'direccion',
                     /*NVL (
                         (SELECT   b.ope_direccion || ' ' ||  b.ope_nrodireccion ||  ', ' || b.ope_zona
                            FROM   ops$asy.bo_oce_opecab b
                           WHERE   b.ope_numerodoc = a.sad_consignee
                                   AND b.ope_num = 0),
                         '-')
                         direccion, */
                     fn_devuelve_direccion (a.sad_consignee,
                                            a.key_year,
                                            a.key_cuo,
                                            a.key_dec,
                                            a.key_nber)
                         direccion,
                     --'actividad',
                     --fn_devuelve_actividad (a.sad_consignee),
                     fn_devuelve_actividad(NVL (
                                               a.sad_consignee,
                                               SUBSTR (
                                                   cns.sad_con_zip,
                                                   INSTR (cns.sad_con_zip,
                                                          ' ')
                                                   + 1,
                                                   LENGTH (cns.sad_con_zip)))),
                     DECODE (a.sad_flw, 1, 'X', ' ') dui,
                     DECODE (a.sad_flw, 0, 'X', ' ') due,
                     'otro',
                        a.sad_reg_year
                     || '/'
                     || a.key_cuo
                     || '/C-'
                     || a.sad_reg_nber
                         declaracion,
                     TO_CHAR (a.sad_reg_date, 'dd/mm/yyyy'),
                     devuelve_nombre (fis_usuario_asignacion),
                     devuelve_nombre (fis_fiscalizador),
                     devuelve_ci (fis_usuario_asignacion),
                     devuelve_ci (fis_fiscalizador)
              FROM   cd_fiscalizacion f,
                     ops$asy.sad_gen a,
                     ops$asy.sad_occ_cns cns,
                     ops$asy.bo_oce_opecab cmp
             WHERE       a.lst_ope = 'U'
                     AND a.sad_num = 0
                     AND a.key_year = f.fis_key_year
                     AND a.key_cuo = f.fis_key_cuo
                     AND a.key_dec IS NULL
                     AND f.fis_key_dec IS NULL
                     AND a.key_nber = f.fis_key_nber
                     AND a.key_year = cns.key_year(+)
                     AND a.key_cuo = cns.key_cuo(+)
                     AND cns.key_dec(+) IS NULL
                     AND a.key_nber = cns.key_nber(+)
                     AND a.sad_num = cns.sad_num(+)
                     AND cns.sad_num(+) = '0'
                     AND a.sad_consignee = cmp.ope_numerodoc(+)
                     AND cmp.ope_num(+) = 0
                     AND f.sad_reg_year = prm_key_year
                     AND f.fis_key_cuo = prm_key_cuo
                     AND f.sad_reg_nber = prm_reg_serial
                     AND f.fis_lst_ope = 'U'
                     AND f.fis_numver = 0
            UNION
            SELECT   DISTINCT
                     f.fis_gestion || 'CD' || f.fis_gerencia
                     || DECODE (LENGTH (f.fis_nro_control),
                                1, '000' || f.fis_nro_control,
                                2, '00' || f.fis_nro_control,
                                3, '0' || f.fis_nro_control,
                                f.fis_nro_control)
                         AS codigo,
                     TO_CHAR (f.fis_fec_registro, 'dd/mm/yyyy'),
                     DECODE (f.fis_gerencia,
                             'GRLP',
                             'Gerencia Regional La Paz',
                             'GROR',
                             'Gerencia Regional Oruro',
                             'GRCB',
                             'Gerencia Regional Cochabamba',
                             'GRSC',
                             'Gerencia Regional Santa Cruz',
                             'GRTJ',
                             'Gerencia Regional Tarija',
                             'GRPT',
                             'Gerencia Regional Potosi',
                             'GNF',
                             'Gerencia Nacional de Fiscalizaci&oacute;n',
                             '-')
                         gerencia,
                     DECODE (a.sad_consignee,
                             NULL, cns.sad_con_zip,
                             a.sad_consignee)
                         AS nit_importador,
                     DECODE (a.sad_consignee,
                             NULL, cns.sad_con_nam,
                             nvl(cmp.ope_razonsocial,' '))
                         AS importador,
                     --'direccion',
                     /*NVL (
                         (SELECT   b.ope_direccion || ' ' ||  b.ope_nrodireccion ||  ', ' || b.ope_zona
                            FROM   ops$asy.bo_oce_opecab b
                           WHERE   b.ope_numerodoc = a.sad_consignee
                                   AND b.ope_num = 0),
                         '-')
                         direccion, */
                     fn_devuelve_direccion (a.sad_consignee,
                                            a.key_year,
                                            a.key_cuo,
                                            a.key_dec,
                                            a.key_nber)
                         direccion,
                     --'actividad',
                     --fn_devuelve_actividad (a.sad_consignee),
                     fn_devuelve_actividad(NVL (
                                               a.sad_consignee,
                                               SUBSTR (
                                                   cns.sad_con_zip,
                                                   INSTR (cns.sad_con_zip,
                                                          ' ')
                                                   + 1,
                                                   LENGTH (cns.sad_con_zip)))),
                     DECODE (a.sad_flw, 1, 'X', ' ') dui,
                     DECODE (a.sad_flw, 0, 'X', ' ') due,
                     'otro',
                        a.sad_reg_year
                     || '/'
                     || a.key_cuo
                     || '/C-'
                     || a.sad_reg_nber
                         declaracion,
                     TO_CHAR (a.sad_reg_date, 'dd/mm/yyyy'),
                     devuelve_nombre (fis_usuario_asignacion),
                     devuelve_nombre (fis_fiscalizador),
                     devuelve_ci (fis_usuario_asignacion),
                     devuelve_ci (fis_fiscalizador)
              FROM   cd_fiscalizacion f,
                     ops$asy.sad_gen a,
                     ops$asy.sad_occ_cns cns,
                     ops$asy.bo_oce_opecab cmp
             WHERE       a.lst_ope = 'U'
                     AND a.sad_num = 0
                     AND a.key_year = f.fis_key_year
                     AND a.key_cuo = f.fis_key_cuo
                     AND a.key_dec = f.fis_key_dec
                     AND a.key_nber = f.fis_key_nber
                     AND a.key_year = cns.key_year(+)
                     AND a.key_cuo = cns.key_cuo(+)
                     AND a.key_dec = cns.key_dec(+)
                     AND a.key_nber = cns.key_nber(+)
                     AND a.sad_num = cns.sad_num(+)
                     AND cns.sad_num(+) = '0'
                     AND a.sad_consignee = cmp.ope_numerodoc(+)
                     AND cmp.ope_num(+) = 0
                     AND f.sad_reg_year = prm_key_year
                     AND f.fis_key_cuo = prm_key_cuo
                     AND f.sad_reg_nber = prm_reg_serial
                     AND f.fis_lst_ope = 'U'
                     AND f.fis_numver = 0
            ORDER BY   1, 2, 3;

        res := 'CORRECTO';

        RETURN res;
    END devuelve_consulta;


    FUNCTION reporte1 (prm_gerencia   IN     VARCHAR2,
                       prm_fec_ini    IN     VARCHAR2,
                       prm_fec_fin    IN     VARCHAR2,
                       ct                OUT cursortype)
        RETURN VARCHAR2
    IS
        res    VARCHAR2 (50) := '';
        cont   NUMBER (10);
    BEGIN
        OPEN ct FOR
              SELECT   DECODE (gerencia,
                               'GRLP', 'LA PAZ',
                               'GRCB', 'COCHABAMBA',
                               'GRSC', 'SANTA CRUZ',
                               'GROR', 'ORURO',
                               'GRTJ', 'TARIJA',
                               'GRPT', 'POTOSI',
                               'GNF-DIA'),
                       SUM (c1),
                       SUM (c2),
                       SUM (c3),
                       SUM (c4),
                       SUM (c5),
                       SUM (c6),
                       SUM (c7)
                FROM   (  SELECT   a.fis_gerencia gerencia,
                                   COUNT (1) c1,
                                   0 c2,
                                   0 c3,
                                   0 c4,
                                   0 c5,
                                   0 c6,
                                   0 c7
                            FROM   cd_fiscalizacion a
                           WHERE       a.fis_lst_ope = 'U'
                                   AND a.fis_numver = 0
                                   AND a.fis_key_year <> '-'
                                   AND TRUNC (a.fis_fec_asignacion) BETWEEN TO_DATE (
                                                                                prm_fec_ini,
                                                                                'dd/mm/yyyy')
                                                                        AND  TO_DATE (
                                                                                 prm_fec_fin,
                                                                                 'dd/mm/yyyy')
                        GROUP BY   a.fis_gerencia
                        UNION
                          SELECT   a.fis_gerencia gerencia,
                                   0 c1,
                                   COUNT (1) c2,
                                   0 c3,
                                   0 c4,
                                   0 c5,
                                   0 c6,
                                   0 c7
                            FROM   cd_fiscalizacion a
                           WHERE       a.fis_lst_ope = 'U'
                                   AND a.fis_numver = 0
                                   AND a.fis_key_year <> '-'
                                   AND a.fis_fec_notificacion IS NULL
                                   AND TRUNC (a.fis_fec_asignacion) BETWEEN TO_DATE (
                                                                                prm_fec_ini,
                                                                                'dd/mm/yyyy')
                                                                        AND  TO_DATE (
                                                                                 prm_fec_fin,
                                                                                 'dd/mm/yyyy')
                        GROUP BY   a.fis_gerencia
                        UNION
                          SELECT   a.fis_gerencia gerencia,
                                   0 c1,
                                   0 c2,
                                   COUNT (1) c3,
                                   0 c4,
                                   0 c5,
                                   0 c6,
                                   0 c7
                            FROM   cd_fiscalizacion a
                           WHERE       a.fis_lst_ope = 'U'
                                   AND a.fis_numver = 0
                                   AND a.fis_key_year <> '-'
                                   AND a.fis_fec_notificacion IS NOT NULL
                                   AND TRUNC (a.fis_fec_asignacion) BETWEEN TO_DATE (
                                                                                prm_fec_ini,
                                                                                'dd/mm/yyyy')
                                                                        AND  TO_DATE (
                                                                                 prm_fec_fin,
                                                                                 'dd/mm/yyyy')
                        GROUP BY   a.fis_gerencia
                        UNION
                          SELECT   a.fis_gerencia gerencia,
                                   0 c1,
                                   0 c2,
                                   0 c3,
                                   COUNT (1) c4,
                                   0 c5,
                                   0 c6,
                                   0 c7
                            FROM   cd_fiscalizacion a
                           WHERE       a.fis_lst_ope = 'U'
                                   AND a.fis_numver = 0
                                   AND a.fis_key_year <> '-'
                                   AND a.fis_reg_fec_doc_con IS NOT NULL
                                   AND TRUNC (a.fis_fec_asignacion) BETWEEN TO_DATE (
                                                                                prm_fec_ini,
                                                                                'dd/mm/yyyy')
                                                                        AND  TO_DATE (
                                                                                 prm_fec_fin,
                                                                                 'dd/mm/yyyy')
                        GROUP BY   a.fis_gerencia
                        UNION
                          SELECT   a.fis_gerencia gerencia,
                                   0 c1,
                                   0 c2,
                                   0 c3,
                                   0 c4,
                                   COUNT (1) c5,
                                   0 c6,
                                   0 c7
                            FROM   cd_fiscalizacion a
                           WHERE       a.fis_lst_ope = 'U'
                                   AND a.fis_numver = 0
                                   AND a.fis_key_year <> '-'
                                   AND a.fis_reg_fec_doc_con IS NOT NULL
                                   AND a.fis_fec_pase_salida IS NULL
                                   AND TRUNC (a.fis_fec_asignacion) BETWEEN TO_DATE (
                                                                                prm_fec_ini,
                                                                                'dd/mm/yyyy')
                                                                        AND  TO_DATE (
                                                                                 prm_fec_fin,
                                                                                 'dd/mm/yyyy')
                        GROUP BY   a.fis_gerencia
                        UNION
                          SELECT   a.fis_gerencia gerencia,
                                   0 c1,
                                   0 c2,
                                   0 c3,
                                   0 c4,
                                   0 c5,
                                   COUNT (1) c6,
                                   0 c7
                            FROM   cd_fiscalizacion a
                           WHERE       a.fis_lst_ope = 'U'
                                   AND a.fis_numver = 0
                                   AND a.fis_key_year <> '-'
                                   AND a.fis_reg_fec_doc_con IS NOT NULL
                                   AND a.fis_fec_pase_salida IS NOT NULL
                                   AND TRUNC (a.fis_fec_asignacion) BETWEEN TO_DATE (
                                                                                prm_fec_ini,
                                                                                'dd/mm/yyyy')
                                                                        AND  TO_DATE (
                                                                                 prm_fec_fin,
                                                                                 'dd/mm/yyyy')
                        GROUP BY   a.fis_gerencia
                        UNION
                          SELECT   a.fis_gerencia gerencia,
                                   0 c1,
                                   0 c2,
                                   0 c3,
                                   0 c4,
                                   0 c5,
                                   0 c6,
                                   COUNT (1) c7
                            FROM   cd_fiscalizacion a
                           WHERE       a.fis_lst_ope = 'U'
                                   AND a.fis_numver = 0
                                   AND a.fis_key_year <> '-'
                                   AND LENGTH(   a.fis_ovalor
                                              || a.fis_opartida
                                              || a.fis_oorigen
                                              || a.fis_comision
                                              || a.fis_ccondel
                                              || a.fis_cconcon
                                              || a.fis_cconadu) > 0
                                   AND TRUNC (a.fis_fec_asignacion) BETWEEN TO_DATE (
                                                                                prm_fec_ini,
                                                                                'dd/mm/yyyy')
                                                                        AND  TO_DATE (
                                                                                 prm_fec_fin,
                                                                                 'dd/mm/yyyy')
                        GROUP BY   a.fis_gerencia) tbl
               WHERE   gerencia LIKE prm_gerencia --'%' || prm_gerencia || '%'
            GROUP BY   gerencia
            UNION
            SELECT   'TOTAL',
                     NVL (SUM (c1), 0),
                     NVL (SUM (c2), 0),
                     NVL (SUM (c3), 0),
                     NVL (SUM (c4), 0),
                     NVL (SUM (c5), 0),
                     NVL (SUM (c6), 0),
                     NVL (SUM (c7), 0)
              FROM   (  SELECT   a.fis_gerencia gerencia,
                                 COUNT (1) c1,
                                 0 c2,
                                 0 c3,
                                 0 c4,
                                 0 c5,
                                 0 c6,
                                 0 c7
                          FROM   cd_fiscalizacion a
                         WHERE       a.fis_lst_ope = 'U'
                                 AND a.fis_numver = 0
                                 AND a.fis_key_year <> '-'
                                 AND TRUNC (a.fis_fec_asignacion) BETWEEN TO_DATE (
                                                                              prm_fec_ini,
                                                                              'dd/mm/yyyy')
                                                                      AND  TO_DATE (
                                                                               prm_fec_fin,
                                                                               'dd/mm/yyyy')
                      GROUP BY   a.fis_gerencia
                      UNION
                        SELECT   a.fis_gerencia gerencia,
                                 0 c1,
                                 COUNT (1) c2,
                                 0 c3,
                                 0 c4,
                                 0 c5,
                                 0 c6,
                                 0 c7
                          FROM   cd_fiscalizacion a
                         WHERE       a.fis_lst_ope = 'U'
                                 AND a.fis_numver = 0
                                 AND a.fis_key_year <> '-'
                                 AND a.fis_fec_notificacion IS NULL
                                 AND TRUNC (a.fis_fec_asignacion) BETWEEN TO_DATE (
                                                                              prm_fec_ini,
                                                                              'dd/mm/yyyy')
                                                                      AND  TO_DATE (
                                                                               prm_fec_fin,
                                                                               'dd/mm/yyyy')
                      GROUP BY   a.fis_gerencia
                      UNION
                        SELECT   a.fis_gerencia gerencia,
                                 0 c1,
                                 0 c2,
                                 COUNT (1) c3,
                                 0 c4,
                                 0 c5,
                                 0 c6,
                                 0 c7
                          FROM   cd_fiscalizacion a
                         WHERE       a.fis_lst_ope = 'U'
                                 AND a.fis_numver = 0
                                 AND a.fis_key_year <> '-'
                                 AND a.fis_fec_notificacion IS NOT NULL
                                 AND TRUNC (a.fis_fec_asignacion) BETWEEN TO_DATE (
                                                                              prm_fec_ini,
                                                                              'dd/mm/yyyy')
                                                                      AND  TO_DATE (
                                                                               prm_fec_fin,
                                                                               'dd/mm/yyyy')
                      GROUP BY   a.fis_gerencia
                      UNION
                        SELECT   a.fis_gerencia gerencia,
                                 0 c1,
                                 0 c2,
                                 0 c3,
                                 COUNT (1) c4,
                                 0 c5,
                                 0 c6,
                                 0 c7
                          FROM   cd_fiscalizacion a
                         WHERE       a.fis_lst_ope = 'U'
                                 AND a.fis_numver = 0
                                 AND a.fis_key_year <> '-'
                                 AND a.fis_reg_fec_doc_con IS NOT NULL
                                 AND TRUNC (a.fis_fec_asignacion) BETWEEN TO_DATE (
                                                                              prm_fec_ini,
                                                                              'dd/mm/yyyy')
                                                                      AND  TO_DATE (
                                                                               prm_fec_fin,
                                                                               'dd/mm/yyyy')
                      GROUP BY   a.fis_gerencia
                      UNION
                        SELECT   a.fis_gerencia gerencia,
                                 0 c1,
                                 0 c2,
                                 0 c3,
                                 0 c4,
                                 COUNT (1) c5,
                                 0 c6,
                                 0 c7
                          FROM   cd_fiscalizacion a
                         WHERE       a.fis_lst_ope = 'U'
                                 AND a.fis_numver = 0
                                 AND a.fis_key_year <> '-'
                                 AND a.fis_reg_fec_doc_con IS NOT NULL
                                 AND a.fis_fec_pase_salida IS NULL
                                 AND TRUNC (a.fis_fec_asignacion) BETWEEN TO_DATE (
                                                                              prm_fec_ini,
                                                                              'dd/mm/yyyy')
                                                                      AND  TO_DATE (
                                                                               prm_fec_fin,
                                                                               'dd/mm/yyyy')
                      GROUP BY   a.fis_gerencia
                      UNION
                        SELECT   a.fis_gerencia gerencia,
                                 0 c1,
                                 0 c2,
                                 0 c3,
                                 0 c4,
                                 0 c5,
                                 COUNT (1) c6,
                                 0 c7
                          FROM   cd_fiscalizacion a
                         WHERE       a.fis_lst_ope = 'U'
                                 AND a.fis_numver = 0
                                 AND a.fis_key_year <> '-'
                                 AND a.fis_reg_fec_doc_con IS NOT NULL
                                 AND a.fis_fec_pase_salida IS NOT NULL
                                 AND TRUNC (a.fis_fec_asignacion) BETWEEN TO_DATE (
                                                                              prm_fec_ini,
                                                                              'dd/mm/yyyy')
                                                                      AND  TO_DATE (
                                                                               prm_fec_fin,
                                                                               'dd/mm/yyyy')
                      GROUP BY   a.fis_gerencia
                      UNION
                        SELECT   a.fis_gerencia gerencia,
                                 0 c1,
                                 0 c2,
                                 0 c3,
                                 0 c4,
                                 0 c5,
                                 0 c6,
                                 COUNT (1) c7
                          FROM   cd_fiscalizacion a
                         WHERE       a.fis_lst_ope = 'U'
                                 AND a.fis_numver = 0
                                 AND a.fis_key_year <> '-'
                                 AND LENGTH(   a.fis_ovalor
                                            || a.fis_opartida
                                            || a.fis_oorigen
                                            || a.fis_comision
                                            || a.fis_ccondel
                                            || a.fis_cconcon
                                            || a.fis_cconadu) > 0
                                 AND TRUNC (a.fis_fec_asignacion) BETWEEN TO_DATE (
                                                                              prm_fec_ini,
                                                                              'dd/mm/yyyy')
                                                                      AND  TO_DATE (
                                                                               prm_fec_fin,
                                                                               'dd/mm/yyyy')
                      GROUP BY   a.fis_gerencia) tbl
             WHERE   gerencia LIKE prm_gerencia   --'%' || prm_gerencia || '%'
            ORDER BY   1;

        res := 'CORRECTO';

        RETURN res;
    END reporte1;

    FUNCTION reporte2 (prm_gerencia   IN     VARCHAR2,
                       prm_fec_ini    IN     VARCHAR2,
                       prm_fec_fin    IN     VARCHAR2,
                       ct                OUT cursortype)
        RETURN VARCHAR2
    IS
        res    VARCHAR2 (50) := '';
        cont   NUMBER (10);
    BEGIN
        OPEN ct FOR
              SELECT   DECODE (a.fis_gerencia,
                               'GRLP', 'LA PAZ',
                               'GRCB', 'COCHABAMBA',
                               'GRSC', 'SANTA CRUZ',
                               'GROR', 'ORURO',
                               'GRTJ', 'TARIJA',
                               'GRPT', 'POTOSI',
                               'GNF-DIA')
                           gerencia,
                       COUNT (1) con,
                         NVL (SUM (tga.rec_monto), 0)
                       + NVL (SUM (tiva.rec_monto), 0)
                       + NVL (SUM (tice.rec_monto), 0)
                       + NVL (SUM (tiehd.rec_monto), 0)
                           tributo,
                       NVL (SUM (ma.rec_monto), 0) multaca,
                         NVL (SUM (tga.rec_monto), 0)
                       + NVL (SUM (tiva.rec_monto), 0)
                       + NVL (SUM (tice.rec_monto), 0)
                       + NVL (SUM (tiehd.rec_monto), 0)
                       + NVL (SUM (ma.rec_monto), 0)
                           tri_multaca,
                       NVL (SUM (s.rec_monto), 0) sancion,
                       NVL (SUM (mc.rec_monto), 0)
                       + NVL (SUM (md.rec_monto), 0)
                           multacc_cd,
                         NVL (SUM (tga.rec_monto), 0)
                       + NVL (SUM (tiva.rec_monto), 0)
                       + NVL (SUM (tice.rec_monto), 0)
                       + NVL (SUM (tiehd.rec_monto), 0)
                       + NVL (SUM (s.rec_monto), 0)
                       + NVL (SUM (ma.rec_monto), 0)
                       + NVL (SUM (mc.rec_monto), 0)
                       + NVL (SUM (md.rec_monto), 0)
                           total
                FROM   cd_fiscalizacion a,
                       cd_recibos tga,
                       cd_recibos tiva,
                       cd_recibos tice,
                       cd_recibos tiehd,
                       cd_recibos s,
                       cd_recibos ma,
                       cd_recibos mc,
                       cd_recibos md
               WHERE       a.fis_gestion = tga.fis_gestion(+)
                       AND a.fis_gerencia = tga.fis_gerencia(+)
                       AND a.fis_nro_control = tga.fis_nro_control(+)
                       AND a.fis_gestion = tiva.fis_gestion(+)
                       AND a.fis_gerencia = tiva.fis_gerencia(+)
                       AND a.fis_nro_control = tiva.fis_nro_control(+)
                       AND a.fis_gestion = tice.fis_gestion(+)
                       AND a.fis_gerencia = tice.fis_gerencia(+)
                       AND a.fis_nro_control = tice.fis_nro_control(+)
                       AND a.fis_gestion = tiehd.fis_gestion(+)
                       AND a.fis_gerencia = tiehd.fis_gerencia(+)
                       AND a.fis_nro_control = tiehd.fis_nro_control(+)
                       AND a.fis_gestion = s.fis_gestion(+)
                       AND a.fis_gerencia = s.fis_gerencia(+)
                       AND a.fis_nro_control = s.fis_nro_control(+)
                       AND a.fis_gestion = ma.fis_gestion(+)
                       AND a.fis_gerencia = ma.fis_gerencia(+)
                       AND a.fis_nro_control = ma.fis_nro_control(+)
                       AND a.fis_gestion = mc.fis_gestion(+)
                       AND a.fis_gerencia = mc.fis_gerencia(+)
                       AND a.fis_nro_control = mc.fis_nro_control(+)
                       AND a.fis_gestion = md.fis_gestion(+)
                       AND a.fis_gerencia = md.fis_gerencia(+)
                       AND a.fis_nro_control = md.fis_nro_control(+)
                       AND tga.rec_lst_ope(+) = 'U'
                       AND tga.rec_numver(+) = 0
                       AND tga.rec_tipo_deuda(+) = 'TRIBUTO OMITIDO GA'
                       AND tiva.rec_lst_ope(+) = 'U'
                       AND tiva.rec_numver(+) = 0
                       AND tiva.rec_tipo_deuda(+) = 'TRIBUTO OMITIDO IVA'
                       AND tice.rec_lst_ope(+) = 'U'
                       AND tice.rec_numver(+) = 0
                       AND tice.rec_tipo_deuda(+) = 'TRIBUTO OMITIDO ICE'
                       AND tiehd.rec_lst_ope(+) = 'U'
                       AND tiehd.rec_numver(+) = 0
                       AND tiehd.rec_tipo_deuda(+) = 'TRIBUTO OMITIDO IEHD'
                       AND s.rec_lst_ope(+) = 'U'
                       AND s.rec_numver(+) = 0
                       AND s.rec_tipo_deuda(+) = 'SANCION OP'
                       AND ma.rec_lst_ope(+) = 'U'
                       AND ma.rec_numver(+) = 0
                       AND ma.rec_tipo_deuda(+) = 'CONTRAVENCION ADUANERA'
                       AND mc.rec_lst_ope(+) = 'U'
                       AND mc.rec_numver(+) = 0
                       AND mc.rec_tipo_deuda(+) = 'CONTRABANDO CONTRAVENCIONAL'
                       AND md.rec_lst_ope(+) = 'U'
                       AND md.rec_numver(+) = 0
                       AND md.rec_tipo_deuda(+) = 'CONTRABANDO DELITO'
                       AND a.fis_lst_ope = 'U'
                       AND a.fis_numver = 0
                       AND a.fis_key_year <> '-'
                       AND a.fis_reg_fec_doc_con IS NOT NULL
                       AND TRUNC (a.fis_reg_fec_doc_con) BETWEEN TO_DATE (
                                                                     prm_fec_ini,
                                                                     'dd/mm/yyyy')
                                                             AND  TO_DATE (
                                                                      prm_fec_fin,
                                                                      'dd/mm/yyyy')
                       AND a.fis_fec_aceptacion IS NOT NULL
                       AND a.fis_gerencia LIKE prm_gerencia --'%' || prm_gerencia || '%'
            GROUP BY   a.fis_gerencia
            UNION
            SELECT   'TOTAL' gerencia,
                     COUNT (1) con,
                       NVL (SUM (tga.rec_monto), 0)
                     + NVL (SUM (tiva.rec_monto), 0)
                     + NVL (SUM (tice.rec_monto), 0)
                     + NVL (SUM (tiehd.rec_monto), 0)
                         tributo,
                     NVL (SUM (ma.rec_monto), 0) multaca,
                       NVL (SUM (tga.rec_monto), 0)
                     + NVL (SUM (tiva.rec_monto), 0)
                     + NVL (SUM (tice.rec_monto), 0)
                     + NVL (SUM (tiehd.rec_monto), 0)
                     + NVL (SUM (ma.rec_monto), 0)
                         tri_multaca,
                     NVL (SUM (s.rec_monto), 0) sancion,
                     NVL (SUM (mc.rec_monto), 0)
                     + NVL (SUM (md.rec_monto), 0)
                         multacc_cd,
                       NVL (SUM (tga.rec_monto), 0)
                     + NVL (SUM (tiva.rec_monto), 0)
                     + NVL (SUM (tice.rec_monto), 0)
                     + NVL (SUM (tiehd.rec_monto), 0)
                     + NVL (SUM (s.rec_monto), 0)
                     + NVL (SUM (ma.rec_monto), 0)
                     + NVL (SUM (mc.rec_monto), 0)
                     + NVL (SUM (md.rec_monto), 0)
                         total
              FROM   cd_fiscalizacion a,
                     cd_recibos tga,
                     cd_recibos tiva,
                     cd_recibos tice,
                     cd_recibos tiehd,
                     cd_recibos s,
                     cd_recibos ma,
                     cd_recibos mc,
                     cd_recibos md
             WHERE       a.fis_gestion = tga.fis_gestion(+)
                     AND a.fis_gerencia = tga.fis_gerencia(+)
                     AND a.fis_nro_control = tga.fis_nro_control(+)
                     AND a.fis_gestion = tiva.fis_gestion(+)
                     AND a.fis_gerencia = tiva.fis_gerencia(+)
                     AND a.fis_nro_control = tiva.fis_nro_control(+)
                     AND a.fis_gestion = tice.fis_gestion(+)
                     AND a.fis_gerencia = tice.fis_gerencia(+)
                     AND a.fis_nro_control = tice.fis_nro_control(+)
                     AND a.fis_gestion = tiehd.fis_gestion(+)
                     AND a.fis_gerencia = tiehd.fis_gerencia(+)
                     AND a.fis_nro_control = tiehd.fis_nro_control(+)
                     AND a.fis_gestion = s.fis_gestion(+)
                     AND a.fis_gerencia = s.fis_gerencia(+)
                     AND a.fis_nro_control = s.fis_nro_control(+)
                     AND a.fis_gestion = ma.fis_gestion(+)
                     AND a.fis_gerencia = ma.fis_gerencia(+)
                     AND a.fis_nro_control = ma.fis_nro_control(+)
                     AND a.fis_gestion = mc.fis_gestion(+)
                     AND a.fis_gerencia = mc.fis_gerencia(+)
                     AND a.fis_nro_control = mc.fis_nro_control(+)
                     AND a.fis_gestion = md.fis_gestion(+)
                     AND a.fis_gerencia = md.fis_gerencia(+)
                     AND a.fis_nro_control = md.fis_nro_control(+)
                     AND tga.rec_lst_ope(+) = 'U'
                     AND tga.rec_numver(+) = 0
                     AND tga.rec_tipo_deuda(+) = 'TRIBUTO OMITIDO GA'
                     AND tiva.rec_lst_ope(+) = 'U'
                     AND tiva.rec_numver(+) = 0
                     AND tiva.rec_tipo_deuda(+) = 'TRIBUTO OMITIDO IVA'
                     AND tice.rec_lst_ope(+) = 'U'
                     AND tice.rec_numver(+) = 0
                     AND tice.rec_tipo_deuda(+) = 'TRIBUTO OMITIDO ICE'
                     AND tiehd.rec_lst_ope(+) = 'U'
                     AND tiehd.rec_numver(+) = 0
                     AND tiehd.rec_tipo_deuda(+) = 'TRIBUTO OMITIDO IEHD'
                     AND s.rec_lst_ope(+) = 'U'
                     AND s.rec_numver(+) = 0
                     AND s.rec_tipo_deuda(+) = 'SANCION OP'
                     AND ma.rec_lst_ope(+) = 'U'
                     AND ma.rec_numver(+) = 0
                     AND ma.rec_tipo_deuda(+) = 'CONTRAVENCION ADUANERA'
                     AND mc.rec_lst_ope(+) = 'U'
                     AND mc.rec_numver(+) = 0
                     AND mc.rec_tipo_deuda(+) = 'CONTRABANDO CONTRAVENCIONAL'
                     AND md.rec_lst_ope(+) = 'U'
                     AND md.rec_numver(+) = 0
                     AND md.rec_tipo_deuda(+) = 'CONTRABANDO DELITO'
                     AND a.fis_lst_ope = 'U'
                     AND a.fis_numver = 0
                     AND a.fis_key_year <> '-'
                     AND a.fis_reg_fec_doc_con IS NOT NULL
                     AND TRUNC (a.fis_reg_fec_doc_con) BETWEEN TO_DATE (
                                                                   prm_fec_ini,
                                                                   'dd/mm/yyyy')
                                                           AND  TO_DATE (
                                                                    prm_fec_fin,
                                                                    'dd/mm/yyyy')
                     AND a.fis_fec_aceptacion IS NOT NULL
                     AND a.fis_gerencia LIKE prm_gerencia --'%' || prm_gerencia || '%'
            ORDER BY   1;



        res := 'CORRECTO';

        RETURN res;
    END;

    FUNCTION reporte3 (prm_gerencia   IN     VARCHAR2,
                       prm_fec_ini    IN     VARCHAR2,
                       prm_fec_fin    IN     VARCHAR2,
                       ct                OUT cursortype)
        RETURN VARCHAR2
    IS
        res    VARCHAR2 (50) := '';
        cont   NUMBER (10);
    BEGIN
        OPEN ct FOR
              SELECT   DECODE (a.fis_gerencia,
                               'GRLP', 'LA PAZ',
                               'GRCB', 'COCHABAMBA',
                               'GRSC', 'SANTA CRUZ',
                               'GROR', 'ORURO',
                               'GRTJ', 'TARIJA',
                               'GRPT', 'POTOSI',
                               'GNF-DIA'),
                       COUNT (1) con,
                       SUM(  a.fis_tributo_omitido_ga
                           + a.fis_tributo_omitido_iva
                           + a.fis_tributo_omitido_ice
                           + a.fis_tributo_omitido_iehd),
                       SUM (a.fis_multa_contrava_ufv),
                       SUM (a.fis_sancion_omision),
                       SUM (a.fis_multa_contrabc) + SUM (a.fis_multa_contrabd)
                FROM   cd_fiscalizacion a
               WHERE       a.fis_lst_ope = 'U'
                       AND a.fis_numver = 0
                       AND a.fis_key_year <> '-'
                       AND a.fis_reg_fec_doc_con IS NOT NULL
                       AND TRUNC (a.fis_fec_registro) BETWEEN TO_DATE (
                                                                  prm_fec_ini,
                                                                  'dd/mm/yyyy')
                                                          AND  TO_DATE (
                                                                   prm_fec_fin,
                                                                   'dd/mm/yyyy')
                       AND a.fis_fec_aceptacion IS NULL
                       AND a.fis_gerencia LIKE prm_gerencia --'%' || prm_gerencia || '%'
            GROUP BY   a.fis_gerencia
            UNION
            SELECT   'TOTAL',
                     COUNT (1) con,
                     NVL (
                         SUM(  a.fis_tributo_omitido_ga
                             + a.fis_tributo_omitido_iva
                             + a.fis_tributo_omitido_ice
                             + a.fis_tributo_omitido_iehd),
                         0),
                     NVL (SUM (a.fis_multa_contrava_ufv), 0),
                     NVL (SUM (a.fis_sancion_omision), 0),
                     NVL (SUM (a.fis_multa_contrabc), 0)
                     + NVL (SUM (a.fis_multa_contrabd), 0)
              FROM   cd_fiscalizacion a
             WHERE       a.fis_lst_ope = 'U'
                     AND a.fis_numver = 0
                     AND a.fis_key_year <> '-'
                     AND a.fis_reg_fec_doc_con IS NOT NULL
                     AND TRUNC (a.fis_fec_registro) BETWEEN TO_DATE (
                                                                prm_fec_ini,
                                                                'dd/mm/yyyy')
                                                        AND  TO_DATE (
                                                                 prm_fec_fin,
                                                                 'dd/mm/yyyy')
                     AND a.fis_fec_aceptacion IS NULL
                     AND a.fis_gerencia LIKE prm_gerencia --'%' || prm_gerencia || '%'
            ORDER BY   1;


        res := 'CORRECTO';

        RETURN res;
    END;



    FUNCTION reporte4 (prm_gerencia   IN     VARCHAR2,
                       prm_fec_ini    IN     VARCHAR2,
                       prm_fec_fin    IN     VARCHAR2,
                       ct                OUT cursortype)
        RETURN VARCHAR2
    IS
        res    VARCHAR2 (50) := '';
        cont   NUMBER (10);
    BEGIN
        OPEN ct FOR
              SELECT      fis_fiscalizador
                       || ' - '
                       || devuelve_nombre (fis_fiscalizador),
                       SUM (c1),
                       SUM (c2),
                       SUM (c3),
                       SUM (c4),
                       SUM (c5),
                       SUM (c6),
                       SUM (c7),
                       DECODE (gerencia,
                               'GRLP', 'LA PAZ',
                               'GRCB', 'COCHABAMBA',
                               'GRSC', 'SANTA CRUZ',
                               'GROR', 'ORURO',
                               'GRTJ', 'TARIJA',
                               'GRPT', 'POTOSI',
                               'GNF-DIA'),
                       SUM (c8)
                FROM   (  SELECT   a.fis_fiscalizador,
                                   COUNT (1) c1,
                                   0 c2,
                                   0 c3,
                                   0 c4,
                                   0 c5,
                                   0 c6,
                                   0 c7,
                                   a.fis_gerencia gerencia,
                                   0 c8
                            FROM   cd_fiscalizacion a
                           WHERE       a.fis_lst_ope = 'U'
                                   AND a.fis_numver = 0
                                   AND a.fis_key_year <> '-'
                                   AND TRUNC (a.fis_fec_asignacion) BETWEEN TO_DATE (
                                                                                prm_fec_ini,
                                                                                'dd/mm/yyyy')
                                                                        AND  TO_DATE (
                                                                                 prm_fec_fin,
                                                                                 'dd/mm/yyyy')
                        GROUP BY   a.fis_gerencia, a.fis_fiscalizador
                        UNION
                          SELECT   a.fis_fiscalizador,
                                   0 c1,
                                   COUNT (1) c2,
                                   0 c3,
                                   0 c4,
                                   0 c5,
                                   0 c6,
                                   0 c7,
                                   a.fis_gerencia gerencia,
                                   0 c8
                            FROM   cd_fiscalizacion a
                           WHERE       a.fis_lst_ope = 'U'
                                   AND a.fis_numver = 0
                                   AND a.fis_key_year <> '-'
                                   AND a.fis_fec_notificacion IS NULL
                                   AND TRUNC (a.fis_fec_asignacion) BETWEEN TO_DATE (
                                                                                prm_fec_ini,
                                                                                'dd/mm/yyyy')
                                                                        AND  TO_DATE (
                                                                                 prm_fec_fin,
                                                                                 'dd/mm/yyyy')
                        GROUP BY   a.fis_gerencia, a.fis_fiscalizador
                        UNION
                          SELECT   a.fis_fiscalizador,
                                   0 c1,
                                   0 c2,
                                   COUNT (1) c3,
                                   0 c4,
                                   0 c5,
                                   0 c6,
                                   0 c7,
                                   a.fis_gerencia gerencia,
                                   0 c8
                            FROM   cd_fiscalizacion a
                           WHERE       a.fis_lst_ope = 'U'
                                   AND a.fis_numver = 0
                                   AND a.fis_key_year <> '-'
                                   AND a.fis_fec_notificacion IS NOT NULL
                                   AND TRUNC (a.fis_fec_asignacion) BETWEEN TO_DATE (
                                                                                prm_fec_ini,
                                                                                'dd/mm/yyyy')
                                                                        AND  TO_DATE (
                                                                                 prm_fec_fin,
                                                                                 'dd/mm/yyyy')
                        GROUP BY   a.fis_gerencia, a.fis_fiscalizador
                        UNION
                          SELECT   a.fis_fiscalizador,
                                   0 c1,
                                   0 c2,
                                   0 c3,
                                   COUNT (1) c4,
                                   0 c5,
                                   0 c6,
                                   0 c7,
                                   a.fis_gerencia gerencia,
                                   0 c8
                            FROM   cd_fiscalizacion a
                           WHERE       a.fis_lst_ope = 'U'
                                   AND a.fis_numver = 0
                                   AND a.fis_key_year <> '-'
                                   AND a.fis_reg_fec_doc_con IS NOT NULL
                                   AND TRUNC (a.fis_fec_asignacion) BETWEEN TO_DATE (
                                                                                prm_fec_ini,
                                                                                'dd/mm/yyyy')
                                                                        AND  TO_DATE (
                                                                                 prm_fec_fin,
                                                                                 'dd/mm/yyyy')
                        GROUP BY   a.fis_gerencia, a.fis_fiscalizador
                        UNION
                          SELECT   a.fis_fiscalizador,
                                   0 c1,
                                   0 c2,
                                   0 c3,
                                   0 c4,
                                   COUNT (1) c5,
                                   0 c6,
                                   0 c7,
                                   a.fis_gerencia gerencia,
                                   0 c8
                            FROM   cd_fiscalizacion a
                           WHERE       a.fis_lst_ope = 'U'
                                   AND a.fis_numver = 0
                                   AND a.fis_key_year <> '-'
                                   AND a.fis_reg_fec_doc_con IS NOT NULL
                                   AND a.fis_fec_pase_salida IS NOT NULL
                                   AND TRUNC (a.fis_fec_asignacion) BETWEEN TO_DATE (
                                                                                prm_fec_ini,
                                                                                'dd/mm/yyyy')
                                                                        AND  TO_DATE (
                                                                                 prm_fec_fin,
                                                                                 'dd/mm/yyyy')
                        GROUP BY   a.fis_gerencia, a.fis_fiscalizador
                        UNION
                          SELECT   a.fis_fiscalizador,
                                   0 c1,
                                   0 c2,
                                   0 c3,
                                   0 c4,
                                   0 c5,
                                   COUNT (1) c6,
                                   0 c7,
                                   a.fis_gerencia gerencia,
                                   0 c8
                            FROM   cd_fiscalizacion a
                           WHERE       a.fis_lst_ope = 'U'
                                   AND a.fis_numver = 0
                                   AND a.fis_key_year <> '-'
                                   AND a.fis_reg_fec_doc_con IS NOT NULL
                                   AND a.fis_fec_pase_salida IS NULL
                                   AND TRUNC (a.fis_fec_asignacion) BETWEEN TO_DATE (
                                                                                prm_fec_ini,
                                                                                'dd/mm/yyyy')
                                                                        AND  TO_DATE (
                                                                                 prm_fec_fin,
                                                                                 'dd/mm/yyyy')
                        GROUP BY   a.fis_gerencia, a.fis_fiscalizador
                        UNION
                          SELECT   a.fis_fiscalizador,
                                   0 c1,
                                   0 c2,
                                   0 c3,
                                   0 c4,
                                   0 c5,
                                   0 c6,
                                   COUNT (1) c7,
                                   a.fis_gerencia gerencia,
                                   0 c8
                            FROM   cd_fiscalizacion a
                           WHERE       a.fis_lst_ope = 'U'
                                   AND a.fis_numver = 0
                                   AND a.fis_key_year <> '-'
                                   AND LENGTH(   a.fis_ovalor
                                              || a.fis_opartida
                                              || a.fis_oorigen
                                              || a.fis_comision
                                              || a.fis_ccondel
                                              || a.fis_cconcon
                                              || a.fis_cconadu) > 0
                                   AND TRUNC (a.fis_fec_asignacion) BETWEEN TO_DATE (
                                                                                prm_fec_ini,
                                                                                'dd/mm/yyyy')
                                                                        AND  TO_DATE (
                                                                                 prm_fec_fin,
                                                                                 'dd/mm/yyyy')
                        GROUP BY   a.fis_gerencia, a.fis_fiscalizador
                        UNION
                          SELECT   a.fis_fiscalizador,
                                   0 c1,
                                   0 c2,
                                   0 c3,
                                   0 c4,
                                   0 c5,
                                   0 c6,
                                   0 c7,
                                   a.fis_gerencia gerencia,
                                   COUNT (1) c8
                            FROM   cd_fiscalizacion a
                           WHERE       a.fis_lst_ope = 'U'
                                   AND a.fis_numver = 0
                                   AND a.fis_key_year <> '-'
                                   AND a.fis_reg_fec_doc_con IS NULL
                                   AND a.fis_fec_notificacion IS NOT NULL
                                   AND SYSDATE - a.fis_fec_notificacion > 30
                                   AND TRUNC (a.fis_fec_asignacion) BETWEEN TO_DATE (
                                                                                prm_fec_ini,
                                                                                'dd/mm/yyyy')
                                                                        AND  TO_DATE (
                                                                                 prm_fec_fin,
                                                                                 'dd/mm/yyyy')
                        GROUP BY   a.fis_gerencia, a.fis_fiscalizador) tbl
               WHERE   gerencia LIKE prm_gerencia --'%' || prm_gerencia || '%'
            GROUP BY   gerencia, fis_fiscalizador
            UNION
            SELECT   'TOTAL',
                     NVL (SUM (c1), 0),
                     NVL (SUM (c2), 0),
                     NVL (SUM (c3), 0),
                     NVL (SUM (c4), 0),
                     NVL (SUM (c5), 0),
                     NVL (SUM (c6), 0),
                     NVL (SUM (c7), 0),
                     'TOTAL',
                     NVL (SUM (c8), 0)
              FROM   (  SELECT   a.fis_fiscalizador,
                                 COUNT (1) c1,
                                 0 c2,
                                 0 c3,
                                 0 c4,
                                 0 c5,
                                 0 c6,
                                 0 c7,
                                 a.fis_gerencia gerencia,
                                 0 c8
                          FROM   cd_fiscalizacion a
                         WHERE       a.fis_lst_ope = 'U'
                                 AND a.fis_numver = 0
                                 AND a.fis_key_year <> '-'
                                 AND TRUNC (a.fis_fec_asignacion) BETWEEN TO_DATE (
                                                                              prm_fec_ini,
                                                                              'dd/mm/yyyy')
                                                                      AND  TO_DATE (
                                                                               prm_fec_fin,
                                                                               'dd/mm/yyyy')
                      GROUP BY   a.fis_gerencia, a.fis_fiscalizador
                      UNION
                        SELECT   a.fis_fiscalizador,
                                 0 c1,
                                 COUNT (1) c2,
                                 0 c3,
                                 0 c4,
                                 0 c5,
                                 0 c6,
                                 0 c7,
                                 a.fis_gerencia gerencia,
                                 0 c8
                          FROM   cd_fiscalizacion a
                         WHERE       a.fis_lst_ope = 'U'
                                 AND a.fis_numver = 0
                                 AND a.fis_key_year <> '-'
                                 AND a.fis_fec_notificacion IS NULL
                                 AND TRUNC (a.fis_fec_asignacion) BETWEEN TO_DATE (
                                                                              prm_fec_ini,
                                                                              'dd/mm/yyyy')
                                                                      AND  TO_DATE (
                                                                               prm_fec_fin,
                                                                               'dd/mm/yyyy')
                      GROUP BY   a.fis_gerencia, a.fis_fiscalizador
                      UNION
                        SELECT   a.fis_fiscalizador,
                                 0 c1,
                                 0 c2,
                                 COUNT (1) c3,
                                 0 c4,
                                 0 c5,
                                 0 c6,
                                 0 c7,
                                 a.fis_gerencia gerencia,
                                 0 c8
                          FROM   cd_fiscalizacion a
                         WHERE       a.fis_lst_ope = 'U'
                                 AND a.fis_numver = 0
                                 AND a.fis_key_year <> '-'
                                 AND a.fis_fec_notificacion IS NOT NULL
                                 AND TRUNC (a.fis_fec_asignacion) BETWEEN TO_DATE (
                                                                              prm_fec_ini,
                                                                              'dd/mm/yyyy')
                                                                      AND  TO_DATE (
                                                                               prm_fec_fin,
                                                                               'dd/mm/yyyy')
                      GROUP BY   a.fis_gerencia, a.fis_fiscalizador
                      UNION
                        SELECT   a.fis_fiscalizador,
                                 0 c1,
                                 0 c2,
                                 0 c3,
                                 COUNT (1) c4,
                                 0 c5,
                                 0 c6,
                                 0 c7,
                                 a.fis_gerencia gerencia,
                                 0 c8
                          FROM   cd_fiscalizacion a
                         WHERE       a.fis_lst_ope = 'U'
                                 AND a.fis_numver = 0
                                 AND a.fis_key_year <> '-'
                                 AND a.fis_reg_fec_doc_con IS NOT NULL
                                 AND TRUNC (a.fis_fec_asignacion) BETWEEN TO_DATE (
                                                                              prm_fec_ini,
                                                                              'dd/mm/yyyy')
                                                                      AND  TO_DATE (
                                                                               prm_fec_fin,
                                                                               'dd/mm/yyyy')
                      GROUP BY   a.fis_gerencia, a.fis_fiscalizador
                      UNION
                        SELECT   a.fis_fiscalizador,
                                 0 c1,
                                 0 c2,
                                 0 c3,
                                 0 c4,
                                 COUNT (1) c5,
                                 0 c6,
                                 0 c7,
                                 a.fis_gerencia gerencia,
                                 0 c8
                          FROM   cd_fiscalizacion a
                         WHERE       a.fis_lst_ope = 'U'
                                 AND a.fis_numver = 0
                                 AND a.fis_key_year <> '-'
                                 AND a.fis_reg_fec_doc_con IS NOT NULL
                                 AND a.fis_fec_pase_salida IS NOT NULL
                                 AND TRUNC (a.fis_fec_asignacion) BETWEEN TO_DATE (
                                                                              prm_fec_ini,
                                                                              'dd/mm/yyyy')
                                                                      AND  TO_DATE (
                                                                               prm_fec_fin,
                                                                               'dd/mm/yyyy')
                      GROUP BY   a.fis_gerencia, a.fis_fiscalizador
                      UNION
                        SELECT   a.fis_fiscalizador,
                                 0 c1,
                                 0 c2,
                                 0 c3,
                                 0 c4,
                                 0 c5,
                                 COUNT (1) c6,
                                 0 c7,
                                 a.fis_gerencia gerencia,
                                 0 c8
                          FROM   cd_fiscalizacion a
                         WHERE       a.fis_lst_ope = 'U'
                                 AND a.fis_numver = 0
                                 AND a.fis_key_year <> '-'
                                 AND a.fis_reg_fec_doc_con IS NOT NULL
                                 AND a.fis_fec_pase_salida IS NULL
                                 AND TRUNC (a.fis_fec_asignacion) BETWEEN TO_DATE (
                                                                              prm_fec_ini,
                                                                              'dd/mm/yyyy')
                                                                      AND  TO_DATE (
                                                                               prm_fec_fin,
                                                                               'dd/mm/yyyy')
                      GROUP BY   a.fis_gerencia, a.fis_fiscalizador
                      UNION
                        SELECT   a.fis_fiscalizador,
                                 0 c1,
                                 0 c2,
                                 0 c3,
                                 0 c4,
                                 0 c5,
                                 0 c6,
                                 COUNT (1) c7,
                                 a.fis_gerencia gerencia,
                                 0 c8
                          FROM   cd_fiscalizacion a
                         WHERE       a.fis_lst_ope = 'U'
                                 AND a.fis_numver = 0
                                 AND a.fis_key_year <> '-'
                                 AND LENGTH(   a.fis_ovalor
                                            || a.fis_opartida
                                            || a.fis_oorigen
                                            || a.fis_comision
                                            || a.fis_ccondel
                                            || a.fis_cconcon
                                            || a.fis_cconadu) > 0
                                 AND TRUNC (a.fis_fec_asignacion) BETWEEN TO_DATE (
                                                                              prm_fec_ini,
                                                                              'dd/mm/yyyy')
                                                                      AND  TO_DATE (
                                                                               prm_fec_fin,
                                                                               'dd/mm/yyyy')
                      GROUP BY   a.fis_gerencia, a.fis_fiscalizador
                      UNION
                        SELECT   a.fis_fiscalizador,
                                 0 c1,
                                 0 c2,
                                 0 c3,
                                 0 c4,
                                 0 c5,
                                 0 c6,
                                 0 c7,
                                 a.fis_gerencia gerencia,
                                 COUNT (1) c8
                          FROM   cd_fiscalizacion a
                         WHERE       a.fis_lst_ope = 'U'
                                 AND a.fis_numver = 0
                                 AND a.fis_key_year <> '-'
                                 AND a.fis_reg_fec_doc_con IS NULL
                                 AND a.fis_fec_notificacion IS NOT NULL
                                 AND SYSDATE - a.fis_fec_notificacion > 30
                                 AND TRUNC (a.fis_fec_asignacion) BETWEEN TO_DATE (
                                                                              prm_fec_ini,
                                                                              'dd/mm/yyyy')
                                                                      AND  TO_DATE (
                                                                               prm_fec_fin,
                                                                               'dd/mm/yyyy')
                      GROUP BY   a.fis_gerencia, a.fis_fiscalizador) tbl
             WHERE   gerencia LIKE prm_gerencia   --'%' || prm_gerencia || '%'
            ORDER BY   9, 1;

        res := 'CORRECTO';

        RETURN res;
    END reporte4;



    FUNCTION reporte5 (prm_gerencia   IN     VARCHAR2,
                       prm_fec_ini    IN     VARCHAR2,
                       prm_fec_fin    IN     VARCHAR2,
                       ct                OUT cursortype)
        RETURN VARCHAR2
    IS
        res    VARCHAR2 (50) := '';
        cont   NUMBER (10);
    BEGIN
        OPEN ct FOR
              SELECT   DECODE (gerencia,
                               'GRLP', 'LA PAZ',
                               'GRCB', 'COCHABAMBA',
                               'GRSC', 'SANTA CRUZ',
                               'GROR', 'ORURO',
                               'GRTJ', 'TARIJA',
                               'GRPT', 'POTOSI',
                               'GNF-DIA'),
                       SUM (c4),
                       SUM (c7),
                       SUM (res_tributo),
                       SUM (res_sancion),
                       SUM (res_multaca),
                       SUM (pag_tributo),
                       SUM (pag_sancion),
                       SUM (pag_multaca),
                       SUM (pag_multacc),
                       SUM (res_multacc),                                 --11
                       (  SUM (res_tributo)
                        + SUM (res_sancion)
                        + SUM (res_multaca)
                        + SUM (res_multacc))
                       / SUM (c7),                                        --12
                       (  SUM (res_tributo)
                        + SUM (res_sancion)
                        + SUM (res_multaca)
                        + SUM (res_multacc)),                             --13
                       (  SUM (pag_tributo)
                        + SUM (pag_sancion)
                        + SUM (pag_multaca)
                        + SUM (pag_multacc))                              --14
                FROM   (  SELECT   a.fis_gerencia gerencia,
                                   COUNT (1) c4,
                                   0 c7,
                                   0 res_tributo,
                                   0 res_sancion,
                                   0 res_multaca,
                                   0 pag_tributo,
                                   0 pag_sancion,
                                   0 pag_multaca,
                                   0 pag_multacc,
                                   0 res_multacc
                            FROM   cd_fiscalizacion a
                           WHERE       a.fis_lst_ope = 'U'
                                   AND a.fis_numver = 0
                                   AND a.fis_key_year <> '-'
                                   AND a.fis_reg_fec_doc_con IS NOT NULL
                                   AND TRUNC (a.fis_reg_fec_doc_con) BETWEEN TO_DATE (
                                                                                 prm_fec_ini,
                                                                                 'dd/mm/yyyy')
                                                                         AND  TO_DATE (
                                                                                  prm_fec_fin,
                                                                                  'dd/mm/yyyy')
                        GROUP BY   a.fis_gerencia
                        UNION
                          SELECT   a.fis_gerencia gerencia,
                                   0 c4,
                                   COUNT (1) c7,
                                   0 res_tributo,
                                   0 res_sancion,
                                   0 res_multaca,
                                   0 pag_tributo,
                                   0 pag_sancion,
                                   0 pag_multaca,
                                   0 pag_multacc,
                                   0 res_multacc
                            FROM   cd_fiscalizacion a
                           WHERE       a.fis_lst_ope = 'U'
                                   AND a.fis_numver = 0
                                   AND a.fis_key_year <> '-'
                                   AND LENGTH(   a.fis_ovalor
                                              || a.fis_opartida
                                              || a.fis_oorigen
                                              || a.fis_comision
                                              || a.fis_ccondel
                                              || a.fis_cconcon
                                              || a.fis_cconadu) > 0
                                   AND a.fis_reg_fec_doc_con IS NOT NULL
                                   AND TRUNC (a.fis_reg_fec_doc_con) BETWEEN TO_DATE (
                                                                                 prm_fec_ini,
                                                                                 'dd/mm/yyyy')
                                                                         AND  TO_DATE (
                                                                                  prm_fec_fin,
                                                                                  'dd/mm/yyyy')
                        GROUP BY   a.fis_gerencia
                        UNION
                          SELECT   a.fis_gerencia,
                                   0 c4,
                                   0 c7,
                                   SUM(  a.fis_tributo_omitido_ga
                                       + a.fis_tributo_omitido_iva
                                       + a.fis_tributo_omitido_ice
                                       + a.fis_tributo_omitido_iehd)
                                       res_tributo,
                                   SUM (a.fis_sancion_omision) res_sancion,
                                   SUM (a.fis_multa_contrava) res_multaca,
                                   0 pag_tributo,
                                   0 pag_sancion,
                                   0 pag_multaca,
                                   0 pag_multacc,
                                   SUM (a.fis_multa_contrabc) res_multacc
                            FROM   cd_fiscalizacion a
                           WHERE       a.fis_lst_ope = 'U'
                                   AND a.fis_numver = 0
                                   AND a.fis_key_year <> '-'
                                   AND a.fis_reg_fec_doc_con IS NOT NULL
                                   AND TRUNC (a.fis_reg_fec_doc_con) BETWEEN TO_DATE (
                                                                                 prm_fec_ini,
                                                                                 'dd/mm/yyyy')
                                                                         AND  TO_DATE (
                                                                                  prm_fec_fin,
                                                                                  'dd/mm/yyyy')
                        GROUP BY   a.fis_gerencia
                        UNION
                          SELECT   a.fis_gerencia,
                                   0 c4,
                                   0 c7,
                                   0 res_tributo,
                                   0 res_sancion,
                                   0 res_multaca,
                                     NVL (SUM (tga.rec_monto), 0)
                                   + NVL (SUM (tiva.rec_monto), 0)
                                   + NVL (SUM (tice.rec_monto), 0)
                                   + NVL (SUM (tiehd.rec_monto), 0)
                                       pag_tributo,
                                   NVL (SUM (s.rec_monto), 0) pag_sancion,
                                   NVL (SUM (ma.rec_monto), 0) pag_multaca,
                                   NVL (SUM (mc.rec_monto), 0) pag_multacc,
                                   0 res_multacc
                            FROM   cd_fiscalizacion a,
                                   cd_recibos tga,
                                   cd_recibos tiva,
                                   cd_recibos tice,
                                   cd_recibos tiehd,
                                   cd_recibos s,
                                   cd_recibos ma,
                                   cd_recibos mc,
                                   cd_recibos md
                           WHERE       a.fis_gestion = tga.fis_gestion(+)
                                   AND a.fis_gerencia = tga.fis_gerencia(+)
                                   AND a.fis_nro_control = tga.fis_nro_control(+)
                                   AND a.fis_gestion = tiva.fis_gestion(+)
                                   AND a.fis_gerencia = tiva.fis_gerencia(+)
                                   AND a.fis_nro_control =
                                          tiva.fis_nro_control(+)
                                   AND a.fis_gestion = tice.fis_gestion(+)
                                   AND a.fis_gerencia = tice.fis_gerencia(+)
                                   AND a.fis_nro_control =
                                          tice.fis_nro_control(+)
                                   AND a.fis_gestion = tiehd.fis_gestion(+)
                                   AND a.fis_gerencia = tiehd.fis_gerencia(+)
                                   AND a.fis_nro_control =
                                          tiehd.fis_nro_control(+)
                                   AND a.fis_gestion = s.fis_gestion(+)
                                   AND a.fis_gerencia = s.fis_gerencia(+)
                                   AND a.fis_nro_control = s.fis_nro_control(+)
                                   AND a.fis_gestion = ma.fis_gestion(+)
                                   AND a.fis_gerencia = ma.fis_gerencia(+)
                                   AND a.fis_nro_control = ma.fis_nro_control(+)
                                   AND a.fis_gestion = mc.fis_gestion(+)
                                   AND a.fis_gerencia = mc.fis_gerencia(+)
                                   AND a.fis_nro_control = mc.fis_nro_control(+)
                                   AND a.fis_gestion = md.fis_gestion(+)
                                   AND a.fis_gerencia = md.fis_gerencia(+)
                                   AND a.fis_nro_control = md.fis_nro_control(+)
                                   AND tga.rec_lst_ope(+) = 'U'
                                   AND tga.rec_numver(+) = 0
                                   AND tga.rec_tipo_deuda(+) =
                                          'TRIBUTO OMITIDO GA'
                                   AND tiva.rec_lst_ope(+) = 'U'
                                   AND tiva.rec_numver(+) = 0
                                   AND tiva.rec_tipo_deuda(+) =
                                          'TRIBUTO OMITIDO IVA'
                                   AND tice.rec_lst_ope(+) = 'U'
                                   AND tice.rec_numver(+) = 0
                                   AND tice.rec_tipo_deuda(+) =
                                          'TRIBUTO OMITIDO ICE'
                                   AND tiehd.rec_lst_ope(+) = 'U'
                                   AND tiehd.rec_numver(+) = 0
                                   AND tiehd.rec_tipo_deuda(+) =
                                          'TRIBUTO OMITIDO IEHD'
                                   AND s.rec_lst_ope(+) = 'U'
                                   AND s.rec_numver(+) = 0
                                   AND s.rec_tipo_deuda(+) = 'SANCION OP'
                                   AND ma.rec_lst_ope(+) = 'U'
                                   AND ma.rec_numver(+) = 0
                                   AND ma.rec_tipo_deuda(+) =
                                          'CONTRAVENCION ADUANERA'
                                   AND mc.rec_lst_ope(+) = 'U'
                                   AND mc.rec_numver(+) = 0
                                   AND mc.rec_tipo_deuda(+) =
                                          'CONTRABANDO CONTRAVENCIONAL'
                                   AND md.rec_lst_ope(+) = 'U'
                                   AND md.rec_numver(+) = 0
                                   AND md.rec_tipo_deuda(+) =
                                          'CONTRABANDO DELITO'
                                   AND a.fis_lst_ope = 'U'
                                   AND a.fis_numver = 0
                                   AND a.fis_key_year <> '-'
                                   AND a.fis_reg_fec_doc_con IS NOT NULL
                                   AND TRUNC (a.fis_reg_fec_doc_con) BETWEEN TO_DATE (
                                                                                 prm_fec_ini,
                                                                                 'dd/mm/yyyy')
                                                                         AND  TO_DATE (
                                                                                  prm_fec_fin,
                                                                                  'dd/mm/yyyy')
                                   AND a.fis_fec_aceptacion IS NOT NULL
                        GROUP BY   a.fis_gerencia) tbl
               WHERE   gerencia LIKE prm_gerencia --'%' || prm_gerencia || '%'
            GROUP BY   gerencia
            UNION
              SELECT   gerencia,
                       SUM (c4),
                       SUM (c7),
                       SUM (res_tributo),
                       SUM (res_sancion),
                       SUM (res_multaca),
                       SUM (pag_tributo),
                       SUM (pag_sancion),
                       SUM (pag_multaca),
                       SUM (pag_multacc),
                       SUM (res_multacc),
                       (  SUM (res_tributo)
                        + SUM (res_sancion)
                        + SUM (res_multaca)
                        + SUM (res_multacc))
                       / SUM (c7),
                       (  SUM (res_tributo)
                        + SUM (res_sancion)
                        + SUM (res_multaca)
                        + SUM (res_multacc)),
                       (  SUM (pag_tributo)
                        + SUM (pag_sancion)
                        + SUM (pag_multaca)
                        + SUM (pag_multacc))
                FROM   (  SELECT   'TOTAL' gerencia,
                                   COUNT (1) c4,
                                   0 c7,
                                   0 res_tributo,
                                   0 res_sancion,
                                   0 res_multaca,
                                   0 pag_tributo,
                                   0 pag_sancion,
                                   0 pag_multaca,
                                   0 pag_multacc,
                                   0 res_multacc
                            FROM   cd_fiscalizacion a
                           WHERE       a.fis_lst_ope = 'U'
                                   AND a.fis_numver = 0
                                   AND a.fis_key_year <> '-'
                                   AND a.fis_reg_fec_doc_con IS NOT NULL
                                   AND TRUNC (a.fis_reg_fec_doc_con) BETWEEN TO_DATE (
                                                                                 prm_fec_ini,
                                                                                 'dd/mm/yyyy')
                                                                         AND  TO_DATE (
                                                                                  prm_fec_fin,
                                                                                  'dd/mm/yyyy')
                                   AND a.fis_gerencia LIKE prm_gerencia --'%' || prm_gerencia || '%'
                        GROUP BY   a.fis_gerencia
                        UNION
                          SELECT   'TOTAL' gerencia,
                                   0 c4,
                                   COUNT (1) c7,
                                   0 res_tributo,
                                   0 res_sancion,
                                   0 res_multaca,
                                   0 pag_tributo,
                                   0 pag_sancion,
                                   0 pag_multaca,
                                   0 pag_multacc,
                                   0 res_multacc
                            FROM   cd_fiscalizacion a
                           WHERE       a.fis_lst_ope = 'U'
                                   AND a.fis_numver = 0
                                   AND a.fis_key_year <> '-'
                                   AND LENGTH(   a.fis_ovalor
                                              || a.fis_opartida
                                              || a.fis_oorigen
                                              || a.fis_comision
                                              || a.fis_ccondel
                                              || a.fis_cconcon
                                              || a.fis_cconadu) > 0
                                   AND a.fis_reg_fec_doc_con IS NOT NULL
                                   AND TRUNC (a.fis_reg_fec_doc_con) BETWEEN TO_DATE (
                                                                                 prm_fec_ini,
                                                                                 'dd/mm/yyyy')
                                                                         AND  TO_DATE (
                                                                                  prm_fec_fin,
                                                                                  'dd/mm/yyyy')
                                   AND a.fis_gerencia LIKE prm_gerencia --'%' || prm_gerencia || '%'
                        GROUP BY   a.fis_gerencia
                        UNION
                          SELECT   'TOTAL' gerencia,
                                   0 c4,
                                   0 c7,
                                   SUM(  a.fis_tributo_omitido_ga
                                       + a.fis_tributo_omitido_iva
                                       + a.fis_tributo_omitido_ice
                                       + a.fis_tributo_omitido_iehd)
                                       res_tributo,
                                   SUM (a.fis_sancion_omision) res_sancion,
                                   SUM (a.fis_multa_contrava) res_multaca,
                                   0 pag_tributo,
                                   0 pag_sancion,
                                   0 pag_multaca,
                                   0 pag_multacc,
                                   SUM (a.fis_multa_contrabc) res_multacc
                            FROM   cd_fiscalizacion a
                           WHERE       a.fis_lst_ope = 'U'
                                   AND a.fis_numver = 0
                                   AND a.fis_key_year <> '-'
                                   AND a.fis_reg_fec_doc_con IS NOT NULL
                                   AND TRUNC (a.fis_reg_fec_doc_con) BETWEEN TO_DATE (
                                                                                 prm_fec_ini,
                                                                                 'dd/mm/yyyy')
                                                                         AND  TO_DATE (
                                                                                  prm_fec_fin,
                                                                                  'dd/mm/yyyy')
                                   AND a.fis_gerencia LIKE prm_gerencia --'%' || prm_gerencia || '%'
                        GROUP BY   a.fis_gerencia
                        UNION
                          SELECT   'TOTAL' gerencia,
                                   0 c4,
                                   0 c7,
                                   0 res_tributo,
                                   0 res_sancion,
                                   0 res_multaca,
                                     NVL (SUM (tga.rec_monto), 0)
                                   + NVL (SUM (tiva.rec_monto), 0)
                                   + NVL (SUM (tice.rec_monto), 0)
                                   + NVL (SUM (tiehd.rec_monto), 0)
                                       pag_tributo,
                                   NVL (SUM (s.rec_monto), 0) pag_sancion,
                                   NVL (SUM (ma.rec_monto), 0) pag_multaca,
                                   NVL (SUM (mc.rec_monto), 0) pag_multacc,
                                   0 res_multacc
                            FROM   cd_fiscalizacion a,
                                   cd_recibos tga,
                                   cd_recibos tiva,
                                   cd_recibos tice,
                                   cd_recibos tiehd,
                                   cd_recibos s,
                                   cd_recibos ma,
                                   cd_recibos mc,
                                   cd_recibos md
                           WHERE       a.fis_gestion = tga.fis_gestion(+)
                                   AND a.fis_gerencia = tga.fis_gerencia(+)
                                   AND a.fis_nro_control = tga.fis_nro_control(+)
                                   AND a.fis_gestion = tiva.fis_gestion(+)
                                   AND a.fis_gerencia = tiva.fis_gerencia(+)
                                   AND a.fis_nro_control =
                                          tiva.fis_nro_control(+)
                                   AND a.fis_gestion = tice.fis_gestion(+)
                                   AND a.fis_gerencia = tice.fis_gerencia(+)
                                   AND a.fis_nro_control =
                                          tice.fis_nro_control(+)
                                   AND a.fis_gestion = tiehd.fis_gestion(+)
                                   AND a.fis_gerencia = tiehd.fis_gerencia(+)
                                   AND a.fis_nro_control =
                                          tiehd.fis_nro_control(+)
                                   AND a.fis_gestion = s.fis_gestion(+)
                                   AND a.fis_gerencia = s.fis_gerencia(+)
                                   AND a.fis_nro_control = s.fis_nro_control(+)
                                   AND a.fis_gestion = ma.fis_gestion(+)
                                   AND a.fis_gerencia = ma.fis_gerencia(+)
                                   AND a.fis_nro_control = ma.fis_nro_control(+)
                                   AND a.fis_gestion = mc.fis_gestion(+)
                                   AND a.fis_gerencia = mc.fis_gerencia(+)
                                   AND a.fis_nro_control = mc.fis_nro_control(+)
                                   AND a.fis_gestion = md.fis_gestion(+)
                                   AND a.fis_gerencia = md.fis_gerencia(+)
                                   AND a.fis_nro_control = md.fis_nro_control(+)
                                   AND tga.rec_lst_ope(+) = 'U'
                                   AND tga.rec_numver(+) = 0
                                   AND tga.rec_tipo_deuda(+) =
                                          'TRIBUTO OMITIDO GA'
                                   AND tiva.rec_lst_ope(+) = 'U'
                                   AND tiva.rec_numver(+) = 0
                                   AND tiva.rec_tipo_deuda(+) =
                                          'TRIBUTO OMITIDO IVA'
                                   AND tice.rec_lst_ope(+) = 'U'
                                   AND tice.rec_numver(+) = 0
                                   AND tice.rec_tipo_deuda(+) =
                                          'TRIBUTO OMITIDO ICE'
                                   AND tiehd.rec_lst_ope(+) = 'U'
                                   AND tiehd.rec_numver(+) = 0
                                   AND tiehd.rec_tipo_deuda(+) =
                                          'TRIBUTO OMITIDO IEHD'
                                   AND s.rec_lst_ope(+) = 'U'
                                   AND s.rec_numver(+) = 0
                                   AND s.rec_tipo_deuda(+) = 'SANCION OP'
                                   AND ma.rec_lst_ope(+) = 'U'
                                   AND ma.rec_numver(+) = 0
                                   AND ma.rec_tipo_deuda(+) =
                                          'CONTRAVENCION ADUANERA'
                                   AND mc.rec_lst_ope(+) = 'U'
                                   AND mc.rec_numver(+) = 0
                                   AND mc.rec_tipo_deuda(+) =
                                          'CONTRABANDO CONTRAVENCIONAL'
                                   AND md.rec_lst_ope(+) = 'U'
                                   AND md.rec_numver(+) = 0
                                   AND md.rec_tipo_deuda(+) =
                                          'CONTRABANDO DELITO'
                                   AND a.fis_lst_ope = 'U'
                                   AND a.fis_numver = 0
                                   AND a.fis_key_year <> '-'
                                   AND a.fis_reg_fec_doc_con IS NOT NULL
                                   AND TRUNC (a.fis_reg_fec_doc_con) BETWEEN TO_DATE (
                                                                                 prm_fec_ini,
                                                                                 'dd/mm/yyyy')
                                                                         AND  TO_DATE (
                                                                                  prm_fec_fin,
                                                                                  'dd/mm/yyyy')
                                   AND a.fis_gerencia LIKE prm_gerencia --'%' || prm_gerencia || '%'
                                   AND a.fis_fec_aceptacion IS NOT NULL
                        GROUP BY   a.fis_gerencia) tbl
            GROUP BY   gerencia
            ORDER BY   1;



        res := 'CORRECTO';

        RETURN res;
    END;



    FUNCTION lista_recibos (prm_key_year     IN     VARCHAR2,
                            prm_key_cuo      IN     VARCHAR2,
                            prm_reg_serial   IN     VARCHAR2,
                            ct                  OUT cursortype)
        RETURN VARCHAR2
    IS
        res          VARCHAR2 (50) := '';
        v_key_year   VARCHAR2 (4);
        v_key_cuo    VARCHAR2 (4);
        v_key_dec    VARCHAR2 (17);
        v_key_nber   VARCHAR2 (13);
        cont         NUMBER (10);
    BEGIN
        /*SELECT   a.key_year,
                 a.key_cuo,
                 a.key_dec,
                 a.key_nber
          INTO   v_key_year,
                 v_key_cuo,
                 v_key_dec,
                 v_key_nber
          FROM   ops$asy.sad_gen a
         WHERE       a.key_year = prm_key_year
                 AND a.key_cuo = prm_key_cuo
                 AND a.sad_reg_serial = 'C'
                 AND a.sad_reg_nber = prm_reg_serial
                 AND a.lst_ope = 'U'
                 AND a.sad_num = 0;*/

        /*
                OPEN ct FOR
                SELECT a.rec_codigo, a.rec_tipo_deuda, a.rec_monto, a.rec_nro_recibo,
               a.rec_fecha_pago
          FROM cd_recibos a,cd_fiscalizacion b
          where a.fis_gestion = b.fis_gestion
          and a.fis_gerencia = b.fis_gerencia
          and a.fis_nro_control = b.fis_nro_control
        and b.fis_key_year = v_key_year
                         AND b.fis_key_cuo = v_key_cuo
                         AND nvl(b.fis_key_dec,0) = nvl(v_key_dec,0)
                         AND b.fis_key_nber = v_key_nber
          and b.fis_lst_ope = 'U'
          and b.fis_numver = 0
          and a.rec_lst_ope = 'U'
          and a.rec_numver = 0;*/

        OPEN ct FOR
            SELECT   DISTINCT
                     a.rec_codigo,
                     a.rec_tipo_deuda,
                     a.rec_monto,
                        a.rec_gestion
                     || '/'
                     || a.rec_aduana
                     || '/R-'
                     || a.rec_nro_recibo,
                     TO_CHAR (b.sad_rcpt_date, 'dd/mm/yyyy')
              FROM   cd_recibos a, ops$asy.bo_sad_payment b
             WHERE       TO_CHAR (b.sad_rcpt_date, 'yyyy') = a.rec_gestion
                     AND b.key_cuo = a.rec_aduana
                     AND b.sad_rcpt_nber = a.rec_nro_recibo
                     AND b.sad_rcpt_serial = 'R'
                     AND b.sad_num = 0
                     AND a.fis_gestion = prm_key_year
                     AND a.fis_gerencia = prm_key_cuo
                     AND a.fis_nro_control = prm_reg_serial
                     AND a.rec_lst_ope = 'U'
                     AND a.rec_numver = 0;

        /*SELECT   a.rec_codigo,
                     a.rec_tipo_deuda,
                     a.rec_monto,
                     a.rec_gestion||'/'||a.rec_aduana||'/R-'||a.rec_nro_recibo,
                     TO_CHAR (a.rec_fecha_pago, 'dd/mm/yyyy')
              FROM   cd_recibos a
             WHERE       a.fis_gestion = prm_key_year
                     AND a.fis_gerencia = prm_key_cuo
                     AND a.fis_nro_control = prm_reg_serial
                     AND a.rec_lst_ope = 'U'
                     AND a.rec_numver = 0;*/


        res := 'CORRECTO';

        RETURN res;
    END;



    FUNCTION devuelve_dui (prm_key_year     IN     VARCHAR2,
                           prm_key_cuo      IN     VARCHAR2,
                           prm_reg_serial   IN     VARCHAR2,
                           ct                  OUT cursortype)
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
          FROM   (SELECT   gen.key_year
                    FROM   ops$asy.sad_gen gen,
                           ops$asy.sad_itm itm,
                           ops$asy.sad_occ_cns cns,
                           ops$asy.bo_oce_opecab cmp,
                           ops$asy.undectab de,
                           ops$asy.unctytab cty,
                           ops$asy.sad_spy spy,
                           ops$asy.sad_spy spy3
                   WHERE      /*gen.sad_flw = '1'
                          AND */
                        gen    .sad_asmt_serial IS NOT NULL
                           AND gen.lst_ope = 'U'
                           AND gen.sad_num = '0'
                           AND gen.key_year = itm.key_year
                           AND gen.key_cuo = itm.key_cuo
                           AND gen.key_dec = itm.key_dec
                           AND gen.key_nber = itm.key_nber
                           AND itm.sad_num = '0'
                           AND gen.key_dec = de.dec_cod
                           AND gen.key_year = cns.key_year(+)
                           AND gen.key_cuo = cns.key_cuo(+)
                           AND gen.key_dec = cns.key_dec(+)
                           AND gen.key_nber = cns.key_nber(+)
                           AND gen.sad_num = cns.sad_num(+)
                           AND cns.sad_num(+) = '0'
                           AND gen.key_year = spy.key_year(+)
                           AND gen.key_cuo = spy.key_cuo(+)
                           AND gen.key_dec = spy.key_dec(+)
                           AND gen.key_nber = spy.key_nber(+)
                           AND spy.spy_sta(+) = '10'
                           AND spy.spy_act(+) = '24'
                           AND gen.key_year = spy3.key_year(+)
                           AND gen.key_cuo = spy3.key_cuo(+)
                           AND gen.key_dec = spy3.key_dec(+)
                           AND gen.key_nber = spy3.key_nber(+)
                           AND spy3.spy_sta(+) = 10
                           AND spy3.spy_act(+) = 71
                           AND itm.saditm_cty_origcod = cty.cty_cod
                           AND cty.lst_ope = 'U'
                           AND gen.sad_consignee = cmp.ope_numerodoc(+)
                     AND cmp.ope_num(+) = 0
                           AND gen.key_year = v_key_year
                           AND gen.key_cuo = v_key_cuo
                           AND gen.key_dec = v_key_dec
                           AND gen.key_nber = v_key_nber
                           AND gen.key_dec IS NOT NULL
                           AND itm.itm_nber = 1
                  UNION
                  SELECT   gen.key_year
                    FROM   ops$asy.sad_gen gen,
                           ops$asy.sad_itm itm,
                           ops$asy.sad_occ_cns cns,
                           ops$asy.bo_oce_opecab cmp,
                           ops$asy.sad_occ_dec deo,
                           ops$asy.unctytab cty,
                           ops$asy.sad_spy spy,
                           ops$asy.sad_spy spy3
                   WHERE      /*gen.sad_flw = '1'
                          AND */
                        gen    .sad_asmt_serial IS NOT NULL
                           AND gen.lst_ope = 'U'
                           AND gen.sad_num = '0'
                           AND gen.key_year = itm.key_year
                           AND gen.key_cuo = itm.key_cuo
                           AND itm.key_dec IS NULL
                           AND gen.key_nber = itm.key_nber
                           AND itm.sad_num = '0'
                           AND gen.key_year = deo.key_year
                           AND gen.key_cuo = deo.key_cuo
                           AND deo.key_dec IS NULL
                           AND gen.key_nber = deo.key_nber
                           AND gen.sad_num = deo.sad_num
                           AND gen.key_year = cns.key_year(+)
                           AND gen.key_cuo = cns.key_cuo(+)
                           AND cns.key_dec(+) IS NULL
                           AND gen.key_nber = cns.key_nber(+)
                           AND gen.sad_num = cns.sad_num(+)
                           AND cns.sad_num(+) = '0'
                           AND gen.key_year = spy.key_year(+)
                           AND gen.key_cuo = spy.key_cuo(+)
                           AND spy.key_dec(+) IS NULL
                           AND gen.key_nber = spy.key_nber(+)
                           AND spy.spy_sta(+) = '10'
                           AND spy.spy_act(+) = '24'
                           AND gen.key_year = spy3.key_year(+)
                           AND gen.key_cuo = spy3.key_cuo(+)
                           AND spy3.key_dec(+) IS NULL
                           AND gen.key_nber = spy3.key_nber(+)
                           AND spy3.spy_sta(+) = 10
                           AND spy3.spy_act(+) = 71
                           AND itm.saditm_cty_origcod = cty.cty_cod
                           AND cty.lst_ope = 'U'
                           AND gen.sad_consignee = cmp.ope_numerodoc(+)
                     AND cmp.ope_num(+) = 0
                           AND gen.key_year = v_key_year
                           AND gen.key_cuo = v_key_cuo
                           --AND gen.key_dec = v_key_dec
                           AND gen.key_nber = v_key_nber
                           AND gen.key_dec IS NULL
                           AND itm.itm_nber = 1) tbl;

        IF cont > 0
        THEN
            OPEN ct FOR
                SELECT   gen.key_year,
                         gen.key_cuo,
                         gen.sad_reg_nber,
                         gen.key_cuo,
                         'vista',
                         DECODE (gen.sad_consignee,
                                 NULL, cns.sad_con_zip,
                                 gen.sad_consignee)
                         || ':'
                         || DECODE (gen.sad_consignee,
                                    NULL, cns.sad_con_nam,
                                    nvl(cmp.ope_razonsocial,' '))
                             importador,
                         gen.key_dec || ':' || de.dec_nam declarante,
                         TO_CHAR (gen.sad_reg_date, 'dd/mm/yyyy')
                             fecha_registro,
                         DECODE (spy.sad_clr,
                                 0, 'VERDE',
                                 2, 'AMARILLO',
                                 3, 'ROJO',
                                 '-'),                     /*SORTEO DE CANAL*/
                         DECODE (spy4.upd_dat,
                                 NULL, ' ',
                                 TO_CHAR (spy4.upd_dat, 'DD/MM/YYYY'))
                         || ' '
                         || DECODE (spy4.upd_hor, NULL, ' ', spy4.upd_hor), /*FECHA Y HORA PASE DE SALIDA*/
                         --10

                         NVL (fis.fis_estado, 'SIN CONTROL DIFERIDO'),
                         DECODE (
                             fis_gestion,
                             NULL,
                             'SIN CODIGO',
                             fis.fis_gestion || 'CD' || fis.fis_gerencia
                             || DECODE (LENGTH (fis.fis_nro_control),
                                        1, '000' || fis.fis_nro_control,
                                        2, '00' || fis.fis_nro_control,
                                        3, '0' || fis.fis_nro_control,
                                        fis.fis_nro_control)),
                         TO_CHAR (fis.fis_fec_registro, 'dd/mm/yyyy'),
                         fis.fis_usuario_registro,
                         TO_CHAR (fis.fis_fec_notificacion, 'dd/mm/yyyy'),
                         fis.fis_obs_notificacion,
                         fis.fis_usuario_notificacion,
                         TO_CHAR (fis.fis_fec_finalizacion, 'dd/mm/yyyy'),
                         DECODE (fis.fis_ovalor, NULL, '', ' ' || 'VALOR')
                         || DECODE (fis.fis_opartida,
                                    NULL, '',
                                    ' ' || 'PARTIDA')
                         || DECODE (fis.fis_oorigen,
                                    NULL, '',
                                    ' ' || 'ORIGEN')
                         || DECODE (fis.fis_osinobs,
                                    NULL, '',
                                    ' ' || 'SIN_OBSERVACIONES')
                         || DECODE (fis.fis_comision,
                                    NULL, '',
                                    ' ' || 'OMISION_DE_PAGO')
                         || DECODE (fis.fis_ccondel,
                                    NULL, '',
                                    ' ' || 'CONTRABANDO_DELITO')
                         || DECODE (fis.fis_cconcon,
                                    NULL, '',
                                    ' ' || 'CONTRABANDO_CONTRAVENCIONAL')
                         || DECODE (fis.fis_cconadu,
                                    NULL, '',
                                    ' ' || 'CONTRAVENCION_ADUANERA'),
                         fis.fis_usuario_finalizacion,
                         --20


                         fis.fis_fiscalizador,
                         TO_CHAR (fis.fis_fec_liquidacion, 'dd/mm/yyyy'),
                           fis.fis_tributo_omitido_ga
                         + fis.fis_tributo_omitido_iva
                         + fis.fis_tributo_omitido_ice
                         + fis.fis_tributo_omitido_iehd
                         + fis.fis_sancion_omision
                         + fis.fis_multa_contrava
                         + fis.fis_multa_contrabc
                         + fis.fis_multa_contrabd
                             monto,
                         fis.fis_usuario_resultados,
                         TO_CHAR (fis.fis_reg_fec_not_doc, 'dd/mm/yyyy'),
                         fis.fis_reg_tip_not_doc,
                         TO_CHAR (fis.fis_reg_fec_env_legal, 'dd/mm/yyyy'),
                         fis.fis_reg_nro_env_legal,
                         TO_CHAR (fis.fis_fec_aceptacion, 'dd/mm/yyyy'),
                         TO_CHAR (fis.fis_reg_fec_doc_con, 'dd/mm/yyyy'),
                         --30


                         TO_CHAR (fis.fis_fec_liquidacion, 'dd/mm/yyyy'),
                         fis.fis_valor_ufv,
                         fis.fis_tributo_omitido_ga,
                         fis.fis_tributo_omitido_iva,
                         fis.fis_tributo_omitido_ice,
                         fis.fis_tributo_omitido_iehd,
                         fis.fis_sancion_omision,
                         fis.fis_multa_contrava,
                         fis.fis_multa_contrabc,
                         fis.fis_multa_contrabd,
                         --40


                         fis.fis_tributo_omitido_ufv_ga,
                         fis.fis_tributo_omitido_ufv_iva,
                         fis.fis_tributo_omitido_ufv_ice,
                         fis.fis_tributo_omitido_ufv_iehd,
                         fis.fis_sancion_omision_ufv,
                         fis.fis_multa_contrava_ufv,
                         fis.fis_multa_contrabc_ufv,
                         fis.fis_multa_contrabd_ufv,
                         fis.fis_usuario_aceptacion,
                         fis.fis_usuario_not_doc_con,
                         --50


                         fis.fis_usuario_env_legal,
                         fis.fis_gestion,
                         fis.fis_gerencia,
                         fis.fis_nro_control,
                         fis.fis_tipo_doc_con,
                         fis.fis_reg_nro_inf,
                         TO_CHAR (fis.fis_reg_fec_inf, 'dd/mm/yyyy'),
                         fis.fis_reg_nro_doc_con,
                         TO_CHAR (fis.fis_reg_fec_doc_con, 'dd/mm/yyyy'),
                         fis.fis_ovalor,
                         --60


                         fis.fis_opartida,
                         fis.fis_oorigen,
                         fis.fis_osinobs,
                         fis.fis_comision,
                         fis.fis_ccondel,
                         fis.fis_cconcon,
                         fis.fis_cconadu,
                         dirmira pagina,
                         fis.fis_origen_control,
                         --69
                         fis.fis_usuario,
                         fis.fis_fecha,
                         fis.fis_fob_inicial,
                         fis.fis_fob_final
                  FROM   ops$asy.sad_gen gen,
                         ops$asy.sad_itm itm,
                         ops$asy.sad_occ_cns cns,
                         ops$asy.bo_oce_opecab cmp,
                         ops$asy.undectab de,
                         ops$asy.unctytab cty,
                         ops$asy.sad_spy spy,
                         ops$asy.sad_spy spy3,
                         ops$asy.sad_spy spy4,
                         cd_fiscalizacion fis
                 WHERE          /*gen.sad_flw = '1'
                            AND */
                      gen    .sad_asmt_serial IS NOT NULL
                         AND gen.lst_ope = 'U'
                         AND gen.sad_num = '0'
                         AND gen.key_year = itm.key_year
                         AND gen.key_cuo = itm.key_cuo
                         AND gen.key_dec = itm.key_dec
                         AND gen.key_nber = itm.key_nber
                         AND itm.sad_num = '0'
                         AND gen.key_dec = de.dec_cod
                         AND gen.key_year = cns.key_year(+)
                         AND gen.key_cuo = cns.key_cuo(+)
                         AND gen.key_dec = cns.key_dec(+)
                         AND gen.key_nber = cns.key_nber(+)
                         AND gen.sad_num = cns.sad_num(+)
                         AND gen.key_year = fis.fis_key_year(+)
                         AND gen.key_cuo = fis.fis_key_cuo(+)
                         AND NVL (gen.key_dec, '-') =
                                NVL (fis.fis_key_dec(+), '-')
                         AND gen.key_nber = fis.fis_key_nber(+)
                         AND gen.lst_ope = fis.fis_lst_ope(+)
                         AND gen.sad_num = fis.fis_numver(+)
                         AND cns.sad_num(+) = '0'
                         AND gen.key_year = spy.key_year(+)
                         AND gen.key_cuo = spy.key_cuo(+)
                         AND gen.key_dec = spy.key_dec(+)
                         AND gen.key_nber = spy.key_nber(+)
                         AND spy.spy_sta(+) = '10'
                         AND spy.spy_act(+) = '24'
                         AND gen.key_year = spy3.key_year(+)
                         AND gen.key_cuo = spy3.key_cuo(+)
                         AND gen.key_dec = spy3.key_dec(+)
                         AND gen.key_nber = spy3.key_nber(+)
                         AND spy3.spy_sta(+) = 10
                         AND spy3.spy_act(+) = 71
                         AND gen.key_year = spy4.key_year(+)
                         AND gen.key_cuo = spy4.key_cuo(+)
                         AND gen.key_dec = spy4.key_dec(+)
                         AND gen.key_nber = spy4.key_nber(+)
                         AND spy4.spy_act(+) = 25
                         AND itm.saditm_cty_origcod = cty.cty_cod
                         AND cty.lst_ope = 'U'
                         AND gen.sad_consignee = cmp.ope_numerodoc(+)
                         AND cmp.ope_num(+) = 0
                         AND gen.key_year = v_key_year
                         AND gen.key_cuo = v_key_cuo
                         AND gen.key_dec = v_key_dec
                         AND gen.key_nber = v_key_nber
                         AND gen.key_dec IS NOT NULL
                         AND itm.itm_nber = 1
                UNION
                SELECT   gen.key_year,
                         gen.key_cuo,
                         gen.sad_reg_nber,
                         gen.key_cuo,
                         'vista',
                         DECODE (gen.sad_consignee,
                                 NULL, cns.sad_con_zip,
                                 gen.sad_consignee)
                         || ':'
                         || DECODE (gen.sad_consignee,
                                    NULL, cns.sad_con_nam,
                                    nvl(cmp.ope_razonsocial,' '))
                             importador,
                         gen.key_dec || ':' || deo.sad_dec_nam declarante,
                         TO_CHAR (gen.sad_reg_date, 'dd/mm/yyyy')
                             fecha_registro,
                         DECODE (spy.sad_clr,
                                 0, 'VERDE',
                                 2, 'AMARILLO',
                                 3, 'ROJO',
                                 '-'),                     /*SORTEO DE CANAL*/
                         DECODE (spy4.upd_dat,
                                 NULL, ' ',
                                 TO_CHAR (spy4.upd_dat, 'DD/MM/YYYY'))
                         || ' '
                         || DECODE (spy4.upd_hor, NULL, ' ', spy4.upd_hor) /*FECHA Y HORA PASE DE SALIDA*/
                                                                          ,
                         NVL (fis.fis_estado, 'SIN CONTROL DIFERIDO'),
                         DECODE (
                             fis_gestion,
                             NULL,
                             'SIN CODIGO',
                             fis_gestion || 'CD' || fis_gerencia
                             || DECODE (LENGTH (fis_nro_control),
                                        1, '000' || fis_nro_control,
                                        2, '00' || fis_nro_control,
                                        3, '0' || fis_nro_control,
                                        fis_nro_control)),
                         TO_CHAR (fis.fis_fec_registro, 'dd/mm/yyyy'),
                         fis.fis_usuario_registro,
                         TO_CHAR (fis.fis_fec_notificacion, 'dd/mm/yyyy'),
                         fis.fis_obs_notificacion,
                         fis.fis_usuario_notificacion,
                         TO_CHAR (fis.fis_fec_finalizacion, 'dd/mm/yyyy'),
                         DECODE (fis.fis_ovalor, NULL, '', ' ' || 'VALOR')
                         || DECODE (fis.fis_opartida,
                                    NULL, '',
                                    ' ' || 'PARTIDA')
                         || DECODE (fis.fis_oorigen,
                                    NULL, '',
                                    ' ' || 'ORIGEN')
                         || DECODE (fis.fis_osinobs,
                                    NULL, '',
                                    ' ' || 'SIN_OBSERVACIONES')
                         || DECODE (fis.fis_comision,
                                    NULL, '',
                                    ' ' || 'OMISION_DE_PAGO')
                         || DECODE (fis.fis_ccondel,
                                    NULL, '',
                                    ' ' || 'CONTRABANDO_DELITO')
                         || DECODE (fis.fis_cconcon,
                                    NULL, '',
                                    ' ' || 'CONTRABANDO_CONTRAVENCIONAL')
                         || DECODE (fis.fis_cconadu,
                                    NULL, '',
                                    ' ' || 'CONTRAVENCION_ADUANERA'),
                         fis.fis_usuario_finalizacion,
                         fis.fis_fiscalizador,
                         TO_CHAR (fis.fis_fec_liquidacion, 'dd/mm/yyyy'),
                           fis.fis_tributo_omitido_ga
                         + fis.fis_tributo_omitido_iva
                         + fis.fis_tributo_omitido_ice
                         + fis.fis_tributo_omitido_iehd
                         + fis.fis_sancion_omision
                         + fis.fis_multa_contrava
                         + fis.fis_multa_contrabc
                         + fis.fis_multa_contrabd
                             monto,
                         fis.fis_usuario_resultados,
                         TO_CHAR (fis.fis_reg_fec_not_doc, 'dd/mm/yyyy'),
                         fis.fis_reg_tip_not_doc,
                         TO_CHAR (fis.fis_reg_fec_env_legal, 'dd/mm/yyyy'),
                         fis.fis_reg_nro_env_legal,
                         TO_CHAR (fis.fis_fec_aceptacion, 'dd/mm/yyyy'),
                         TO_CHAR (fis.fis_reg_fec_doc_con, 'dd/mm/yyyy'),
                         TO_CHAR (fis.fis_fec_liquidacion, 'dd/mm/yyyy'),
                         fis.fis_valor_ufv,
                         fis.fis_tributo_omitido_ga,
                         fis.fis_tributo_omitido_iva,
                         fis.fis_tributo_omitido_ice,
                         fis.fis_tributo_omitido_iehd,
                         fis.fis_sancion_omision,
                         fis.fis_multa_contrava,
                         fis.fis_multa_contrabc,
                         fis.fis_multa_contrabd,
                         fis.fis_tributo_omitido_ufv_ga,
                         fis.fis_tributo_omitido_ufv_iva,
                         fis.fis_tributo_omitido_ufv_ice,
                         fis.fis_tributo_omitido_ufv_iehd,
                         fis.fis_sancion_omision_ufv,
                         fis.fis_multa_contrava_ufv,
                         fis.fis_multa_contrabc_ufv,
                         fis.fis_multa_contrabd_ufv,
                         fis.fis_usuario_aceptacion,
                         fis.fis_usuario_not_doc_con,
                         fis.fis_usuario_env_legal,
                         fis.fis_gestion,
                         fis.fis_gerencia,
                         fis.fis_nro_control,
                         fis.fis_tipo_doc_con,
                         fis.fis_reg_nro_inf,
                         TO_CHAR (fis.fis_reg_fec_inf, 'dd/mm/yyyy'),
                         fis.fis_reg_nro_doc_con,
                         TO_CHAR (fis.fis_reg_fec_doc_con, 'dd/mm/yyyy'),
                         fis.fis_ovalor,
                         fis.fis_opartida,
                         fis.fis_oorigen,
                         fis.fis_osinobs,
                         fis.fis_comision,
                         fis.fis_ccondel,
                         fis.fis_cconcon,
                         fis.fis_cconadu,
                         dirmira pagina,
                         fis.fis_origen_control,
                         fis.fis_usuario,
                         fis.fis_fecha,
                         fis.fis_fob_inicial,
                         fis.fis_fob_final
                  FROM   ops$asy.sad_gen gen,
                         ops$asy.sad_itm itm,
                         ops$asy.sad_occ_cns cns,
                         ops$asy.bo_oce_opecab cmp,
                         ops$asy.sad_occ_dec deo,
                         ops$asy.unctytab cty,
                         ops$asy.sad_spy spy,
                         ops$asy.sad_spy spy3,
                         ops$asy.sad_spy spy4,
                         cd_fiscalizacion fis
                 WHERE          /*gen.sad_flw = '1'
                            AND */
                      gen    .sad_asmt_serial IS NOT NULL
                         AND gen.lst_ope = 'U'
                         AND gen.sad_num = '0'
                         AND gen.key_year = itm.key_year
                         AND gen.key_cuo = itm.key_cuo
                         AND itm.key_dec IS NULL
                         AND gen.key_nber = itm.key_nber
                         AND itm.sad_num = '0'
                         AND gen.key_year = deo.key_year
                         AND gen.key_cuo = deo.key_cuo
                         AND deo.key_dec IS NULL
                         AND gen.key_nber = deo.key_nber
                         AND gen.sad_num = deo.sad_num
                         AND gen.key_year = cns.key_year(+)
                         AND gen.key_cuo = cns.key_cuo(+)
                         AND cns.key_dec(+) IS NULL
                         AND gen.key_nber = cns.key_nber(+)
                         AND gen.sad_num = cns.sad_num(+)
                         AND gen.key_year = fis.fis_key_year(+)
                         AND gen.key_cuo = fis.fis_key_cuo(+)
                         AND NVL (gen.key_dec, '-') =
                                NVL (fis.fis_key_dec(+), '-')
                         AND gen.key_nber = fis.fis_key_nber(+)
                         AND gen.lst_ope = fis.fis_lst_ope(+)
                         AND gen.sad_num = fis.fis_numver(+)
                         AND cns.sad_num(+) = '0'
                         AND gen.key_year = spy.key_year(+)
                         AND gen.key_cuo = spy.key_cuo(+)
                         AND spy.key_dec(+) IS NULL
                         AND gen.key_nber = spy.key_nber(+)
                         AND spy.spy_sta(+) = '10'
                         AND spy.spy_act(+) = '24'
                         AND gen.key_year = spy3.key_year(+)
                         AND gen.key_cuo = spy3.key_cuo(+)
                         AND spy3.key_dec(+) IS NULL
                         AND gen.key_nber = spy3.key_nber(+)
                         AND spy3.spy_sta(+) = 10
                         AND spy3.spy_act(+) = 71
                         AND gen.key_year = spy4.key_year(+)
                         AND gen.key_cuo = spy4.key_cuo(+)
                         AND spy4.key_dec(+) IS NULL
                         AND gen.key_nber = spy4.key_nber(+)
                         AND spy4.spy_act(+) = 25
                         AND itm.saditm_cty_origcod = cty.cty_cod
                         AND cty.lst_ope = 'U'
                         AND gen.sad_consignee = cmp.ope_numerodoc(+)
                         AND cmp.ope_num(+) = 0
                         AND gen.key_dec IS NULL
                         AND gen.key_year = v_key_year
                         AND gen.key_cuo = v_key_cuo
                         --AND gen.key_dec = v_key_dec
                         AND gen.key_nber = v_key_nber
                         AND itm.itm_nber = 1;

            res := 'CORRECTO';
        ELSE
            res := 'ERRORNO EXISTE LA DECLARACION';
        END IF;

        RETURN res;
    EXCEPTION
        WHEN OTHERS
        THEN
            ROLLBACK;
            RETURN 'ERROR'
                   || SUBSTR (TO_CHAR (SQLCODE) || ': ' || SQLERRM, 1, 255);
    END devuelve_dui;



    FUNCTION finaliza_control (prm_key_year          IN VARCHAR2,
                               prm_key_cuo           IN VARCHAR2,
                               prm_reg_serial        IN VARCHAR2,
                               prm_tipo_doc_con      IN VARCHAR2,
                               prm_reg_nro_inf       IN VARCHAR2,
                               prm_reg_fec_inf       IN VARCHAR2,
                               prm_reg_nro_doc_con   IN VARCHAR2,
                               prm_reg_fec_doc_con   IN VARCHAR2,
                               prm_observaciones     IN VARCHAR2,
                               prm_contravenciones   IN VARCHAR2,
                               prm_usuario           IN VARCHAR2,
                               prm_ovalor            IN VARCHAR2,
                               prm_opartida          IN VARCHAR2,
                               prm_oorigen           IN VARCHAR2,
                               prm_osinobs           IN VARCHAR2,
                               prm_comision          IN VARCHAR2,
                               prm_ccondel           IN VARCHAR2,
                               prm_cconcon           IN VARCHAR2,
                               prm_cconadu           IN VARCHAR2)
        RETURN VARCHAR2
    IS
        res          VARCHAR2 (300) := 0;
        v_key_year   VARCHAR2 (4);
        v_key_cuo    VARCHAR2 (4);
        v_key_dec    VARCHAR2 (17);
        v_key_nber   VARCHAR2 (13);
        nro          NUMBER (8) := 0;
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

        IF v_key_year IS NOT NULL
        THEN
            SELECT   MAX (a.fis_numver)
              INTO   nro
              FROM   cd_fiscalizacion a
             WHERE       a.fis_key_year = v_key_year
                     AND a.fis_key_cuo = v_key_cuo
                     AND a.fis_key_nber = v_key_nber
                     AND NVL (a.fis_key_dec, '-') = NVL (v_key_dec, '-');

            UPDATE   cd_fiscalizacion a
               SET   a.fis_numver = nro + 1
             WHERE       a.fis_key_year = v_key_year
                     AND a.fis_key_cuo = v_key_cuo
                     AND a.fis_key_nber = v_key_nber
                     AND NVL (a.fis_key_dec, '-') = NVL (v_key_dec, '-')
                     AND a.fis_numver = 0;

            INSERT INTO cd_fiscalizacion
                SELECT   a.fis_gestion,
                         a.fis_gerencia,
                         a.fis_nro_control,
                         a.fis_key_year,
                         a.fis_key_cuo,
                         a.fis_key_nber,
                         a.fis_key_dec,
                         a.sad_reg_year,
                         a.sad_reg_serial,
                         a.sad_reg_nber,
                         a.fis_fec_pase_salida,
                         a.fis_fec_registro,
                         a.fis_usuario_registro,
                         a.fis_fec_asignacion,
                         a.fis_usuario_asignacion,
                         a.fis_fec_notificacion,
                         a.fis_obs_notificacion,
                         a.fis_tipo_notificacion,
                         a.fis_usuario_notificacion,
                         a.fis_fec_liquidacion,
                         a.fis_tributo_omitido_ga,
                         a.fis_tributo_omitido_iva,
                         a.fis_tributo_omitido_ice,
                         a.fis_tributo_omitido_iehd,
                         a.fis_sancion_omision,
                         a.fis_multa_contrava,
                         a.fis_multa_contrabc,
                         a.fis_multa_contrabd,
                         a.fis_usuario_resultados,
                         a.fis_fec_aceptacion,
                         UPPER (prm_tipo_doc_con),
                         UPPER (prm_reg_nro_inf),
                         TO_DATE (prm_reg_fec_inf, 'DD/MM/YYYY'),
                         UPPER (prm_reg_nro_doc_con),
                         TO_DATE (prm_reg_fec_doc_con, 'DD/MM/YYYY'),
                         SYSDATE,
                         a.fis_reg_fec_not_doc,
                         a.fis_reg_tip_not_doc,
                         a.fis_reg_fec_env_legal,
                         a.fis_reg_nro_env_legal,
                         UPPER (prm_usuario),
                         'FINALIZADO',
                         'U',
                         UPPER (prm_usuario),
                         0,
                         SYSDATE,
                         a.fis_fiscalizador,
                         prm_ovalor,
                         prm_opartida,
                         prm_oorigen,
                         prm_osinobs,
                         prm_comision,
                         prm_ccondel,
                         prm_cconcon,
                         prm_cconadu,
                         a.fis_tributo_omitido_ufv_ga,
                         a.fis_tributo_omitido_ufv_iva,
                         a.fis_tributo_omitido_ufv_ice,
                         a.fis_tributo_omitido_ufv_iehd,
                         a.fis_sancion_omision_ufv,
                         a.fis_multa_contrava_ufv,
                         a.fis_multa_contrabc_ufv,
                         a.fis_multa_contrabd_ufv,
                         a.fis_valor_ufv,
                         a.fis_usuario_aceptacion,
                         a.fis_usuario_not_doc_con,
                         a.fis_usuario_env_legal,
                         a.fis_origen_control,
                         a.fis_fob_inicial,
                         a.fis_fob_final,
                         a.fis_fecha_anul,
                         a.fis_obs_anulacion,
                         a.fis_fecha_cierre,
                         a.fis_obs_cierre,
                         a.fis_justificativo_feccon
                  FROM   cd_fiscalizacion a
                 WHERE       a.fis_key_year = v_key_year
                         AND a.fis_key_cuo = v_key_cuo
                         AND a.fis_key_nber = v_key_nber
                         AND NVL (a.fis_key_dec, '-') = NVL (v_key_dec, '-')
                         AND a.fis_numver = nro + 1;


            res := 'CORRECTO';
            COMMIT;
        ELSE
            res := 'ERRORNO EXISTE LA DECLARACION';
        END IF;

        RETURN res;
    EXCEPTION
        WHEN OTHERS
        THEN
            ROLLBACK;
            RETURN 'ERROR'
                   || SUBSTR (TO_CHAR (SQLCODE) || ': ' || SQLERRM, 1, 255);
    END;

    FUNCTION finaliza_control_enm (prm_key_year          IN VARCHAR2,
                                   prm_key_cuo           IN VARCHAR2,
                                   prm_reg_serial        IN VARCHAR2,
                                   prm_tipo_doc_con      IN VARCHAR2,
                                   prm_reg_nro_inf       IN VARCHAR2,
                                   prm_reg_fec_inf       IN VARCHAR2,
                                   prm_reg_nro_doc_con   IN VARCHAR2,
                                   prm_reg_fec_doc_con   IN VARCHAR2,
                                   prm_observaciones     IN VARCHAR2,
                                   prm_contravenciones   IN VARCHAR2,
                                   prm_usuario           IN VARCHAR2,
                                   prm_ovalor            IN VARCHAR2,
                                   prm_opartida          IN VARCHAR2,
                                   prm_oorigen           IN VARCHAR2,
                                   prm_osinobs           IN VARCHAR2,
                                   prm_comision          IN VARCHAR2,
                                   prm_ccondel           IN VARCHAR2,
                                   prm_cconcon           IN VARCHAR2,
                                   prm_cconadu           IN VARCHAR2)
        RETURN VARCHAR2
    IS
        res             VARCHAR2 (300) := 0;
        v_key_year      VARCHAR2 (4);
        v_key_cuo       VARCHAR2 (4);
        v_key_dec       VARCHAR2 (17);
        v_key_nber      VARCHAR2 (13);
        nro             NUMBER (8) := 0;
        v_original      VARCHAR2 (1000);
        v_enmendado     VARCHAR2 (1000);

        v_gestion       VARCHAR2 (4);
        v_gerencia      VARCHAR2 (4);
        v_nro_control   NUMBER (18);
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

        IF v_key_year IS NOT NULL
        THEN
            SELECT   fis_gestion,
                     fis_gerencia,
                     fis_nro_control,
                        'Tipo de Documento: '
                     || a.fis_tipo_doc_con
                     || '<br>Nro. Informe: '
                     || a.fis_reg_nro_inf
                     || '<br>Fecha Informe: '
                     || TO_CHAR (a.fis_reg_fec_inf, 'dd/mm/yyyy')
                     || '<br>Nro. Doc. Conclusi&oacute;n: '
                     || a.fis_reg_nro_doc_con
                     || '<br>Fecha Doc. Conclusi&oacute;n: '
                     || TO_CHAR (a.fis_reg_fec_doc_con, 'dd/mm/yyyy')
                     || '<br>Observaciones Encontradas: '
                     || DECODE (a.fis_ovalor, NULL, '', 'VALOR, ')
                     || DECODE (a.fis_opartida, NULL, '', 'PARTIDA, ')
                     || DECODE (a.fis_oorigen, NULL, '', 'ORIGEN, ')
                     || DECODE (a.fis_osinobs,
                                NULL, '',
                                'SIN OBSERVACIONES,')
                     || '<br>Contravenciones encontradas: '
                     || DECODE (a.fis_comision, NULL, '', 'OMISION DE PAGO, ')
                     || DECODE (a.fis_ccondel,
                                NULL, '',
                                'CONTRABANDO DELITO, ')
                     || DECODE (a.fis_cconcon,
                                NULL, '',
                                'CONTRABANDO CONTRAVENCIONAL, ')
                     || DECODE (a.fis_cconadu,
                                NULL, '',
                                'CONTRAVENCION ADUANERA,')
              INTO   v_gestion,
                     v_gerencia,
                     v_nro_control,
                     v_original
              FROM   cd_fiscalizacion a
             WHERE       a.fis_key_year = v_key_year
                     AND a.fis_key_cuo = v_key_cuo
                     AND a.fis_key_nber = v_key_nber
                     AND NVL (a.fis_key_dec, '-') = NVL (v_key_dec, '-')
                     AND a.fis_numver = 0;

            SELECT      'Tipo de Documento: '
                     || prm_tipo_doc_con
                     || '<br>Nro. Informe: '
                     || prm_reg_nro_inf
                     || '<br>Fecha Informe: '
                     || prm_reg_fec_inf
                     || '<br>Nro. Doc. Conclusi&oacute;n: '
                     || prm_reg_nro_doc_con
                     || '<br>Fecha Doc. Conclusi&oacute;n: '
                     || prm_reg_fec_doc_con
                     || '<br>Observaciones Encontradas: '
                     || DECODE (prm_ovalor, NULL, '', 'VALOR, ')
                     || DECODE (prm_opartida, NULL, '', 'PARTIDA, ')
                     || DECODE (prm_oorigen, NULL, '', 'ORIGEN, ')
                     || DECODE (prm_osinobs, NULL, '', 'SIN OBSERVACIONES,')
                     || '<br>Contravenciones encontradas: '
                     || DECODE (prm_comision, NULL, '', 'OMISION DE PAGO, ')
                     || DECODE (prm_ccondel, NULL, '', 'CONTRABANDO DELITO, ')
                     || DECODE (prm_cconcon,
                                NULL, '',
                                'CONTRABANDO CONTRAVENCIONAL, ')
                     || DECODE (prm_cconadu,
                                NULL, '',
                                'CONTRAVENCION ADUANERA,')
              INTO   v_enmendado
              FROM   DUAL;

            SELECT   MAX (a.fis_numver)
              INTO   nro
              FROM   cd_fiscalizacion a
             WHERE       a.fis_key_year = v_key_year
                     AND a.fis_key_cuo = v_key_cuo
                     AND a.fis_key_nber = v_key_nber
                     AND NVL (a.fis_key_dec, '-') = NVL (v_key_dec, '-');

            UPDATE   cd_fiscalizacion a
               SET   a.fis_numver = nro + 1
             WHERE       a.fis_key_year = v_key_year
                     AND a.fis_key_cuo = v_key_cuo
                     AND a.fis_key_nber = v_key_nber
                     AND NVL (a.fis_key_dec, '-') = NVL (v_key_dec, '-')
                     AND a.fis_numver = 0;

            INSERT INTO cd_fiscalizacion
                SELECT   a.fis_gestion,
                         a.fis_gerencia,
                         a.fis_nro_control,
                         a.fis_key_year,
                         a.fis_key_cuo,
                         a.fis_key_nber,
                         a.fis_key_dec,
                         a.sad_reg_year,
                         a.sad_reg_serial,
                         a.sad_reg_nber,
                         a.fis_fec_pase_salida,
                         a.fis_fec_registro,
                         a.fis_usuario_registro,
                         a.fis_fec_asignacion,
                         a.fis_usuario_asignacion,
                         a.fis_fec_notificacion,
                         a.fis_obs_notificacion,
                         a.fis_tipo_notificacion,
                         a.fis_usuario_notificacion,
                         a.fis_fec_liquidacion,
                         a.fis_tributo_omitido_ga,
                         a.fis_tributo_omitido_iva,
                         a.fis_tributo_omitido_ice,
                         a.fis_tributo_omitido_iehd,
                         a.fis_sancion_omision,
                         a.fis_multa_contrava,
                         a.fis_multa_contrabc,
                         a.fis_multa_contrabd,
                         a.fis_usuario_resultados,
                         a.fis_fec_aceptacion,
                         UPPER (prm_tipo_doc_con),
                         UPPER (prm_reg_nro_inf),
                         TO_DATE (prm_reg_fec_inf, 'DD/MM/YYYY'),
                         UPPER (prm_reg_nro_doc_con),
                         TO_DATE (prm_reg_fec_doc_con, 'DD/MM/YYYY'),
                         SYSDATE,
                         a.fis_reg_fec_not_doc,
                         a.fis_reg_tip_not_doc,
                         a.fis_reg_fec_env_legal,
                         a.fis_reg_nro_env_legal,
                         UPPER (prm_usuario),
                         a.fis_estado,
                         'U',
                         UPPER (prm_usuario),
                         0,
                         SYSDATE,
                         a.fis_fiscalizador,
                         prm_ovalor,
                         prm_opartida,
                         prm_oorigen,
                         prm_osinobs,
                         prm_comision,
                         prm_ccondel,
                         prm_cconcon,
                         prm_cconadu,
                         a.fis_tributo_omitido_ufv_ga,
                         a.fis_tributo_omitido_ufv_iva,
                         a.fis_tributo_omitido_ufv_ice,
                         a.fis_tributo_omitido_ufv_iehd,
                         a.fis_sancion_omision_ufv,
                         a.fis_multa_contrava_ufv,
                         a.fis_multa_contrabc_ufv,
                         a.fis_multa_contrabd_ufv,
                         a.fis_valor_ufv,
                         a.fis_usuario_aceptacion,
                         a.fis_usuario_not_doc_con,
                         a.fis_usuario_env_legal,
                         a.fis_origen_control,
                         a.fis_fob_inicial,
                         a.fis_fob_final,
                         a.fis_fecha_anul,
                         a.fis_obs_anulacion,
                         a.fis_fecha_cierre,
                         a.fis_obs_cierre,
                         a.fis_justificativo_feccon
                  FROM   cd_fiscalizacion a
                 WHERE       a.fis_key_year = v_key_year
                         AND a.fis_key_cuo = v_key_cuo
                         AND a.fis_key_nber = v_key_nber
                         AND NVL (a.fis_key_dec, '-') = NVL (v_key_dec, '-')
                         AND a.fis_numver = nro + 1;

            SELECT   COUNT (1) + 1
              INTO   nro
              FROM   cd_enmiendas a;

            INSERT INTO cd_enmiendas a (a.enm_codigo,
                                        a.fis_gestion,
                                        a.fis_gerencia,
                                        a.fis_nro_control,
                                        a.enm_tipo_enmienda,
                                        a.enm_info_original,
                                        a.enm_info_enmendado,
                                        a.enm_observacion,
                                        a.enm_lst_ope,
                                        a.enm_usuario,
                                        a.enm_numver,
                                        a.enm_fecha)
              VALUES   (nro,
                        v_gestion,
                        v_gerencia,
                        v_nro_control,
                        'CONCLUSION',
                        v_original,
                        v_enmendado,
                        UPPER (prm_observaciones),
                        'U',
                        UPPER (prm_usuario),
                        0,
                        SYSDATE);

            res := 'CORRECTO';
            COMMIT;
        ELSE
            res := 'ERRORNO EXISTE LA DECLARACION';
        END IF;

        RETURN res;
    EXCEPTION
        WHEN OTHERS
        THEN
            ROLLBACK;
            RETURN 'ERROR'
                   || SUBSTR (TO_CHAR (SQLCODE) || ': ' || SQLERRM, 1, 255);
    END;

    FUNCTION registra_justificativoautcon (prm_key_year        IN VARCHAR2,
                                           prm_key_cuo         IN VARCHAR2,
                                           prm_reg_serial      IN VARCHAR2,
                                           prm_justificativo   IN VARCHAR2,
                                           prm_usuario         IN VARCHAR2)
        RETURN VARCHAR2
    IS
        res          VARCHAR2 (300) := 0;
        v_key_year   VARCHAR2 (4);
        v_key_cuo    VARCHAR2 (4);
        v_key_dec    VARCHAR2 (17);
        v_key_nber   VARCHAR2 (13);
        nro          NUMBER (8) := 0;
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

        IF v_key_year IS NOT NULL
        THEN
            SELECT   MAX (a.fis_numver)
              INTO   nro
              FROM   cd_fiscalizacion a
             WHERE       a.fis_key_year = v_key_year
                     AND a.fis_key_cuo = v_key_cuo
                     AND a.fis_key_nber = v_key_nber
                     AND NVL (a.fis_key_dec, '-') = NVL (v_key_dec, '-');

            UPDATE   cd_fiscalizacion a
               SET   a.fis_numver = nro + 1
             WHERE       a.fis_key_year = v_key_year
                     AND a.fis_key_cuo = v_key_cuo
                     AND a.fis_key_nber = v_key_nber
                     AND NVL (a.fis_key_dec, '-') = NVL (v_key_dec, '-')
                     AND a.fis_numver = 0;

            INSERT INTO cd_fiscalizacion
                SELECT   a.fis_gestion,
                         a.fis_gerencia,
                         a.fis_nro_control,
                         a.fis_key_year,
                         a.fis_key_cuo,
                         a.fis_key_nber,
                         a.fis_key_dec,
                         a.sad_reg_year,
                         a.sad_reg_serial,
                         a.sad_reg_nber,
                         a.fis_fec_pase_salida,
                         a.fis_fec_registro,
                         a.fis_usuario_registro,
                         a.fis_fec_asignacion,
                         a.fis_usuario_asignacion,
                         a.fis_fec_notificacion,
                         a.fis_obs_notificacion,
                         a.fis_tipo_notificacion,
                         a.fis_usuario_notificacion,
                         a.fis_fec_liquidacion,
                         a.fis_tributo_omitido_ga,
                         a.fis_tributo_omitido_iva,
                         a.fis_tributo_omitido_ice,
                         a.fis_tributo_omitido_iehd,
                         a.fis_sancion_omision,
                         a.fis_multa_contrava,
                         a.fis_multa_contrabc,
                         a.fis_multa_contrabd,
                         a.fis_usuario_resultados,
                         a.fis_fec_aceptacion,
                         a.fis_tipo_doc_con,
                         a.fis_reg_nro_inf,
                         a.fis_reg_fec_inf,
                         a.fis_reg_nro_doc_con,
                         a.fis_reg_fec_doc_con,
                         a.fis_fec_finalizacion,
                         a.fis_reg_fec_not_doc,
                         a.fis_reg_tip_not_doc,
                         a.fis_reg_fec_env_legal,
                         a.fis_reg_nro_env_legal,
                         a.fis_usuario_finalizacion,
                         a.fis_estado,
                         'U',
                         UPPER (prm_usuario),
                         0,
                         SYSDATE,
                         a.fis_fiscalizador,
                         a.fis_ovalor,
                         a.fis_opartida,
                         a.fis_oorigen,
                         a.fis_osinobs,
                         a.fis_comision,
                         a.fis_ccondel,
                         a.fis_cconcon,
                         a.fis_cconadu,
                         a.fis_tributo_omitido_ufv_ga,
                         a.fis_tributo_omitido_ufv_iva,
                         a.fis_tributo_omitido_ufv_ice,
                         a.fis_tributo_omitido_ufv_iehd,
                         a.fis_sancion_omision_ufv,
                         a.fis_multa_contrava_ufv,
                         a.fis_multa_contrabc_ufv,
                         a.fis_multa_contrabd_ufv,
                         a.fis_valor_ufv,
                         a.fis_usuario_aceptacion,
                         a.fis_usuario_not_doc_con,
                         a.fis_usuario_env_legal,
                         a.fis_origen_control,
                         a.fis_fob_inicial,
                         a.fis_fob_final,
                         a.fis_fecha_anul,
                         a.fis_obs_anulacion,
                         a.fis_fecha_cierre,
                         a.fis_obs_cierre,
                         UPPER (prm_justificativo)
                  FROM   cd_fiscalizacion a
                 WHERE       a.fis_key_year = v_key_year
                         AND a.fis_key_cuo = v_key_cuo
                         AND a.fis_key_nber = v_key_nber
                         AND NVL (a.fis_key_dec, '-') = NVL (v_key_dec, '-')
                         AND a.fis_numver = nro + 1;


            res := 'CORRECTO';
            COMMIT;
        ELSE
            res := 'ERRORNO EXISTE LA DECLARACION';
        END IF;

        RETURN res;
    EXCEPTION
        WHEN OTHERS
        THEN
            ROLLBACK;
            RETURN 'ERROR'
                   || SUBSTR (TO_CHAR (SQLCODE) || ': ' || SQLERRM, 1, 255);
    END;


    FUNCTION notifica_control (prm_key_year     IN VARCHAR2,
                               prm_key_cuo      IN VARCHAR2,
                               prm_reg_serial   IN VARCHAR2,
                               prm_fec_not      IN VARCHAR2,
                               prm_obs          IN VARCHAR2,
                               prm_tipo_not     IN VARCHAR2,
                               prm_usuario      IN VARCHAR2)
        RETURN VARCHAR2
    IS
        res          VARCHAR2 (300) := 0;
        v_key_year   VARCHAR2 (4);
        v_key_cuo    VARCHAR2 (4);
        v_key_dec    VARCHAR2 (17);
        v_key_nber   VARCHAR2 (13);
        nro          NUMBER (8) := 0;
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

        IF v_key_year IS NOT NULL
        THEN
            SELECT   MAX (a.fis_numver)
              INTO   nro
              FROM   cd_fiscalizacion a
             WHERE       a.fis_key_year = v_key_year
                     AND a.fis_key_cuo = v_key_cuo
                     AND a.fis_key_nber = v_key_nber
                     AND NVL (a.fis_key_dec, '-') = NVL (v_key_dec, '-');

            UPDATE   cd_fiscalizacion a
               SET   a.fis_numver = nro + 1
             WHERE       a.fis_key_year = v_key_year
                     AND a.fis_key_cuo = v_key_cuo
                     AND a.fis_key_nber = v_key_nber
                     AND NVL (a.fis_key_dec, '-') = NVL (v_key_dec, '-')
                     AND a.fis_numver = 0;

            INSERT INTO cd_fiscalizacion
                SELECT   a.fis_gestion,
                         a.fis_gerencia,
                         a.fis_nro_control,
                         a.fis_key_year,
                         a.fis_key_cuo,
                         a.fis_key_nber,
                         a.fis_key_dec,
                         a.sad_reg_year,
                         a.sad_reg_serial,
                         a.sad_reg_nber,
                         a.fis_fec_pase_salida,
                         a.fis_fec_registro,
                         a.fis_usuario_registro,
                         a.fis_fec_asignacion,
                         a.fis_usuario_asignacion,
                         TO_DATE (prm_fec_not, 'DD/MM/YYYY'),
                         UPPER (prm_obs),
                         UPPER (prm_tipo_not),
                         UPPER (prm_usuario),
                         a.fis_fec_liquidacion,
                         a.fis_tributo_omitido_ufv_ga,
                         a.fis_tributo_omitido_ufv_iva,
                         a.fis_tributo_omitido_ufv_ice,
                         a.fis_tributo_omitido_ufv_iehd,
                         a.fis_sancion_omision,
                         a.fis_multa_contrava,
                         a.fis_multa_contrabc,
                         a.fis_multa_contrabd,
                         a.fis_usuario_resultados,
                         a.fis_fec_aceptacion,
                         a.fis_tipo_doc_con,
                         a.fis_reg_nro_inf,
                         a.fis_reg_fec_inf,
                         a.fis_reg_nro_doc_con,
                         a.fis_reg_fec_doc_con,
                         a.fis_fec_finalizacion,
                         a.fis_reg_fec_not_doc,
                         a.fis_reg_tip_not_doc,
                         a.fis_reg_fec_env_legal,
                         a.fis_reg_nro_env_legal,
                         a.fis_usuario_finalizacion,
                         'NOTIFICADO',
                         'U',
                         UPPER (prm_usuario),
                         0,
                         SYSDATE,
                         a.fis_fiscalizador,
                         a.fis_ovalor,
                         a.fis_opartida,
                         a.fis_oorigen,
                         a.fis_osinobs,
                         a.fis_comision,
                         a.fis_ccondel,
                         a.fis_cconcon,
                         a.fis_cconadu,
                         a.fis_tributo_omitido_ga,
                         a.fis_tributo_omitido_iva,
                         a.fis_tributo_omitido_ice,
                         a.fis_tributo_omitido_iehd,
                         a.fis_sancion_omision_ufv,
                         a.fis_multa_contrava_ufv,
                         a.fis_multa_contrabc_ufv,
                         a.fis_multa_contrabd_ufv,
                         a.fis_valor_ufv,
                         a.fis_usuario_aceptacion,
                         a.fis_usuario_not_doc_con,
                         a.fis_usuario_env_legal,
                         a.fis_origen_control,
                         a.fis_fob_inicial,
                         a.fis_fob_final,
                         a.fis_fecha_anul,
                         a.fis_obs_anulacion,
                         a.fis_fecha_cierre,
                         a.fis_obs_cierre,
                         a.fis_justificativo_feccon
                  FROM   cd_fiscalizacion a
                 WHERE       a.fis_key_year = v_key_year
                         AND a.fis_key_cuo = v_key_cuo
                         AND a.fis_key_nber = v_key_nber
                         AND NVL (a.fis_key_dec, '-') = NVL (v_key_dec, '-')
                         AND a.fis_numver = nro + 1;


            res := 'CORRECTO';
            COMMIT;
        ELSE
            res := 'ERRORNO EXISTE LA DECLARACION';
        END IF;

        RETURN res;
    EXCEPTION
        WHEN OTHERS
        THEN
            ROLLBACK;
            RETURN 'ERROR'
                   || SUBSTR (TO_CHAR (SQLCODE) || ': ' || SQLERRM, 1, 255);
    END;


    FUNCTION notifica_control_enm (prm_key_year     IN VARCHAR2,
                                   prm_key_cuo      IN VARCHAR2,
                                   prm_reg_serial   IN VARCHAR2,
                                   prm_fec_not      IN VARCHAR2,
                                   prm_obs          IN VARCHAR2,
                                   prm_tipo_not     IN VARCHAR2,
                                   prm_usuario      IN VARCHAR2)
        RETURN VARCHAR2
    IS
        res          VARCHAR2 (300) := 0;
        v_key_year   VARCHAR2 (4);
        v_key_cuo    VARCHAR2 (4);
        v_key_dec    VARCHAR2 (17);
        v_key_nber   VARCHAR2 (13);
        nro          NUMBER (8) := 0;
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

        IF v_key_year IS NOT NULL
        THEN
            SELECT   MAX (a.fis_numver)
              INTO   nro
              FROM   cd_fiscalizacion a
             WHERE       a.fis_key_year = v_key_year
                     AND a.fis_key_cuo = v_key_cuo
                     AND a.fis_key_nber = v_key_nber
                     AND NVL (a.fis_key_dec, '-') = NVL (v_key_dec, '-');

            UPDATE   cd_fiscalizacion a
               SET   a.fis_numver = nro + 1
             WHERE       a.fis_key_year = v_key_year
                     AND a.fis_key_cuo = v_key_cuo
                     AND a.fis_key_nber = v_key_nber
                     AND NVL (a.fis_key_dec, '-') = NVL (v_key_dec, '-')
                     AND a.fis_numver = 0;

            INSERT INTO cd_fiscalizacion
                SELECT   a.fis_gestion,
                         a.fis_gerencia,
                         a.fis_nro_control,
                         a.fis_key_year,
                         a.fis_key_cuo,
                         a.fis_key_nber,
                         a.fis_key_dec,
                         a.sad_reg_year,
                         a.sad_reg_serial,
                         a.sad_reg_nber,
                         a.fis_fec_pase_salida,
                         a.fis_fec_registro,
                         a.fis_usuario_registro,
                         a.fis_fec_asignacion,
                         a.fis_usuario_asignacion,
                         TO_DATE (prm_fec_not, 'DD/MM/YYYY'),
                         UPPER (prm_obs),
                         UPPER (prm_tipo_not),
                         UPPER (prm_usuario),
                         a.fis_fec_liquidacion,
                         a.fis_tributo_omitido_ufv_ga,
                         a.fis_tributo_omitido_ufv_iva,
                         a.fis_tributo_omitido_ufv_ice,
                         a.fis_tributo_omitido_ufv_iehd,
                         a.fis_sancion_omision,
                         a.fis_multa_contrava,
                         a.fis_multa_contrabc,
                         a.fis_multa_contrabd,
                         a.fis_usuario_resultados,
                         a.fis_fec_aceptacion,
                         a.fis_tipo_doc_con,
                         a.fis_reg_nro_inf,
                         a.fis_reg_fec_inf,
                         a.fis_reg_nro_doc_con,
                         a.fis_reg_fec_doc_con,
                         a.fis_fec_finalizacion,
                         a.fis_reg_fec_not_doc,
                         a.fis_reg_tip_not_doc,
                         a.fis_reg_fec_env_legal,
                         a.fis_reg_nro_env_legal,
                         a.fis_usuario_finalizacion,
                         a.fis_estado,
                         'U',
                         UPPER (prm_usuario),
                         0,
                         SYSDATE,
                         a.fis_fiscalizador,
                         a.fis_ovalor,
                         a.fis_opartida,
                         a.fis_oorigen,
                         a.fis_osinobs,
                         a.fis_comision,
                         a.fis_ccondel,
                         a.fis_cconcon,
                         a.fis_cconadu,
                         a.fis_tributo_omitido_ga,
                         a.fis_tributo_omitido_iva,
                         a.fis_tributo_omitido_ice,
                         a.fis_tributo_omitido_iehd,
                         a.fis_sancion_omision_ufv,
                         a.fis_multa_contrava_ufv,
                         a.fis_multa_contrabc_ufv,
                         a.fis_multa_contrabd_ufv,
                         a.fis_valor_ufv,
                         a.fis_usuario_aceptacion,
                         a.fis_usuario_not_doc_con,
                         a.fis_usuario_env_legal,
                         a.fis_origen_control,
                         a.fis_fob_inicial,
                         a.fis_fob_final,
                         a.fis_fecha_anul,
                         a.fis_obs_anulacion,
                         a.fis_fecha_cierre,
                         a.fis_obs_cierre,
                         a.fis_justificativo_feccon
                  FROM   cd_fiscalizacion a
                 WHERE       a.fis_key_year = v_key_year
                         AND a.fis_key_cuo = v_key_cuo
                         AND a.fis_key_nber = v_key_nber
                         AND NVL (a.fis_key_dec, '-') = NVL (v_key_dec, '-')
                         AND a.fis_numver = nro + 1;


            res := 'CORRECTO';
            COMMIT;
        ELSE
            res := 'ERRORNO EXISTE LA DECLARACION';
        END IF;

        RETURN res;
    EXCEPTION
        WHEN OTHERS
        THEN
            ROLLBACK;
            RETURN 'ERROR'
                   || SUBSTR (TO_CHAR (SQLCODE) || ': ' || SQLERRM, 1, 255);
    END;



    FUNCTION asigna_control (prm_key_year     IN VARCHAR2,
                             prm_key_cuo      IN VARCHAR2,
                             prm_reg_serial   IN VARCHAR2,
                             prm_usuario      IN VARCHAR2)
        RETURN VARCHAR2
    IS
        res          VARCHAR2 (300) := 0;
        v_key_year   VARCHAR2 (4);
        v_key_cuo    VARCHAR2 (4);
        v_key_dec    VARCHAR2 (17);
        v_key_nber   VARCHAR2 (13);
        nro          NUMBER (8) := 0;
        nrocd        NUMBER (8) := 0;

        cd_year      VARCHAR2 (4);
        cd_ger       VARCHAR2 (4);
        cd_nro       NUMBER (8);
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

        IF v_key_year IS NOT NULL
        THEN
            SELECT   a.fis_gestion, a.fis_gerencia, fis_nro_control
              INTO   cd_year, cd_ger, cd_nro
              FROM   cd_fiscalizacion a
             WHERE       a.fis_key_year = v_key_year
                     AND a.fis_key_cuo = v_key_cuo
                     AND a.fis_key_nber = v_key_nber
                     AND NVL (a.fis_key_dec, '-') = NVL (v_key_dec, '-')
                     AND a.fis_numver = 0;


            SELECT   MAX (a.fis_numver)
              INTO   nro
              FROM   cd_fiscalizacion a
             WHERE       a.fis_key_year = v_key_year
                     AND a.fis_key_cuo = v_key_cuo
                     AND a.fis_key_nber = v_key_nber
                     AND NVL (a.fis_key_dec, '-') = NVL (v_key_dec, '-');

            UPDATE   cd_fiscalizacion a
               SET   a.fis_numver = nro + 1
             WHERE       a.fis_key_year = v_key_year
                     AND a.fis_key_cuo = v_key_cuo
                     AND a.fis_key_nber = v_key_nber
                     AND NVL (a.fis_key_dec, '-') = NVL (v_key_dec, '-')
                     AND a.fis_numver = 0;


            IF cd_nro = 0
            THEN
                SELECT   DECODE (MAX (a.fis_nro_control),
                                 NULL, 0,
                                 MAX (a.fis_nro_control))
                  INTO   nrocd
                  FROM   cd_fiscalizacion a
                 WHERE   a.fis_gestion = cd_year AND a.fis_gerencia = cd_ger;

                /*SELECT fis_nro_control INTO   nrocd FROM (     SELECT   a.fis_nro_control

                         FROM   cd_fiscalizacion a
                        WHERE   a.fis_gestion = cd_year AND a.fis_gerencia = cd_ger
                    FOR UPDATE) TBL;*/

                INSERT INTO cd_fiscalizacion
                    SELECT   a.fis_gestion,
                             a.fis_gerencia,
                             nrocd + 1,
                             a.fis_key_year,
                             a.fis_key_cuo,
                             a.fis_key_nber,
                             a.fis_key_dec,
                             a.sad_reg_year,
                             a.sad_reg_serial,
                             a.sad_reg_nber,
                             a.fis_fec_pase_salida,
                             a.fis_fec_registro,
                             a.fis_usuario_registro,
                             SYSDATE,
                             prm_usuario,
                             a.fis_fec_notificacion,
                             a.fis_obs_notificacion,
                             a.fis_tipo_notificacion,
                             a.fis_usuario_notificacion,
                             a.fis_fec_liquidacion,
                             a.fis_tributo_omitido_ga,
                             a.fis_tributo_omitido_iva,
                             a.fis_tributo_omitido_ice,
                             a.fis_tributo_omitido_iehd,
                             a.fis_sancion_omision,
                             a.fis_multa_contrava,
                             a.fis_multa_contrabc,
                             a.fis_multa_contrabd,
                             a.fis_usuario_resultados,
                             a.fis_fec_aceptacion,
                             a.fis_tipo_doc_con,
                             a.fis_reg_nro_inf,
                             a.fis_reg_fec_inf,
                             a.fis_reg_nro_doc_con,
                             a.fis_reg_fec_doc_con,
                             a.fis_fec_finalizacion,
                             a.fis_reg_fec_not_doc,
                             a.fis_reg_tip_not_doc,
                             a.fis_reg_fec_env_legal,
                             a.fis_reg_nro_env_legal,
                             a.fis_usuario_finalizacion,
                             'ASIGNADO',
                             'U',
                             UPPER (prm_usuario),
                             0,
                             SYSDATE,
                             a.fis_fiscalizador,
                             a.fis_ovalor,
                             a.fis_opartida,
                             a.fis_oorigen,
                             a.fis_osinobs,
                             a.fis_comision,
                             a.fis_ccondel,
                             a.fis_cconcon,
                             a.fis_cconadu,
                             a.fis_tributo_omitido_ufv_ga,
                             a.fis_tributo_omitido_ufv_iva,
                             a.fis_tributo_omitido_ufv_ice,
                             a.fis_tributo_omitido_ufv_iehd,
                             a.fis_sancion_omision_ufv,
                             a.fis_multa_contrava_ufv,
                             a.fis_multa_contrabc_ufv,
                             a.fis_multa_contrabd_ufv,
                             a.fis_valor_ufv,
                             a.fis_usuario_aceptacion,
                             a.fis_usuario_not_doc_con,
                             a.fis_usuario_env_legal,
                             a.fis_origen_control,
                             a.fis_fob_inicial,
                             a.fis_fob_final,
                             a.fis_fecha_anul,
                             a.fis_obs_anulacion,
                             a.fis_fecha_cierre,
                             a.fis_obs_cierre,
                             a.fis_justificativo_feccon
                      FROM   cd_fiscalizacion a
                     WHERE       a.fis_key_year = v_key_year
                             AND a.fis_key_cuo = v_key_cuo
                             AND a.fis_key_nber = v_key_nber
                             AND NVL (a.fis_key_dec, '-') =
                                    NVL (v_key_dec, '-')
                             AND a.fis_numver = nro + 1;
            ELSE
                INSERT INTO cd_fiscalizacion
                    SELECT   a.fis_gestion,
                             a.fis_gerencia,
                             a.fis_nro_control,
                             a.fis_key_year,
                             a.fis_key_cuo,
                             a.fis_key_nber,
                             a.fis_key_dec,
                             a.sad_reg_year,
                             a.sad_reg_serial,
                             a.sad_reg_nber,
                             a.fis_fec_pase_salida,
                             a.fis_fec_registro,
                             a.fis_usuario_registro,
                             SYSDATE,
                             prm_usuario,
                             a.fis_fec_notificacion,
                             a.fis_obs_notificacion,
                             a.fis_tipo_notificacion,
                             a.fis_usuario_notificacion,
                             a.fis_fec_liquidacion,
                             a.fis_tributo_omitido_ga,
                             a.fis_tributo_omitido_iva,
                             a.fis_tributo_omitido_ice,
                             a.fis_tributo_omitido_iehd,
                             a.fis_sancion_omision,
                             a.fis_multa_contrava,
                             a.fis_multa_contrabc,
                             a.fis_multa_contrabd,
                             a.fis_usuario_resultados,
                             a.fis_fec_aceptacion,
                             a.fis_tipo_doc_con,
                             a.fis_reg_nro_inf,
                             a.fis_reg_fec_inf,
                             a.fis_reg_nro_doc_con,
                             a.fis_reg_fec_doc_con,
                             a.fis_fec_finalizacion,
                             a.fis_reg_fec_not_doc,
                             a.fis_reg_tip_not_doc,
                             a.fis_reg_fec_env_legal,
                             a.fis_reg_nro_env_legal,
                             a.fis_usuario_finalizacion,
                             'ASIGNADO',
                             'U',
                             UPPER (prm_usuario),
                             0,
                             SYSDATE,
                             a.fis_fiscalizador,
                             a.fis_ovalor,
                             a.fis_opartida,
                             a.fis_oorigen,
                             a.fis_osinobs,
                             a.fis_comision,
                             a.fis_ccondel,
                             a.fis_cconcon,
                             a.fis_cconadu,
                             a.fis_tributo_omitido_ufv_ga,
                             a.fis_tributo_omitido_ufv_iva,
                             a.fis_tributo_omitido_ufv_ice,
                             a.fis_tributo_omitido_ufv_iehd,
                             a.fis_sancion_omision_ufv,
                             a.fis_multa_contrava_ufv,
                             a.fis_multa_contrabc_ufv,
                             a.fis_multa_contrabd_ufv,
                             a.fis_valor_ufv,
                             a.fis_usuario_aceptacion,
                             a.fis_usuario_not_doc_con,
                             a.fis_usuario_env_legal,
                             a.fis_origen_control,
                             a.fis_fob_inicial,
                             a.fis_fob_final,
                             a.fis_fecha_anul,
                             a.fis_obs_anulacion,
                             a.fis_fecha_cierre,
                             a.fis_obs_cierre,
                             a.fis_justificativo_feccon
                      FROM   cd_fiscalizacion a
                     WHERE       a.fis_key_year = v_key_year
                             AND a.fis_key_cuo = v_key_cuo
                             AND a.fis_key_nber = v_key_nber
                             AND NVL (a.fis_key_dec, '-') =
                                    NVL (v_key_dec, '-')
                             AND a.fis_numver = nro + 1;
            END IF;


            res := 'CORRECTO';
            COMMIT;
        ELSE
            res := 'ERRORNO EXISTE LA DECLARACION';
        END IF;

        RETURN res;
    EXCEPTION
        WHEN OTHERS
        THEN
            ROLLBACK;
            RETURN 'ERROR'
                   || SUBSTR (TO_CHAR (SQLCODE) || ': ' || SQLERRM, 1, 255);
    END;



    FUNCTION registra_control (prm_key_year       IN     VARCHAR2,
                               prm_key_cuo        IN     VARCHAR2,
                               prm_reg_serial     IN     VARCHAR2,
                               prm_usuario        IN     VARCHAR2,
                               prm_fiscalizador   IN     VARCHAR2,
                               prm_gerencia       IN     VARCHAR2,
                               prm_control           OUT VARCHAR2)
        RETURN VARCHAR2
    IS
        res           VARCHAR2 (300) := 0;
        v_key_year    VARCHAR2 (4);
        v_key_cuo     VARCHAR2 (4);
        v_key_dec     VARCHAR2 (17);
        v_key_nber    VARCHAR2 (13);
        v_fec_pase    DATE;
        nro           NUMBER (8) := 0;

        cont          NUMBER (8) := 0;
        fob_inicial   NUMBER (18, 2);
        vhay_anul     NUMBER := 0;

        cd_year       VARCHAR2 (4);
        cd_ger        VARCHAR2 (4);
        cd_nro        NUMBER (8);

        nro_v         NUMBER (8) := 0;
        nrocd         NUMBER (8) := 0;
        origen        VARCHAR (20);
        v_gerencia    VARCHAR2 (4);
    BEGIN
        SELECT   a.gercodger
          INTO   v_gerencia
          FROM   usuario.usuario a
         WHERE   usucodusu = prm_usuario AND usu_num = 0 AND lst_ope = 'U';


        IF prm_key_cuo = '101' AND v_gerencia = '21'
        THEN
            RETURN 'ERRORNO SE PUEDE REGISTRAR EL CONTROL EN ESTA REGIONAL';
        ELSE
            SELECT   COUNT (1)
              INTO   cont
              FROM   ops$asy.sad_gen gen, ops$asy.sad_spy spy
             WHERE       gen.sad_reg_year = prm_key_year
                     AND gen.key_cuo = prm_key_cuo
                     AND gen.sad_reg_serial = 'C'
                     AND gen.sad_reg_nber = prm_reg_serial
                     AND gen.lst_ope = 'U'
                     AND gen.sad_num = 0
                     AND gen.key_year = spy.key_year
                     AND gen.key_cuo = spy.key_cuo
                     AND gen.key_dec = spy.key_dec
                     AND gen.key_nber = spy.key_nber
                     AND spy.spy_sta = '10'
                     AND spy.spy_act = '24';

            IF cont > 0
            THEN
                origen := 'SICODIF';
            ELSE
                origen := 'SICODIF_CANAL';
            END IF;

            SELECT   a.key_year,
                     a.key_cuo,
                     a.key_dec,
                     a.key_nber,
                     a.sad_tot_invoiced
              INTO   v_key_year,
                     v_key_cuo,
                     v_key_dec,
                     v_key_nber,
                     fob_inicial
              FROM   ops$asy.sad_gen a
             WHERE       a.sad_reg_year = prm_key_year
                     AND a.key_cuo = prm_key_cuo
                     AND a.sad_reg_serial = 'C'
                     AND a.sad_reg_nber = prm_reg_serial
                     AND a.lst_ope = 'U'
                     AND a.sad_num = 0;


            /*
                    SELECT   COUNT (1)
                      INTO   cont
                      FROM   ops$asy.sad_spy a
                     WHERE       a.key_year = v_key_year
                             AND a.key_cuo = v_key_cuo
                             AND NVL (a.key_dec, 0) = NVL (v_key_dec, 0)
                             AND a.key_nber = v_key_nber
                             AND ( (a.spy_sta = '6' AND a.spy_act = '9' AND a.sad_clr = 0)
                                  OR (    a.spy_sta = '10'
                                      AND a.spy_act = '24'
                                      AND a.sad_clr = 0));

                    IF cont > 0
                    THEN*/
            SELECT   COUNT (1)
              INTO   cont
              FROM   ops$asy.sad_spy a
             WHERE       a.key_year = v_key_year
                     AND a.key_cuo = v_key_cuo
                     AND NVL (a.key_dec, 0) = NVL (v_key_dec, 0)
                     AND a.key_nber = v_key_nber
                     AND a.spy_act = 25
                     AND ROWNUM = 1;

            IF cont = 0
            THEN
                v_fec_pase := NULL;
            ELSE
                SELECT   DECODE (
                             a.upd_dat,
                             NULL,
                             NULL,
                             TO_DATE (a.upd_dat || ' ' || a.upd_hor,
                                      'DD/MM/YYYY hh24:mi:ss')) /*FECHA Y HORA PASE DE SALIDA*/
                  INTO   v_fec_pase
                  FROM   ops$asy.sad_spy a
                 WHERE       a.key_year = v_key_year
                         AND a.key_cuo = v_key_cuo
                         AND NVL (a.key_dec, 0) = NVL (v_key_dec, 0)
                         AND a.key_nber = v_key_nber
                         AND a.spy_act = 25
                         AND ROWNUM = 1;
            END IF;

            IF v_key_year IS NOT NULL
            THEN
                SELECT   DECODE (MAX (a.fis_nro_control),
                                 NULL, 0,
                                 MAX (a.fis_nro_control))
                  INTO   nro
                  FROM   cd_fiscalizacion a
                 WHERE   a.fis_gestion = TO_CHAR (SYSDATE, 'YYYY')
                         AND a.fis_gerencia = prm_gerencia;

                SELECT   COUNT ( * )
                  INTO   vhay_anul
                  FROM   cd_fiscalizacion a
                 WHERE       a.fis_key_year = v_key_year
                         AND a.fis_key_cuo = v_key_cuo
                         AND a.fis_key_nber = v_key_nber
                         AND NVL (a.fis_key_dec, '-') = NVL (v_key_dec, '-')
                         AND a.fis_numver = 0
                         AND a.fis_lst_ope = 'D';


                IF (vhay_anul > 0)
                THEN
                    SELECT   a.fis_gestion, a.fis_gerencia, fis_nro_control
                      INTO   cd_year, cd_ger, cd_nro
                      FROM   cd_fiscalizacion a
                     WHERE       a.fis_key_year = v_key_year
                             AND a.fis_key_cuo = v_key_cuo
                             AND a.fis_key_nber = v_key_nber
                             AND NVL (a.fis_key_dec, '-') =
                                    NVL (v_key_dec, '-')
                             AND a.fis_numver = 0;


                    SELECT   MAX (a.fis_numver)
                      INTO   nro_v
                      FROM   cd_fiscalizacion a
                     WHERE       a.fis_key_year = v_key_year
                             AND a.fis_key_cuo = v_key_cuo
                             AND a.fis_key_nber = v_key_nber
                             AND NVL (a.fis_key_dec, '-') =
                                    NVL (v_key_dec, '-');

                    UPDATE   cd_fiscalizacion a
                       SET   a.fis_numver = nro_v + 1
                     WHERE       a.fis_key_year = v_key_year
                             AND a.fis_key_cuo = v_key_cuo
                             AND a.fis_key_nber = v_key_nber
                             AND NVL (a.fis_key_dec, '-') =
                                    NVL (v_key_dec, '-')
                             AND a.fis_numver = 0;


                    SELECT   DECODE (MAX (a.fis_nro_control),
                                     NULL, 0,
                                     MAX (a.fis_nro_control))
                      INTO   nrocd
                      FROM   cd_fiscalizacion a
                     WHERE   a.fis_gestion = cd_year
                             AND a.fis_gerencia = cd_ger;

                    INSERT INTO cd_fiscalizacion
                        SELECT   a.fis_gestion,
                                 prm_gerencia,
                                 0,
                                 a.fis_key_year,
                                 a.fis_key_cuo,
                                 a.fis_key_nber,
                                 a.fis_key_dec,
                                 prm_key_year,
                                 'C',
                                 prm_reg_serial,
                                 --a.fis_fec_pase_salida,
                                 v_fec_pase,
                                 SYSDATE,
                                 prm_usuario,
                                 --a.fis_fec_asignacion,
                                 '',
                                 --a.fis_usuario_asignacion,
                                 '',
                                 --a.fis_fec_notificacion,
                                 '',
                                 --a.fis_obs_notificacion,
                                 '',
                                 --a.fis_tipo_notificacion,
                                 '',
                                 --a.fis_usuario_notificacion,
                                 '',
                                 --a.fis_fec_liquidacion,
                                 '',
                                 --a.fis_tributo_omitido_ga,
                                 '',
                                 --a.fis_tributo_omitido_iva,
                                 '',
                                 --a.fis_tributo_omitido_ice,
                                 '',
                                 --a.fis_tributo_omitido_iehd,
                                 '',
                                 --a.fis_sancion_omision,
                                 '',
                                 --a.fis_multa_contrava,
                                 '',
                                 --a.fis_multa_contrabc,
                                 '',
                                 --a.fis_multa_contrabd,
                                 '',
                                 --a.fis_usuario_resultados,
                                 '',
                                 --a.fis_fec_aceptacion,
                                 '',
                                 --a.fis_tipo_doc_con,
                                 '',
                                 --a.fis_reg_nro_inf,
                                 '',
                                 --a.fis_reg_fec_inf,
                                 '',
                                 --a.fis_reg_nro_doc_con,
                                 '',
                                 --a.fis_reg_fec_doc_con,
                                 '',
                                 --a.fis_fec_finalizacion,
                                 '',
                                 --a.fis_reg_fec_not_doc,
                                 '',
                                 --.fis_reg_tip_not_doc,
                                 '',
                                 --a.fis_reg_fec_env_legal,
                                 '',
                                 --a.fis_reg_nro_env_legal,
                                 '',
                                 --a.fis_usuario_finalizacion,
                                 '',
                                 /* a.fis_estado,
                                  a.fis_lst_ope,
                                  a.fis_usuario,
                                  a.fis_numver,
                                  a.fis_fecha,
                                  a.fis_fiscalizador, */
                                 'REGISTRADO',
                                 'U',
                                 prm_usuario,
                                 0,
                                 SYSDATE,
                                 prm_fiscalizador,
                                 --a.fis_ovalor,
                                 '',
                                 --a.fis_opartida,
                                 '',
                                 --a.fis_oorigen,
                                 '',
                                 --a.fis_osinobs,
                                 '',
                                 --a.fis_comision,
                                 '',
                                 --a.fis_ccondel,
                                 '',
                                 --a.fis_cconcon,
                                 '',
                                 --a.fis_cconadu,
                                 '',
                                 --a.fis_tributo_omitido_ufv_ga,
                                 '',
                                 --a.fis_tributo_omitido_ufv_iva,
                                 '',
                                 --a.fis_tributo_omitido_ufv_ice,
                                 '',
                                 --a.fis_tributo_omitido_ufv_iehd,
                                 '',
                                 --a.fis_sancion_omision_ufv,
                                 '',
                                 --a.fis_multa_contrava_ufv,
                                 '',
                                 --a.fis_multa_contrabc_ufv,
                                 '',
                                 --a.fis_multa_contrabd_ufv,
                                 '',
                                 --a.fis_valor_ufv,
                                 '',
                                 --a.fis_usuario_aceptacion,
                                 '',
                                 --a.fis_usuario_not_doc_con,
                                 '',
                                 --a.fis_usuario_env_legal,
                                 '',
                                 --a.fis_origen_control,
                                 origen,
                                 --a.fis_fob_inicial,
                                 fob_inicial,
                                 --a.fis_fob_final,
                                 '',
                                 --a.fis_fecha_anul,
                                 '',
                                 --a.fis_obs_anulacion,
                                 '',
                                 --a.fis_fecha_cierre,
                                 '',
                                 --a.fis_obs_cierre
                                 '',
                                 a.fis_justificativo_feccon
                          FROM   cd_fiscalizacion a
                         WHERE       a.fis_key_year = v_key_year
                                 AND a.fis_key_cuo = v_key_cuo
                                 AND a.fis_key_nber = v_key_nber
                                 AND NVL (a.fis_key_dec, '-') =
                                        NVL (v_key_dec, '-')
                                 AND a.fis_numver = nro_v + 1;
                ELSE
                    INSERT INTO cd_fiscalizacion a (a.fis_gestion,
                                                    a.fis_gerencia,
                                                    a.fis_nro_control,
                                                    a.fis_key_year,
                                                    a.fis_key_cuo,
                                                    a.fis_key_nber,
                                                    a.fis_key_dec,
                                                    a.sad_reg_year,
                                                    a.sad_reg_serial,
                                                    a.sad_reg_nber,
                                                    a.fis_fec_registro,
                                                    a.fis_usuario_registro,
                                                    a.fis_estado,
                                                    a.fis_lst_ope,
                                                    a.fis_usuario,
                                                    a.fis_numver,
                                                    a.fis_fecha,
                                                    a.fis_fiscalizador,
                                                    a.fis_origen_control,
                                                    a.fis_fec_pase_salida,
                                                    a.fis_fob_inicial)
                      VALUES   (TO_CHAR (SYSDATE, 'YYYY'),
                                prm_gerencia,
                                0,
                                --nro + 1,
                                v_key_year,
                                v_key_cuo,
                                v_key_nber,
                                v_key_dec,
                                prm_key_year,
                                'C',
                                prm_reg_serial,
                                SYSDATE,
                                prm_usuario,
                                'REGISTRADO',
                                'U',
                                prm_usuario,
                                0,
                                SYSDATE,
                                prm_fiscalizador,
                                origen,
                                v_fec_pase,
                                fob_inicial);

                    nro := nro + 1;
                END IF;

                prm_control := 'PENDIENTE';
                --  TO_CHAR (SYSDATE, 'YYYY') || 'CD' || gerencia || nro;
                res := 'CORRECTO';
                COMMIT;
            ELSE
                res := 'ERRORNO EXISTE LA DECLARACION';
            END IF;

            /* ELSE
                 res := 'ERRORLA DECLARACION NO TIENE AUTORIZACION DE LEVANTE';
             END IF;
     */


            RETURN res;
        END IF;
    EXCEPTION
        WHEN OTHERS
        THEN
            ROLLBACK;
            RETURN 'ERROR'
                   || SUBSTR (TO_CHAR (SQLCODE) || ': ' || SQLERRM, 1, 255);
    END;



    FUNCTION resultados_control (prm_key_year               IN VARCHAR2,
                                 prm_key_cuo                IN VARCHAR2,
                                 prm_reg_serial             IN VARCHAR2,
                                 prm_fec_liquidacion        IN VARCHAR2,
                                 prm_tributo_omitido_ga     IN VARCHAR2,
                                 prm_tributo_omitido_iva    IN VARCHAR2,
                                 prm_tributo_omitido_ice    IN VARCHAR2,
                                 prm_tributo_omitido_iehd   IN VARCHAR2,
                                 prm_multa_contrava         IN VARCHAR2,
                                 prm_multa_contrabc         IN VARCHAR2,
                                 prm_multa_contrabd         IN VARCHAR2,
                                 prm_usuario                IN VARCHAR2,
                                 prm_fobfinal               IN NUMBER)
        RETURN VARCHAR2
    IS
        res                          VARCHAR2 (300) := 0;
        v_key_year                   VARCHAR2 (4);
        v_key_cuo                    VARCHAR2 (4);
        v_key_dec                    VARCHAR2 (17);
        v_key_nber                   VARCHAR2 (13);
        nro                          NUMBER (8) := 0;

        v_sancion_omision            VARCHAR2 (30);

        v_tributo_omitido_ufv_ga     VARCHAR2 (30);
        v_tributo_omitido_ufv_iva    VARCHAR2 (30);
        v_tributo_omitido_ufv_ice    VARCHAR2 (30);
        v_tributo_omitido_ufv_iehd   VARCHAR2 (30);
        v_sancion_omision_ufv        VARCHAR2 (30);
        v_multa_contrava_ufv         VARCHAR2 (30);
        v_multa_contrava             VARCHAR2 (30);
        v_multa_contrabc_ufv         VARCHAR2 (30);
        v_multa_contrabd_ufv         VARCHAR2 (30);
        v_valor_ufv                  VARCHAR2 (30);
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

        IF v_key_year IS NOT NULL
        THEN
            SELECT   a.rat_exc
              INTO   v_valor_ufv
              FROM   ops$asy.unrattab a
             WHERE   a.cur_cod = 'UFV'
                     AND TO_DATE (prm_fec_liquidacion, 'dd/mm/yyyy') >=
                            TO_DATE (a.eea_dov)
                     AND TO_DATE (prm_fec_liquidacion, 'dd/mm/yyyy') <=
                            NVL (a.eea_eov, SYSDATE)
                     AND a.lst_ope = 'U';


            v_tributo_omitido_ufv_ga :=
                ROUND (prm_tributo_omitido_ga / v_valor_ufv, 0);
            v_tributo_omitido_ufv_iva :=
                ROUND (prm_tributo_omitido_iva / v_valor_ufv, 0);
            v_tributo_omitido_ufv_ice :=
                ROUND (prm_tributo_omitido_ice / v_valor_ufv, 0);
            v_tributo_omitido_ufv_iehd :=
                ROUND (prm_tributo_omitido_iehd / v_valor_ufv, 0);

            v_sancion_omision :=
                  prm_tributo_omitido_ga
                + prm_tributo_omitido_iva
                + prm_tributo_omitido_ice
                + prm_tributo_omitido_iehd;

            v_sancion_omision_ufv :=
                ROUND (v_sancion_omision / v_valor_ufv, 0);
            v_multa_contrava := ROUND (prm_multa_contrava * v_valor_ufv, 0);
            v_multa_contrava_ufv := prm_multa_contrava;
            v_multa_contrabc_ufv :=
                ROUND (prm_multa_contrabc / v_valor_ufv, 0);
            v_multa_contrabd_ufv :=
                ROUND (prm_multa_contrabd / v_valor_ufv, 0);

            SELECT   MAX (a.fis_numver)
              INTO   nro
              FROM   cd_fiscalizacion a
             WHERE       a.fis_key_year = v_key_year
                     AND a.fis_key_cuo = v_key_cuo
                     AND a.fis_key_nber = v_key_nber
                     AND NVL (a.fis_key_dec, '-') = NVL (v_key_dec, '-');

            UPDATE   cd_fiscalizacion a
               SET   a.fis_numver = nro + 1
             WHERE       a.fis_key_year = v_key_year
                     AND a.fis_key_cuo = v_key_cuo
                     AND a.fis_key_nber = v_key_nber
                     AND NVL (a.fis_key_dec, '-') = NVL (v_key_dec, '-')
                     AND a.fis_numver = 0;

            INSERT INTO cd_fiscalizacion
                SELECT   a.fis_gestion,
                         a.fis_gerencia,
                         a.fis_nro_control,
                         a.fis_key_year,
                         a.fis_key_cuo,
                         a.fis_key_nber,
                         a.fis_key_dec,
                         a.sad_reg_year,
                         a.sad_reg_serial,
                         a.sad_reg_nber,
                         a.fis_fec_pase_salida,
                         a.fis_fec_registro,
                         a.fis_usuario_registro,
                         a.fis_fec_asignacion,
                         a.fis_usuario_asignacion,
                         a.fis_fec_notificacion,
                         a.fis_obs_notificacion,
                         a.fis_tipo_notificacion,
                         a.fis_usuario_notificacion,
                         TO_DATE (prm_fec_liquidacion, 'DD/MM/YYYY'),
                         prm_tributo_omitido_ga,
                         prm_tributo_omitido_iva,
                         prm_tributo_omitido_ice,
                         prm_tributo_omitido_iehd,
                         v_sancion_omision,
                         v_multa_contrava,
                         prm_multa_contrabc,
                         prm_multa_contrabd,
                         UPPER (prm_usuario),
                         a.fis_fec_aceptacion,
                         a.fis_tipo_doc_con,
                         a.fis_reg_nro_inf,
                         a.fis_reg_fec_inf,
                         a.fis_reg_nro_doc_con,
                         a.fis_reg_fec_doc_con,
                         a.fis_fec_finalizacion,
                         a.fis_reg_fec_not_doc,
                         a.fis_reg_tip_not_doc,
                         a.fis_reg_fec_env_legal,
                         a.fis_reg_nro_env_legal,
                         a.fis_usuario_finalizacion,
                         'RESULTADOS',
                         'U',
                         UPPER (prm_usuario),
                         0,
                         SYSDATE,
                         a.fis_fiscalizador,
                         a.fis_ovalor,
                         a.fis_opartida,
                         a.fis_oorigen,
                         a.fis_osinobs,
                         a.fis_comision,
                         a.fis_ccondel,
                         a.fis_cconcon,
                         a.fis_cconadu,
                         v_tributo_omitido_ufv_ga,
                         v_tributo_omitido_ufv_iva,
                         v_tributo_omitido_ufv_ice,
                         v_tributo_omitido_ufv_iehd,
                         v_sancion_omision_ufv,
                         v_multa_contrava_ufv,
                         v_multa_contrabc_ufv,
                         v_multa_contrabd_ufv,
                         v_valor_ufv,
                         a.fis_usuario_aceptacion,
                         a.fis_usuario_not_doc_con,
                         a.fis_usuario_env_legal,
                         a.fis_origen_control,
                         a.fis_fob_inicial,
                         prm_fobfinal,
                         a.fis_fecha_anul,
                         a.fis_obs_anulacion,
                         a.fis_fecha_cierre,
                         a.fis_obs_cierre,
                         a.fis_justificativo_feccon
                  FROM   cd_fiscalizacion a
                 WHERE       a.fis_key_year = v_key_year
                         AND a.fis_key_cuo = v_key_cuo
                         AND a.fis_key_nber = v_key_nber
                         AND NVL (a.fis_key_dec, '-') = NVL (v_key_dec, '-')
                         AND a.fis_numver = nro + 1;


            res := 'CORRECTO';
            COMMIT;
        ELSE
            res := 'ERRORNO EXISTE LA DECLARACION';
        END IF;

        RETURN res;
    EXCEPTION
        WHEN OTHERS
        THEN
            ROLLBACK;
            RETURN 'ERROR'
                   || SUBSTR (TO_CHAR (SQLCODE) || ': ' || SQLERRM, 1, 255);
    END;


    FUNCTION resultados_control_enm (prm_key_year               IN VARCHAR2,
                                     prm_key_cuo                IN VARCHAR2,
                                     prm_reg_serial             IN VARCHAR2,
                                     prm_fec_liquidacion        IN VARCHAR2,
                                     prm_tributo_omitido_ga     IN VARCHAR2,
                                     prm_tributo_omitido_iva    IN VARCHAR2,
                                     prm_tributo_omitido_ice    IN VARCHAR2,
                                     prm_tributo_omitido_iehd   IN VARCHAR2,
                                     prm_multa_contrava         IN VARCHAR2,
                                     prm_multa_contrabc         IN VARCHAR2,
                                     prm_multa_contrabd         IN VARCHAR2,
                                     prm_usuario                IN VARCHAR2,
                                     prm_fobfinal               IN NUMBER)
        RETURN VARCHAR2
    IS
        res                          VARCHAR2 (300) := 0;
        v_key_year                   VARCHAR2 (4);
        v_key_cuo                    VARCHAR2 (4);
        v_key_dec                    VARCHAR2 (17);
        v_key_nber                   VARCHAR2 (13);
        nro                          NUMBER (8) := 0;

        v_sancion_omision            VARCHAR2 (30);

        v_tributo_omitido_ufv_ga     VARCHAR2 (30);
        v_tributo_omitido_ufv_iva    VARCHAR2 (30);
        v_tributo_omitido_ufv_ice    VARCHAR2 (30);
        v_tributo_omitido_ufv_iehd   VARCHAR2 (30);
        v_sancion_omision_ufv        VARCHAR2 (30);
        v_multa_contrava_ufv         VARCHAR2 (30);
        v_multa_contrava             VARCHAR2 (30);
        v_multa_contrabc_ufv         VARCHAR2 (30);
        v_multa_contrabd_ufv         VARCHAR2 (30);
        v_valor_ufv                  VARCHAR2 (30);
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

        IF v_key_year IS NOT NULL
        THEN
            SELECT   a.rat_exc
              INTO   v_valor_ufv
              FROM   ops$asy.unrattab a
             WHERE   a.cur_cod = 'UFV'
                     AND TO_DATE (prm_fec_liquidacion, 'dd/mm/yyyy') >=
                            TO_DATE (a.eea_dov)
                     AND TO_DATE (prm_fec_liquidacion, 'dd/mm/yyyy') <=
                            NVL (a.eea_eov, SYSDATE)
                     AND a.lst_ope = 'U';


            v_tributo_omitido_ufv_ga :=
                ROUND (prm_tributo_omitido_ga / v_valor_ufv, 0);
            v_tributo_omitido_ufv_iva :=
                ROUND (prm_tributo_omitido_iva / v_valor_ufv, 0);
            v_tributo_omitido_ufv_ice :=
                ROUND (prm_tributo_omitido_ice / v_valor_ufv, 0);
            v_tributo_omitido_ufv_iehd :=
                ROUND (prm_tributo_omitido_iehd / v_valor_ufv, 0);

            v_sancion_omision :=
                  prm_tributo_omitido_ga
                + prm_tributo_omitido_iva
                + prm_tributo_omitido_ice
                + prm_tributo_omitido_iehd;

            v_sancion_omision_ufv :=
                ROUND (v_sancion_omision / v_valor_ufv, 0);
            v_multa_contrava := ROUND (prm_multa_contrava * v_valor_ufv, 0);
            v_multa_contrava_ufv := prm_multa_contrava;
            v_multa_contrabc_ufv :=
                ROUND (prm_multa_contrabc / v_valor_ufv, 0);
            v_multa_contrabd_ufv :=
                ROUND (prm_multa_contrabd / v_valor_ufv, 0);

            SELECT   MAX (a.fis_numver)
              INTO   nro
              FROM   cd_fiscalizacion a
             WHERE       a.fis_key_year = v_key_year
                     AND a.fis_key_cuo = v_key_cuo
                     AND a.fis_key_nber = v_key_nber
                     AND NVL (a.fis_key_dec, '-') = NVL (v_key_dec, '-');

            UPDATE   cd_fiscalizacion a
               SET   a.fis_numver = nro + 1
             WHERE       a.fis_key_year = v_key_year
                     AND a.fis_key_cuo = v_key_cuo
                     AND a.fis_key_nber = v_key_nber
                     AND NVL (a.fis_key_dec, '-') = NVL (v_key_dec, '-')
                     AND a.fis_numver = 0;

            INSERT INTO cd_fiscalizacion
                SELECT   a.fis_gestion,
                         a.fis_gerencia,
                         a.fis_nro_control,
                         a.fis_key_year,
                         a.fis_key_cuo,
                         a.fis_key_nber,
                         a.fis_key_dec,
                         a.sad_reg_year,
                         a.sad_reg_serial,
                         a.sad_reg_nber,
                         a.fis_fec_pase_salida,
                         a.fis_fec_registro,
                         a.fis_usuario_registro,
                         a.fis_fec_asignacion,
                         a.fis_usuario_asignacion,
                         a.fis_fec_notificacion,
                         a.fis_obs_notificacion,
                         a.fis_tipo_notificacion,
                         a.fis_usuario_notificacion,
                         TO_DATE (prm_fec_liquidacion, 'DD/MM/YYYY'),
                         prm_tributo_omitido_ga,
                         prm_tributo_omitido_iva,
                         prm_tributo_omitido_ice,
                         prm_tributo_omitido_iehd,
                         v_sancion_omision,
                         v_multa_contrava,
                         prm_multa_contrabc,
                         prm_multa_contrabd,
                         UPPER (prm_usuario),
                         a.fis_fec_aceptacion,
                         a.fis_tipo_doc_con,
                         a.fis_reg_nro_inf,
                         a.fis_reg_fec_inf,
                         a.fis_reg_nro_doc_con,
                         a.fis_reg_fec_doc_con,
                         a.fis_fec_finalizacion,
                         a.fis_reg_fec_not_doc,
                         a.fis_reg_tip_not_doc,
                         a.fis_reg_fec_env_legal,
                         a.fis_reg_nro_env_legal,
                         a.fis_usuario_finalizacion,
                         a.fis_estado,
                         'U',
                         UPPER (prm_usuario),
                         0,
                         SYSDATE,
                         a.fis_fiscalizador,
                         a.fis_ovalor,
                         a.fis_opartida,
                         a.fis_oorigen,
                         a.fis_osinobs,
                         a.fis_comision,
                         a.fis_ccondel,
                         a.fis_cconcon,
                         a.fis_cconadu,
                         v_tributo_omitido_ufv_ga,
                         v_tributo_omitido_ufv_iva,
                         v_tributo_omitido_ufv_ice,
                         v_tributo_omitido_ufv_iehd,
                         v_sancion_omision_ufv,
                         v_multa_contrava_ufv,
                         v_multa_contrabc_ufv,
                         v_multa_contrabd_ufv,
                         v_valor_ufv,
                         a.fis_usuario_aceptacion,
                         a.fis_usuario_not_doc_con,
                         a.fis_usuario_env_legal,
                         a.fis_origen_control,
                         a.fis_fob_inicial,
                         prm_fobfinal,
                         a.fis_fecha_anul,
                         a.fis_obs_anulacion,
                         a.fis_fecha_cierre,
                         a.fis_obs_cierre,
                         a.fis_justificativo_feccon
                  FROM   cd_fiscalizacion a
                 WHERE       a.fis_key_year = v_key_year
                         AND a.fis_key_cuo = v_key_cuo
                         AND a.fis_key_nber = v_key_nber
                         AND NVL (a.fis_key_dec, '-') = NVL (v_key_dec, '-')
                         AND a.fis_numver = nro + 1;


            res := 'CORRECTO';
            COMMIT;
        ELSE
            res := 'ERRORNO EXISTE LA DECLARACION';
        END IF;

        RETURN res;
    EXCEPTION
        WHEN OTHERS
        THEN
            ROLLBACK;
            RETURN 'ERROR'
                   || SUBSTR (TO_CHAR (SQLCODE) || ': ' || SQLERRM, 1, 255);
    END;


    FUNCTION registra_recibo (prm_gestion          IN VARCHAR2,
                              prm_gerencia         IN VARCHAR2,
                              prm_nro_control      IN VARCHAR2,
                              prm_tipo_deuda       IN VARCHAR2,
                              prm_monto            IN VARCHAR2,
                              prm_fecha_pago       IN VARCHAR2,
                              prm_usuario          IN VARCHAR2,
                              prm_rec_gestion      IN VARCHAR2,
                              prm_rec_aduana       IN VARCHAR2,
                              prm_rec_nro_recibo   IN VARCHAR2)
        RETURN VARCHAR2
    IS
        res                    VARCHAR2 (300) := 0;
        v_key_year             VARCHAR2 (4);
        v_key_cuo              VARCHAR2 (4);
        v_key_dec              VARCHAR2 (17);
        v_key_nber             VARCHAR2 (13);
        nro                    NUMBER (8) := 0;
        gerencia               VARCHAR2 (4);
        cont                   NUMBER (8) := 0;
        v_fecha_recibo         DATE;
        v_fecha_notificacion   DATE;

        v_val_recibo           NUMBER (18);
        v_val_registro         NUMBER (18);
    BEGIN
        SELECT   COUNT (1)
          INTO   cont
          FROM   ops$asy.bo_sad_payment a
         WHERE       TO_CHAR (a.sad_rcpt_date, 'yyyy') = prm_rec_gestion
                 AND a.key_cuo = prm_rec_aduana
                 AND a.sad_rcpt_nber = prm_rec_nro_recibo
                 AND a.sad_num = 0;

        IF cont > 0
        THEN
            SELECT   sad_rcpt_date
              INTO   v_fecha_recibo
              FROM   ops$asy.bo_sad_payment a
             WHERE       TO_CHAR (a.sad_rcpt_date, 'yyyy') = prm_rec_gestion
                     AND a.key_cuo = prm_rec_aduana
                     AND a.sad_rcpt_nber = prm_rec_nro_recibo
                     AND a.sad_num = 0
                     AND ROWNUM = 1;

            SELECT   a.fis_fec_notificacion
              INTO   v_fecha_notificacion
              FROM   cd_fiscalizacion a
             WHERE       fis_gestion = prm_gestion
                     AND fis_gerencia = prm_gerencia
                     AND fis_nro_control = prm_nro_control
                     AND a.fis_lst_ope = 'U'
                     AND a.fis_numver = 0;

            IF v_fecha_recibo >= v_fecha_notificacion
            THEN
                SELECT   COUNT (1)
                  INTO   cont
                  FROM   cd_recibos a
                 WHERE       fis_gestion = prm_gestion
                         AND fis_gerencia = prm_gerencia
                         AND fis_nro_control = prm_nro_control
                         AND rec_tipo_deuda = prm_tipo_deuda
                         AND rec_gestion = prm_rec_gestion
                         AND rec_aduana = prm_rec_aduana
                         AND rec_nro_recibo = prm_rec_nro_recibo
                         AND rec_lst_ope = 'U'
                         AND rec_numver = 0;



                IF cont = 0
                THEN
                    SELECT   NVL (SUM (rec_monto), 0) + prm_monto
                      INTO   v_val_registro
                      FROM   cd_recibos a
                     WHERE       rec_gestion = prm_rec_gestion
                             AND rec_aduana = prm_rec_aduana
                             AND rec_nro_recibo = prm_rec_nro_recibo
                             AND rec_lst_ope = 'U'
                             AND rec_numver = 0;

                    SELECT   SUM (a.sad_pco_amount)
                      INTO   v_val_recibo
                      FROM   ops$asy.bo_sad_payment a
                     WHERE   sad_rcpt_nber = prm_rec_nro_recibo
                             AND TO_CHAR (sad_rcpt_date, 'yyyy') =
                                    prm_rec_gestion
                             AND key_cuo = prm_rec_aduana;

                    IF v_val_registro <= v_val_recibo
                    THEN
                        SELECT   DECODE (MAX (a.rec_codigo),
                                         NULL, 0,
                                         MAX (a.rec_codigo))
                          INTO   nro
                          FROM   cd_recibos a;

                        INSERT INTO cd_recibos a (a.rec_codigo,
                                                  a.fis_gestion,
                                                  a.fis_gerencia,
                                                  a.fis_nro_control,
                                                  a.rec_tipo_deuda,
                                                  a.rec_monto,
                                                  a.rec_fecha_pago,
                                                  a.rec_lst_ope,
                                                  a.rec_usuario,
                                                  a.rec_numver,
                                                  a.rec_fecha,
                                                  a.rec_gestion,
                                                  a.rec_aduana,
                                                  a.rec_nro_recibo)
                          VALUES   (nro + 1,
                                    prm_gestion,
                                    prm_gerencia,
                                    prm_nro_control,
                                    prm_tipo_deuda,
                                    prm_monto,
                                    SYSDATE,
                                    'U',
                                    prm_usuario,
                                    0,
                                    SYSDATE,
                                    prm_rec_gestion,
                                    prm_rec_aduana,
                                    prm_rec_nro_recibo);

                        res := 'CORRECTO';
                        COMMIT;
                    ELSE
                        res :=
                               'ERRORRECIBO '
                            || prm_rec_gestion
                            || ' '
                            || prm_rec_aduana
                            || ' R-'
                            || prm_rec_nro_recibo
                            || ', LA SUMA DE LOS MONTOS REGISTRADOS ES MAYOR AL VALOR DEL RECIBO';
                    END IF;
                ELSE
                    res :=
                           'ERRORRECIBO '
                        || prm_rec_gestion
                        || ' '
                        || prm_rec_aduana
                        || ' R-'
                        || prm_rec_nro_recibo
                        || ' YA SE ENCUENTRA REGISTRADO, CON EL MISMO CONCEPTO DE PAGO';
                END IF;
            ELSE
                res :=
                       'ERRORRECIBO '
                    || prm_rec_gestion
                    || ' '
                    || prm_rec_aduana
                    || ' R-'
                    || prm_rec_nro_recibo
                    || ' DE FECHA '
                    || TO_CHAR (v_fecha_recibo, 'dd/mm/yyyy')
                    || ' NO SE PUEDE SER REGISTRADO, PORQUE LA FECHA DE PAGO NO PUEDE SER INFERIOR A LA FECHA DE NOTIFICACION '
                    || TO_CHAR (v_fecha_notificacion, 'dd/mm/yyyy');
            END IF;
        ELSE
            res :=
                   'ERRORRECIBO '
                || prm_rec_gestion
                || ' '
                || prm_rec_aduana
                || ' R-'
                || prm_rec_nro_recibo
                || ' NO EXISTE';
        END IF;

        RETURN res;
    EXCEPTION
        WHEN OTHERS
        THEN
            ROLLBACK;
            RETURN 'ERROR'
                   || SUBSTR (TO_CHAR (SQLCODE) || ': ' || SQLERRM, 1, 255);
    END;


    FUNCTION elimina_recibo (prm_key_year     IN VARCHAR2,
                             prm_key_cuo      IN VARCHAR2,
                             prm_reg_serial   IN VARCHAR2,
                             prm_id           IN VARCHAR2,
                             prm_usuario      IN VARCHAR2)
        RETURN VARCHAR2
    IS
        res          VARCHAR2 (300) := 0;
        v_key_year   VARCHAR2 (4);
        v_key_cuo    VARCHAR2 (4);
        v_key_dec    VARCHAR2 (17);
        v_key_nber   VARCHAR2 (13);
        nro          NUMBER (8) := 0;
        gerencia     VARCHAR2 (4);
    BEGIN
        SELECT   MAX (a.rec_numver)
          INTO   nro
          FROM   cd_recibos a
         WHERE       a.fis_gestion = prm_key_year
                 AND a.fis_gerencia = prm_key_cuo
                 AND a.fis_nro_control = prm_reg_serial
                 AND a.rec_codigo = prm_id;

        UPDATE   cd_recibos a
           SET   a.rec_numver = nro + 1
         WHERE       a.fis_gestion = prm_key_year
                 AND a.fis_gerencia = prm_key_cuo
                 AND a.fis_nro_control = prm_reg_serial
                 AND a.rec_numver = 0
                 AND a.rec_codigo = prm_id;

        INSERT INTO cd_recibos
            SELECT   a.rec_codigo,
                     a.fis_gestion,
                     a.fis_gerencia,
                     a.fis_nro_control,
                     a.rec_tipo_deuda,
                     a.rec_monto,
                     a.rec_fecha_pago,
                     'D',
                     prm_usuario,
                     0,
                     SYSDATE,
                     a.rec_gestion,
                     a.rec_aduana,
                     a.rec_nro_recibo
              FROM   cd_recibos a
             WHERE       a.fis_gestion = prm_key_year
                     AND a.fis_gerencia = prm_key_cuo
                     AND a.fis_nro_control = prm_reg_serial
                     AND a.rec_numver = nro + 1
                     AND a.rec_codigo = prm_id;


        res := 'CORRECTO';
        COMMIT;


        RETURN res;
    EXCEPTION
        WHEN OTHERS
        THEN
            ROLLBACK;
            RETURN 'ERROR'
                   || SUBSTR (TO_CHAR (SQLCODE) || ': ' || SQLERRM, 1, 255);
    END;



    FUNCTION registra_aceptacion (prm_key_year         IN VARCHAR2,
                                  prm_key_cuo          IN VARCHAR2,
                                  prm_reg_serial       IN VARCHAR2,
                                  prm_fec_aceptacion   IN VARCHAR2,
                                  prm_rec_gestion      IN VARCHAR2,
                                  prm_rec_aduana       IN VARCHAR2,
                                  prm_rec_numero       IN VARCHAR2,
                                  prm_usuario          IN VARCHAR2)
        RETURN VARCHAR2
    IS
        res          VARCHAR2 (300) := 0;
        v_key_year   VARCHAR2 (4);
        v_key_cuo    VARCHAR2 (4);
        v_key_dec    VARCHAR2 (17);
        v_key_nber   VARCHAR2 (13);
        nro          NUMBER (8) := 0;
        cont         NUMBER (8) := 1;
    BEGIN
        /*SELECT   COUNT (1)
          INTO   cont
          FROM   ops$asy.bo_sad_payment a
         WHERE       a.key_year = prm_rec_gestion
                 AND a.key_cuo = prm_rec_aduana
                 AND a.sad_rcpt_nber = prm_rec_numero
                 AND a.sad_num = 0;*/

        IF cont > 0
        THEN
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

            IF v_key_year IS NOT NULL
            THEN
                SELECT   MAX (a.fis_numver)
                  INTO   nro
                  FROM   cd_fiscalizacion a
                 WHERE       a.fis_key_year = v_key_year
                         AND a.fis_key_cuo = v_key_cuo
                         AND a.fis_key_nber = v_key_nber
                         AND NVL (a.fis_key_dec, '-') = NVL (v_key_dec, '-');

                UPDATE   cd_fiscalizacion a
                   SET   a.fis_numver = nro + 1
                 WHERE       a.fis_key_year = v_key_year
                         AND a.fis_key_cuo = v_key_cuo
                         AND a.fis_key_nber = v_key_nber
                         AND NVL (a.fis_key_dec, '-') = NVL (v_key_dec, '-')
                         AND a.fis_numver = 0;

                INSERT INTO cd_fiscalizacion
                    SELECT   a.fis_gestion,
                             a.fis_gerencia,
                             a.fis_nro_control,
                             a.fis_key_year,
                             a.fis_key_cuo,
                             a.fis_key_nber,
                             a.fis_key_dec,
                             a.sad_reg_year,
                             a.sad_reg_serial,
                             a.sad_reg_nber,
                             a.fis_fec_pase_salida,
                             a.fis_fec_registro,
                             a.fis_usuario_registro,
                             a.fis_fec_asignacion,
                             a.fis_usuario_asignacion,
                             a.fis_fec_notificacion,
                             a.fis_obs_notificacion,
                             a.fis_tipo_notificacion,
                             a.fis_usuario_notificacion,
                             a.fis_fec_liquidacion,
                             a.fis_tributo_omitido_ga,
                             a.fis_tributo_omitido_iva,
                             a.fis_tributo_omitido_ice,
                             a.fis_tributo_omitido_iehd,
                             a.fis_sancion_omision,
                             a.fis_multa_contrava,
                             a.fis_multa_contrabc,
                             a.fis_multa_contrabd,
                             a.fis_usuario_resultados,
                             TO_DATE (prm_fec_aceptacion, 'DD/MM/YYYY'),
                             a.fis_tipo_doc_con,
                             a.fis_reg_nro_inf,
                             a.fis_reg_fec_inf,
                             a.fis_reg_nro_doc_con,
                             a.fis_reg_fec_doc_con,
                             a.fis_fec_finalizacion,
                             a.fis_reg_fec_not_doc,
                             a.fis_reg_tip_not_doc,
                             a.fis_reg_fec_env_legal,
                             a.fis_reg_nro_env_legal,
                             a.fis_usuario_finalizacion,
                             a.fis_estado,
                             'U',
                             UPPER (prm_usuario),
                             0,
                             SYSDATE,
                             a.fis_fiscalizador,
                             a.fis_ovalor,
                             a.fis_opartida,
                             a.fis_oorigen,
                             a.fis_osinobs,
                             a.fis_comision,
                             a.fis_ccondel,
                             a.fis_cconcon,
                             a.fis_cconadu,
                             a.fis_tributo_omitido_ufv_ga,
                             a.fis_tributo_omitido_ufv_iva,
                             a.fis_tributo_omitido_ufv_ice,
                             a.fis_tributo_omitido_ufv_iehd,
                             a.fis_sancion_omision_ufv,
                             a.fis_multa_contrava_ufv,
                             a.fis_multa_contrabc_ufv,
                             a.fis_multa_contrabd_ufv,
                             a.fis_valor_ufv,
                             UPPER (prm_usuario),
                             a.fis_usuario_not_doc_con,
                             a.fis_usuario_env_legal,
                             a.fis_origen_control,
                             a.fis_fob_inicial,
                             a.fis_fob_final,
                             a.fis_fecha_anul,
                             a.fis_obs_anulacion,
                             a.fis_fecha_cierre,
                             a.fis_obs_cierre,
                             a.fis_justificativo_feccon
                      FROM   cd_fiscalizacion a
                     WHERE       a.fis_key_year = v_key_year
                             AND a.fis_key_cuo = v_key_cuo
                             AND a.fis_key_nber = v_key_nber
                             AND NVL (a.fis_key_dec, '-') =
                                    NVL (v_key_dec, '-')
                             AND a.fis_numver = nro + 1;


                res := 'CORRECTO';
                COMMIT;
            ELSE
                res := 'ERRORNO EXISTE LA DECLARACION';
            END IF;
        ELSE
            res :=
                   'ERRORRECIBO '
                || prm_rec_gestion
                || ' '
                || prm_rec_aduana
                || ' R-'
                || prm_rec_numero
                || ' NO EXISTE';
        END IF;

        RETURN res;
    EXCEPTION
        WHEN OTHERS
        THEN
            ROLLBACK;
            RETURN 'ERROR'
                   || SUBSTR (TO_CHAR (SQLCODE) || ': ' || SQLERRM, 1, 255);
    END;


    FUNCTION elimina_aceptacion (prm_key_year     IN VARCHAR2,
                                 prm_key_cuo      IN VARCHAR2,
                                 prm_reg_serial   IN VARCHAR2,
                                 prm_usuario      IN VARCHAR2)
        RETURN VARCHAR2
    IS
        res          VARCHAR2 (300) := 0;
        v_key_year   VARCHAR2 (4);
        v_key_cuo    VARCHAR2 (4);
        v_key_dec    VARCHAR2 (17);
        v_key_nber   VARCHAR2 (13);
        nro          NUMBER (8) := 0;
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

        IF v_key_year IS NOT NULL
        THEN
            SELECT   MAX (a.fis_numver)
              INTO   nro
              FROM   cd_fiscalizacion a
             WHERE       a.fis_key_year = v_key_year
                     AND a.fis_key_cuo = v_key_cuo
                     AND a.fis_key_nber = v_key_nber
                     AND NVL (a.fis_key_dec, '-') = NVL (v_key_dec, '-');

            UPDATE   cd_fiscalizacion a
               SET   a.fis_numver = nro + 1
             WHERE       a.fis_key_year = v_key_year
                     AND a.fis_key_cuo = v_key_cuo
                     AND a.fis_key_nber = v_key_nber
                     AND NVL (a.fis_key_dec, '-') = NVL (v_key_dec, '-')
                     AND a.fis_numver = 0;

            INSERT INTO cd_fiscalizacion
                SELECT   a.fis_gestion,
                         a.fis_gerencia,
                         a.fis_nro_control,
                         a.fis_key_year,
                         a.fis_key_cuo,
                         a.fis_key_nber,
                         a.fis_key_dec,
                         a.sad_reg_year,
                         a.sad_reg_serial,
                         a.sad_reg_nber,
                         a.fis_fec_pase_salida,
                         a.fis_fec_registro,
                         a.fis_usuario_registro,
                         a.fis_fec_asignacion,
                         a.fis_usuario_asignacion,
                         a.fis_fec_notificacion,
                         a.fis_obs_notificacion,
                         a.fis_tipo_notificacion,
                         a.fis_usuario_notificacion,
                         a.fis_fec_liquidacion,
                         a.fis_tributo_omitido_ga,
                         a.fis_tributo_omitido_iva,
                         a.fis_tributo_omitido_ice,
                         a.fis_tributo_omitido_iehd,
                         a.fis_sancion_omision,
                         a.fis_multa_contrava,
                         a.fis_multa_contrabc,
                         a.fis_multa_contrabd,
                         a.fis_usuario_resultados,
                         NULL,
                         a.fis_tipo_doc_con,
                         a.fis_reg_nro_inf,
                         a.fis_reg_fec_inf,
                         a.fis_reg_nro_doc_con,
                         a.fis_reg_fec_doc_con,
                         a.fis_fec_finalizacion,
                         a.fis_reg_fec_not_doc,
                         a.fis_reg_tip_not_doc,
                         a.fis_reg_fec_env_legal,
                         a.fis_reg_nro_env_legal,
                         a.fis_usuario_finalizacion,
                         a.fis_estado,
                         'U',
                         UPPER (prm_usuario),
                         0,
                         SYSDATE,
                         a.fis_fiscalizador,
                         a.fis_ovalor,
                         a.fis_opartida,
                         a.fis_oorigen,
                         a.fis_osinobs,
                         a.fis_comision,
                         a.fis_ccondel,
                         a.fis_cconcon,
                         a.fis_cconadu,
                         a.fis_tributo_omitido_ufv_ga,
                         a.fis_tributo_omitido_ufv_iva,
                         a.fis_tributo_omitido_ufv_ice,
                         a.fis_tributo_omitido_ufv_iehd,
                         a.fis_sancion_omision_ufv,
                         a.fis_multa_contrava_ufv,
                         a.fis_multa_contrabc_ufv,
                         a.fis_multa_contrabd_ufv,
                         a.fis_valor_ufv,
                         UPPER (prm_usuario),
                         a.fis_usuario_not_doc_con,
                         a.fis_usuario_env_legal,
                         a.fis_origen_control,
                         a.fis_fob_inicial,
                         a.fis_fob_final,
                         a.fis_fecha_anul,
                         a.fis_obs_anulacion,
                         a.fis_fecha_cierre,
                         a.fis_obs_cierre,
                         a.fis_justificativo_feccon
                  FROM   cd_fiscalizacion a
                 WHERE       a.fis_key_year = v_key_year
                         AND a.fis_key_cuo = v_key_cuo
                         AND a.fis_key_nber = v_key_nber
                         AND NVL (a.fis_key_dec, '-') = NVL (v_key_dec, '-')
                         AND a.fis_numver = nro + 1;


            res := 'CORRECTO';
            COMMIT;
        ELSE
            res := 'ERRORNO EXISTE LA DECLARACION';
        END IF;

        RETURN res;
    EXCEPTION
        WHEN OTHERS
        THEN
            ROLLBACK;
            RETURN 'ERROR'
                   || SUBSTR (TO_CHAR (SQLCODE) || ': ' || SQLERRM, 1, 255);
    END;



    FUNCTION registra_not_con (prm_key_year          IN VARCHAR2,
                               prm_key_cuo           IN VARCHAR2,
                               prm_reg_serial        IN VARCHAR2,
                               prm_reg_fec_not_doc   IN VARCHAR2,
                               prm_reg_tip_not_doc   IN VARCHAR2,
                               prm_usuario           IN VARCHAR2)
        RETURN VARCHAR2
    IS
        res          VARCHAR2 (300) := 0;
        v_key_year   VARCHAR2 (4);
        v_key_cuo    VARCHAR2 (4);
        v_key_dec    VARCHAR2 (17);
        v_key_nber   VARCHAR2 (13);
        nro          NUMBER (8) := 0;
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

        IF v_key_year IS NOT NULL
        THEN
            SELECT   MAX (a.fis_numver)
              INTO   nro
              FROM   cd_fiscalizacion a
             WHERE       a.fis_key_year = v_key_year
                     AND a.fis_key_cuo = v_key_cuo
                     AND a.fis_key_nber = v_key_nber
                     AND NVL (a.fis_key_dec, '-') = NVL (v_key_dec, '-');

            UPDATE   cd_fiscalizacion a
               SET   a.fis_numver = nro + 1
             WHERE       a.fis_key_year = v_key_year
                     AND a.fis_key_cuo = v_key_cuo
                     AND a.fis_key_nber = v_key_nber
                     AND NVL (a.fis_key_dec, '-') = NVL (v_key_dec, '-')
                     AND a.fis_numver = 0;

            INSERT INTO cd_fiscalizacion
                SELECT   a.fis_gestion,
                         a.fis_gerencia,
                         a.fis_nro_control,
                         a.fis_key_year,
                         a.fis_key_cuo,
                         a.fis_key_nber,
                         a.fis_key_dec,
                         a.sad_reg_year,
                         a.sad_reg_serial,
                         a.sad_reg_nber,
                         a.fis_fec_pase_salida,
                         a.fis_fec_registro,
                         a.fis_usuario_registro,
                         a.fis_fec_asignacion,
                         a.fis_usuario_asignacion,
                         a.fis_fec_notificacion,
                         a.fis_obs_notificacion,
                         a.fis_tipo_notificacion,
                         a.fis_usuario_notificacion,
                         a.fis_fec_liquidacion,
                         a.fis_tributo_omitido_ga,
                         a.fis_tributo_omitido_iva,
                         a.fis_tributo_omitido_ice,
                         a.fis_tributo_omitido_iehd,
                         a.fis_sancion_omision,
                         a.fis_multa_contrava,
                         a.fis_multa_contrabc,
                         a.fis_multa_contrabd,
                         a.fis_usuario_resultados,
                         fis_fec_aceptacion,
                         a.fis_tipo_doc_con,
                         a.fis_reg_nro_inf,
                         a.fis_reg_fec_inf,
                         a.fis_reg_nro_doc_con,
                         a.fis_reg_fec_doc_con,
                         a.fis_fec_finalizacion,
                         TO_DATE (prm_reg_fec_not_doc, 'DD/MM/YYYY'),
                         UPPER (prm_reg_tip_not_doc),
                         a.fis_reg_fec_env_legal,
                         a.fis_reg_nro_env_legal,
                         a.fis_usuario_finalizacion,
                         'NOTIFICADO CONCLUIDO',
                         'U',
                         UPPER (prm_usuario),
                         0,
                         SYSDATE,
                         a.fis_fiscalizador,
                         a.fis_ovalor,
                         a.fis_opartida,
                         a.fis_oorigen,
                         a.fis_osinobs,
                         a.fis_comision,
                         a.fis_ccondel,
                         a.fis_cconcon,
                         a.fis_cconadu,
                         a.fis_tributo_omitido_ufv_ga,
                         a.fis_tributo_omitido_ufv_iva,
                         a.fis_tributo_omitido_ufv_ice,
                         a.fis_tributo_omitido_ufv_iehd,
                         a.fis_sancion_omision_ufv,
                         a.fis_multa_contrava_ufv,
                         a.fis_multa_contrabc_ufv,
                         a.fis_multa_contrabd_ufv,
                         a.fis_valor_ufv,
                         a.fis_usuario_aceptacion,
                         UPPER (prm_usuario),
                         a.fis_usuario_env_legal,
                         a.fis_origen_control,
                         a.fis_fob_inicial,
                         a.fis_fob_final,
                         a.fis_fecha_anul,
                         a.fis_obs_anulacion,
                         a.fis_fecha_cierre,
                         a.fis_obs_cierre,
                         a.fis_justificativo_feccon
                  FROM   cd_fiscalizacion a
                 WHERE       a.fis_key_year = v_key_year
                         AND a.fis_key_cuo = v_key_cuo
                         AND a.fis_key_nber = v_key_nber
                         AND NVL (a.fis_key_dec, '-') = NVL (v_key_dec, '-')
                         AND a.fis_numver = nro + 1;


            res := 'CORRECTO';
            COMMIT;
        ELSE
            res := 'ERRORNO EXISTE LA DECLARACION';
        END IF;

        RETURN res;
    EXCEPTION
        WHEN OTHERS
        THEN
            ROLLBACK;
            RETURN 'ERROR'
                   || SUBSTR (TO_CHAR (SQLCODE) || ': ' || SQLERRM, 1, 255);
    END;


    FUNCTION registra_not_con_enm (prm_key_year          IN VARCHAR2,
                                   prm_key_cuo           IN VARCHAR2,
                                   prm_reg_serial        IN VARCHAR2,
                                   prm_reg_fec_not_doc   IN VARCHAR2,
                                   prm_reg_tip_not_doc   IN VARCHAR2,
                                   prm_usuario           IN VARCHAR2)
        RETURN VARCHAR2
    IS
        res          VARCHAR2 (300) := 0;
        v_key_year   VARCHAR2 (4);
        v_key_cuo    VARCHAR2 (4);
        v_key_dec    VARCHAR2 (17);
        v_key_nber   VARCHAR2 (13);
        nro          NUMBER (8) := 0;
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

        IF v_key_year IS NOT NULL
        THEN
            SELECT   MAX (a.fis_numver)
              INTO   nro
              FROM   cd_fiscalizacion a
             WHERE       a.fis_key_year = v_key_year
                     AND a.fis_key_cuo = v_key_cuo
                     AND a.fis_key_nber = v_key_nber
                     AND NVL (a.fis_key_dec, '-') = NVL (v_key_dec, '-');

            UPDATE   cd_fiscalizacion a
               SET   a.fis_numver = nro + 1
             WHERE       a.fis_key_year = v_key_year
                     AND a.fis_key_cuo = v_key_cuo
                     AND a.fis_key_nber = v_key_nber
                     AND NVL (a.fis_key_dec, '-') = NVL (v_key_dec, '-')
                     AND a.fis_numver = 0;

            INSERT INTO cd_fiscalizacion
                SELECT   a.fis_gestion,
                         a.fis_gerencia,
                         a.fis_nro_control,
                         a.fis_key_year,
                         a.fis_key_cuo,
                         a.fis_key_nber,
                         a.fis_key_dec,
                         a.sad_reg_year,
                         a.sad_reg_serial,
                         a.sad_reg_nber,
                         a.fis_fec_pase_salida,
                         a.fis_fec_registro,
                         a.fis_usuario_registro,
                         a.fis_fec_asignacion,
                         a.fis_usuario_asignacion,
                         a.fis_fec_notificacion,
                         a.fis_obs_notificacion,
                         a.fis_tipo_notificacion,
                         a.fis_usuario_notificacion,
                         a.fis_fec_liquidacion,
                         a.fis_tributo_omitido_ga,
                         a.fis_tributo_omitido_iva,
                         a.fis_tributo_omitido_ice,
                         a.fis_tributo_omitido_iehd,
                         a.fis_sancion_omision,
                         a.fis_multa_contrava,
                         a.fis_multa_contrabc,
                         a.fis_multa_contrabd,
                         a.fis_usuario_resultados,
                         fis_fec_aceptacion,
                         a.fis_tipo_doc_con,
                         a.fis_reg_nro_inf,
                         a.fis_reg_fec_inf,
                         a.fis_reg_nro_doc_con,
                         a.fis_reg_fec_doc_con,
                         a.fis_fec_finalizacion,
                         TO_DATE (prm_reg_fec_not_doc, 'DD/MM/YYYY'),
                         UPPER (prm_reg_tip_not_doc),
                         a.fis_reg_fec_env_legal,
                         a.fis_reg_nro_env_legal,
                         a.fis_usuario_finalizacion,
                         a.fis_estado,
                         'U',
                         UPPER (prm_usuario),
                         0,
                         SYSDATE,
                         a.fis_fiscalizador,
                         a.fis_ovalor,
                         a.fis_opartida,
                         a.fis_oorigen,
                         a.fis_osinobs,
                         a.fis_comision,
                         a.fis_ccondel,
                         a.fis_cconcon,
                         a.fis_cconadu,
                         a.fis_tributo_omitido_ufv_ga,
                         a.fis_tributo_omitido_ufv_iva,
                         a.fis_tributo_omitido_ufv_ice,
                         a.fis_tributo_omitido_ufv_iehd,
                         a.fis_sancion_omision_ufv,
                         a.fis_multa_contrava_ufv,
                         a.fis_multa_contrabc_ufv,
                         a.fis_multa_contrabd_ufv,
                         a.fis_valor_ufv,
                         a.fis_usuario_aceptacion,
                         UPPER (prm_usuario),
                         a.fis_usuario_env_legal,
                         a.fis_origen_control,
                         a.fis_fob_inicial,
                         a.fis_fob_final,
                         a.fis_fecha_anul,
                         a.fis_obs_anulacion,
                         a.fis_fecha_cierre,
                         a.fis_obs_cierre,
                         a.fis_justificativo_feccon
                  FROM   cd_fiscalizacion a
                 WHERE       a.fis_key_year = v_key_year
                         AND a.fis_key_cuo = v_key_cuo
                         AND a.fis_key_nber = v_key_nber
                         AND NVL (a.fis_key_dec, '-') = NVL (v_key_dec, '-')
                         AND a.fis_numver = nro + 1;


            res := 'CORRECTO';
            COMMIT;
        ELSE
            res := 'ERRORNO EXISTE LA DECLARACION';
        END IF;

        RETURN res;
    EXCEPTION
        WHEN OTHERS
        THEN
            ROLLBACK;
            RETURN 'ERROR'
                   || SUBSTR (TO_CHAR (SQLCODE) || ': ' || SQLERRM, 1, 255);
    END;



    FUNCTION registra_envio_legal (prm_key_year            IN VARCHAR2,
                                   prm_key_cuo             IN VARCHAR2,
                                   prm_reg_serial          IN VARCHAR2,
                                   prm_reg_fec_env_legal   IN VARCHAR2,
                                   prm_reg_nro_env_legal   IN VARCHAR2,
                                   prm_usuario             IN VARCHAR2)
        RETURN VARCHAR2
    IS
        res          VARCHAR2 (300) := 0;
        v_key_year   VARCHAR2 (4);
        v_key_cuo    VARCHAR2 (4);
        v_key_dec    VARCHAR2 (17);
        v_key_nber   VARCHAR2 (13);
        nro          NUMBER (8) := 0;
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

        IF v_key_year IS NOT NULL
        THEN
            SELECT   MAX (a.fis_numver)
              INTO   nro
              FROM   cd_fiscalizacion a
             WHERE       a.fis_key_year = v_key_year
                     AND a.fis_key_cuo = v_key_cuo
                     AND a.fis_key_nber = v_key_nber
                     AND NVL (a.fis_key_dec, '-') = NVL (v_key_dec, '-');

            UPDATE   cd_fiscalizacion a
               SET   a.fis_numver = nro + 1
             WHERE       a.fis_key_year = v_key_year
                     AND a.fis_key_cuo = v_key_cuo
                     AND a.fis_key_nber = v_key_nber
                     AND NVL (a.fis_key_dec, '-') = NVL (v_key_dec, '-')
                     AND a.fis_numver = 0;

            INSERT INTO cd_fiscalizacion
                SELECT   a.fis_gestion,
                         a.fis_gerencia,
                         a.fis_nro_control,
                         a.fis_key_year,
                         a.fis_key_cuo,
                         a.fis_key_nber,
                         a.fis_key_dec,
                         a.sad_reg_year,
                         a.sad_reg_serial,
                         a.sad_reg_nber,
                         a.fis_fec_pase_salida,
                         a.fis_fec_registro,
                         a.fis_usuario_registro,
                         a.fis_fec_asignacion,
                         a.fis_usuario_asignacion,
                         a.fis_fec_notificacion,
                         a.fis_obs_notificacion,
                         a.fis_tipo_notificacion,
                         a.fis_usuario_notificacion,
                         a.fis_fec_liquidacion,
                         a.fis_tributo_omitido_ga,
                         a.fis_tributo_omitido_iva,
                         a.fis_tributo_omitido_ice,
                         a.fis_tributo_omitido_iehd,
                         a.fis_sancion_omision,
                         a.fis_multa_contrava,
                         a.fis_multa_contrabc,
                         a.fis_multa_contrabd,
                         a.fis_usuario_resultados,
                         fis_fec_aceptacion,
                         a.fis_tipo_doc_con,
                         a.fis_reg_nro_inf,
                         a.fis_reg_fec_inf,
                         a.fis_reg_nro_doc_con,
                         a.fis_reg_fec_doc_con,
                         a.fis_fec_finalizacion,
                         a.fis_reg_fec_not_doc,
                         a.fis_reg_tip_not_doc,
                         TO_DATE (prm_reg_fec_env_legal, 'DD/MM/YYYY'),
                         UPPER (prm_reg_nro_env_legal),
                         a.fis_usuario_finalizacion,
                         'ENVIO LEGAL',
                         'U',
                         UPPER (prm_usuario),
                         0,
                         SYSDATE,
                         a.fis_fiscalizador,
                         a.fis_ovalor,
                         a.fis_opartida,
                         a.fis_oorigen,
                         a.fis_osinobs,
                         a.fis_comision,
                         a.fis_ccondel,
                         a.fis_cconcon,
                         a.fis_cconadu,
                         a.fis_tributo_omitido_ufv_ga,
                         a.fis_tributo_omitido_ufv_iva,
                         a.fis_tributo_omitido_ufv_ice,
                         a.fis_tributo_omitido_ufv_iehd,
                         a.fis_sancion_omision_ufv,
                         a.fis_multa_contrava_ufv,
                         a.fis_multa_contrabc_ufv,
                         a.fis_multa_contrabd_ufv,
                         a.fis_valor_ufv,
                         a.fis_usuario_aceptacion,
                         a.fis_usuario_not_doc_con,
                         UPPER (prm_usuario),
                         a.fis_origen_control,
                         a.fis_fob_inicial,
                         a.fis_fob_final,
                         a.fis_fecha_anul,
                         a.fis_obs_anulacion,
                         a.fis_fecha_cierre,
                         a.fis_obs_cierre,
                         a.fis_justificativo_feccon
                  FROM   cd_fiscalizacion a
                 WHERE       a.fis_key_year = v_key_year
                         AND a.fis_key_cuo = v_key_cuo
                         AND a.fis_key_nber = v_key_nber
                         AND NVL (a.fis_key_dec, '-') = NVL (v_key_dec, '-')
                         AND a.fis_numver = nro + 1;


            res := 'CORRECTO';
            COMMIT;
        ELSE
            res := 'ERRORNO EXISTE LA DECLARACION';
        END IF;

        RETURN res;
    EXCEPTION
        WHEN OTHERS
        THEN
            ROLLBACK;
            RETURN 'ERROR'
                   || SUBSTR (TO_CHAR (SQLCODE) || ': ' || SQLERRM, 1, 255);
    END;



    FUNCTION registra_envio_legal_enm (prm_key_year            IN VARCHAR2,
                                       prm_key_cuo             IN VARCHAR2,
                                       prm_reg_serial          IN VARCHAR2,
                                       prm_reg_fec_env_legal   IN VARCHAR2,
                                       prm_reg_nro_env_legal   IN VARCHAR2,
                                       prm_usuario             IN VARCHAR2)
        RETURN VARCHAR2
    IS
        res          VARCHAR2 (300) := 0;
        v_key_year   VARCHAR2 (4);
        v_key_cuo    VARCHAR2 (4);
        v_key_dec    VARCHAR2 (17);
        v_key_nber   VARCHAR2 (13);
        nro          NUMBER (8) := 0;
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

        IF v_key_year IS NOT NULL
        THEN
            SELECT   MAX (a.fis_numver)
              INTO   nro
              FROM   cd_fiscalizacion a
             WHERE       a.fis_key_year = v_key_year
                     AND a.fis_key_cuo = v_key_cuo
                     AND a.fis_key_nber = v_key_nber
                     AND NVL (a.fis_key_dec, '-') = NVL (v_key_dec, '-');

            UPDATE   cd_fiscalizacion a
               SET   a.fis_numver = nro + 1
             WHERE       a.fis_key_year = v_key_year
                     AND a.fis_key_cuo = v_key_cuo
                     AND a.fis_key_nber = v_key_nber
                     AND NVL (a.fis_key_dec, '-') = NVL (v_key_dec, '-')
                     AND a.fis_numver = 0;

            INSERT INTO cd_fiscalizacion
                SELECT   a.fis_gestion,
                         a.fis_gerencia,
                         a.fis_nro_control,
                         a.fis_key_year,
                         a.fis_key_cuo,
                         a.fis_key_nber,
                         a.fis_key_dec,
                         a.sad_reg_year,
                         a.sad_reg_serial,
                         a.sad_reg_nber,
                         a.fis_fec_pase_salida,
                         a.fis_fec_registro,
                         a.fis_usuario_registro,
                         a.fis_fec_asignacion,
                         a.fis_usuario_asignacion,
                         a.fis_fec_notificacion,
                         a.fis_obs_notificacion,
                         a.fis_tipo_notificacion,
                         a.fis_usuario_notificacion,
                         a.fis_fec_liquidacion,
                         a.fis_tributo_omitido_ga,
                         a.fis_tributo_omitido_iva,
                         a.fis_tributo_omitido_ice,
                         a.fis_tributo_omitido_iehd,
                         a.fis_sancion_omision,
                         a.fis_multa_contrava,
                         a.fis_multa_contrabc,
                         a.fis_multa_contrabd,
                         a.fis_usuario_resultados,
                         fis_fec_aceptacion,
                         a.fis_tipo_doc_con,
                         a.fis_reg_nro_inf,
                         a.fis_reg_fec_inf,
                         a.fis_reg_nro_doc_con,
                         a.fis_reg_fec_doc_con,
                         a.fis_fec_finalizacion,
                         a.fis_reg_fec_not_doc,
                         a.fis_reg_tip_not_doc,
                         TO_DATE (prm_reg_fec_env_legal, 'DD/MM/YYYY'),
                         UPPER (prm_reg_nro_env_legal),
                         a.fis_usuario_finalizacion,
                         a.fis_estado,
                         'U',
                         UPPER (prm_usuario),
                         0,
                         SYSDATE,
                         a.fis_fiscalizador,
                         a.fis_ovalor,
                         a.fis_opartida,
                         a.fis_oorigen,
                         a.fis_osinobs,
                         a.fis_comision,
                         a.fis_ccondel,
                         a.fis_cconcon,
                         a.fis_cconadu,
                         a.fis_tributo_omitido_ufv_ga,
                         a.fis_tributo_omitido_ufv_iva,
                         a.fis_tributo_omitido_ufv_ice,
                         a.fis_tributo_omitido_ufv_iehd,
                         a.fis_sancion_omision_ufv,
                         a.fis_multa_contrava_ufv,
                         a.fis_multa_contrabc_ufv,
                         a.fis_multa_contrabd_ufv,
                         a.fis_valor_ufv,
                         a.fis_usuario_aceptacion,
                         a.fis_usuario_not_doc_con,
                         UPPER (prm_usuario),
                         a.fis_origen_control,
                         a.fis_fob_inicial,
                         a.fis_fob_final,
                         a.fis_fecha_anul,
                         a.fis_obs_anulacion,
                         a.fis_fecha_cierre,
                         a.fis_obs_cierre,
                         a.fis_justificativo_feccon
                  FROM   cd_fiscalizacion a
                 WHERE       a.fis_key_year = v_key_year
                         AND a.fis_key_cuo = v_key_cuo
                         AND a.fis_key_nber = v_key_nber
                         AND NVL (a.fis_key_dec, '-') = NVL (v_key_dec, '-')
                         AND a.fis_numver = nro + 1;


            res := 'CORRECTO';
            COMMIT;
        ELSE
            res := 'ERRORNO EXISTE LA DECLARACION';
        END IF;

        RETURN res;
    EXCEPTION
        WHEN OTHERS
        THEN
            ROLLBACK;
            RETURN 'ERROR'
                   || SUBSTR (TO_CHAR (SQLCODE) || ': ' || SQLERRM, 1, 255);
    END;


    FUNCTION rechaza_control (prm_key_year     IN VARCHAR2,
                              prm_key_cuo      IN VARCHAR2,
                              prm_reg_serial   IN VARCHAR2,
                              prm_usuario      IN VARCHAR2)
        RETURN VARCHAR2
    IS
        res          VARCHAR2 (300) := 0;
        v_key_year   VARCHAR2 (4);
        v_key_cuo    VARCHAR2 (4);
        v_key_dec    VARCHAR2 (17);
        v_key_nber   VARCHAR2 (13);
        nro          NUMBER (8) := 0;
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

        IF v_key_year IS NOT NULL
        THEN
            SELECT   MAX (a.fis_numver)
              INTO   nro
              FROM   cd_fiscalizacion a
             WHERE       a.fis_key_year = v_key_year
                     AND a.fis_key_cuo = v_key_cuo
                     AND a.fis_key_nber = v_key_nber
                     AND NVL (a.fis_key_dec, '-') = NVL (v_key_dec, '-');

            UPDATE   cd_fiscalizacion a
               SET   a.fis_numver = nro + 1
             WHERE       a.fis_key_year = v_key_year
                     AND a.fis_key_cuo = v_key_cuo
                     AND a.fis_key_nber = v_key_nber
                     AND NVL (a.fis_key_dec, '-') = NVL (v_key_dec, '-')
                     AND a.fis_numver = 0;

            INSERT INTO cd_fiscalizacion
                SELECT   a.fis_gestion,
                         a.fis_gerencia,
                         a.fis_nro_control,
                         a.fis_key_year,
                         a.fis_key_cuo,
                         a.fis_key_nber,
                         a.fis_key_dec,
                         a.sad_reg_year,
                         a.sad_reg_serial,
                         a.sad_reg_nber,
                         a.fis_fec_pase_salida,
                         a.fis_fec_registro,
                         a.fis_usuario_registro,
                         a.fis_fec_asignacion,
                         a.fis_usuario_asignacion,
                         a.fis_fec_notificacion,
                         a.fis_obs_notificacion,
                         a.fis_tipo_notificacion,
                         a.fis_usuario_notificacion,
                         a.fis_fec_liquidacion,
                         a.fis_tributo_omitido_ga,
                         a.fis_tributo_omitido_iva,
                         a.fis_tributo_omitido_ice,
                         a.fis_tributo_omitido_iehd,
                         a.fis_sancion_omision,
                         a.fis_multa_contrava,
                         a.fis_multa_contrabc,
                         a.fis_multa_contrabd,
                         a.fis_usuario_resultados,
                         a.fis_fec_aceptacion,
                         a.fis_tipo_doc_con,
                         a.fis_reg_nro_inf,
                         a.fis_reg_fec_inf,
                         a.fis_reg_nro_doc_con,
                         a.fis_reg_fec_doc_con,
                         a.fis_fec_finalizacion,
                         a.fis_reg_fec_not_doc,
                         a.fis_reg_tip_not_doc,
                         a.fis_reg_fec_env_legal,
                         a.fis_reg_nro_env_legal,
                         a.fis_usuario_finalizacion,
                         'RECHAZADO',
                         'U',
                         UPPER (prm_usuario),
                         0,
                         SYSDATE,
                         a.fis_fiscalizador,
                         a.fis_ovalor,
                         a.fis_opartida,
                         a.fis_oorigen,
                         a.fis_osinobs,
                         a.fis_comision,
                         a.fis_ccondel,
                         a.fis_cconcon,
                         a.fis_cconadu,
                         a.fis_tributo_omitido_ufv_ga,
                         a.fis_tributo_omitido_ufv_iva,
                         a.fis_tributo_omitido_ufv_ice,
                         a.fis_tributo_omitido_ufv_iehd,
                         a.fis_sancion_omision_ufv,
                         a.fis_multa_contrava_ufv,
                         a.fis_multa_contrabc_ufv,
                         a.fis_multa_contrabd_ufv,
                         a.fis_valor_ufv,
                         a.fis_usuario_aceptacion,
                         a.fis_usuario_not_doc_con,
                         a.fis_usuario_env_legal,
                         a.fis_origen_control,
                         a.fis_fob_inicial,
                         a.fis_fob_final,
                         a.fis_fecha_anul,
                         a.fis_obs_anulacion,
                         a.fis_fecha_cierre,
                         a.fis_obs_cierre,
                         a.fis_justificativo_feccon
                  FROM   cd_fiscalizacion a
                 WHERE       a.fis_key_year = v_key_year
                         AND a.fis_key_cuo = v_key_cuo
                         AND a.fis_key_nber = v_key_nber
                         AND NVL (a.fis_key_dec, '-') = NVL (v_key_dec, '-')
                         AND a.fis_numver = nro + 1;


            res := 'CORRECTO';
            COMMIT;
        ELSE
            res := 'ERRORNO EXISTE LA DECLARACION';
        END IF;

        RETURN res;
    EXCEPTION
        WHEN OTHERS
        THEN
            ROLLBACK;
            RETURN 'ERROR'
                   || SUBSTR (TO_CHAR (SQLCODE) || ': ' || SQLERRM, 1, 255);
    END;



    FUNCTION fiscalizador_enm (prm_key_year       IN VARCHAR2,
                               prm_key_cuo        IN VARCHAR2,
                               prm_reg_serial     IN VARCHAR2,
                               prm_fiscalizador   IN VARCHAR2,
                               prm_usuario        IN VARCHAR2)
        RETURN VARCHAR2
    IS
        res          VARCHAR2 (300) := 0;
        v_key_year   VARCHAR2 (4);
        v_key_cuo    VARCHAR2 (4);
        v_key_dec    VARCHAR2 (17);
        v_key_nber   VARCHAR2 (13);
        nro          NUMBER (8) := 0;
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

        IF v_key_year IS NOT NULL
        THEN
            SELECT   MAX (a.fis_numver)
              INTO   nro
              FROM   cd_fiscalizacion a
             WHERE       a.fis_key_year = v_key_year
                     AND a.fis_key_cuo = v_key_cuo
                     AND a.fis_key_nber = v_key_nber
                     AND NVL (a.fis_key_dec, '-') = NVL (v_key_dec, '-');

            UPDATE   cd_fiscalizacion a
               SET   a.fis_numver = nro + 1
             WHERE       a.fis_key_year = v_key_year
                     AND a.fis_key_cuo = v_key_cuo
                     AND a.fis_key_nber = v_key_nber
                     AND NVL (a.fis_key_dec, '-') = NVL (v_key_dec, '-')
                     AND a.fis_numver = 0;

            INSERT INTO cd_fiscalizacion
                SELECT   a.fis_gestion,
                         a.fis_gerencia,
                         a.fis_nro_control,
                         a.fis_key_year,
                         a.fis_key_cuo,
                         a.fis_key_nber,
                         a.fis_key_dec,
                         a.sad_reg_year,
                         a.sad_reg_serial,
                         a.sad_reg_nber,
                         a.fis_fec_pase_salida,
                         a.fis_fec_registro,
                         a.fis_usuario_registro,
                         a.fis_fec_asignacion,
                         a.fis_usuario_asignacion,
                         a.fis_fec_notificacion,
                         a.fis_obs_notificacion,
                         a.fis_tipo_notificacion,
                         a.fis_usuario_notificacion,
                         a.fis_fec_liquidacion,
                         a.fis_tributo_omitido_ga,
                         a.fis_tributo_omitido_iva,
                         a.fis_tributo_omitido_ice,
                         a.fis_tributo_omitido_iehd,
                         a.fis_sancion_omision,
                         a.fis_multa_contrava,
                         a.fis_multa_contrabc,
                         a.fis_multa_contrabd,
                         a.fis_usuario_resultados,
                         a.fis_fec_aceptacion,
                         a.fis_tipo_doc_con,
                         a.fis_reg_nro_inf,
                         a.fis_reg_fec_inf,
                         a.fis_reg_nro_doc_con,
                         a.fis_reg_fec_doc_con,
                         a.fis_fec_finalizacion,
                         a.fis_reg_fec_not_doc,
                         a.fis_reg_tip_not_doc,
                         a.fis_reg_fec_env_legal,
                         a.fis_reg_nro_env_legal,
                         a.fis_usuario_finalizacion,
                         a.fis_estado,
                         'U',
                         UPPER (prm_usuario),
                         0,
                         SYSDATE,
                         prm_fiscalizador,
                         a.fis_ovalor,
                         a.fis_opartida,
                         a.fis_oorigen,
                         a.fis_osinobs,
                         a.fis_comision,
                         a.fis_ccondel,
                         a.fis_cconcon,
                         a.fis_cconadu,
                         a.fis_tributo_omitido_ufv_ga,
                         a.fis_tributo_omitido_ufv_iva,
                         a.fis_tributo_omitido_ufv_ice,
                         a.fis_tributo_omitido_ufv_iehd,
                         a.fis_sancion_omision_ufv,
                         a.fis_multa_contrava_ufv,
                         a.fis_multa_contrabc_ufv,
                         a.fis_multa_contrabd_ufv,
                         a.fis_valor_ufv,
                         a.fis_usuario_aceptacion,
                         a.fis_usuario_not_doc_con,
                         a.fis_usuario_env_legal,
                         a.fis_origen_control,
                         a.fis_fob_inicial,
                         a.fis_fob_final,
                         a.fis_fecha_anul,
                         a.fis_obs_anulacion,
                         a.fis_fecha_cierre,
                         a.fis_obs_cierre,
                         a.fis_justificativo_feccon
                  FROM   cd_fiscalizacion a
                 WHERE       a.fis_key_year = v_key_year
                         AND a.fis_key_cuo = v_key_cuo
                         AND a.fis_key_nber = v_key_nber
                         AND NVL (a.fis_key_dec, '-') = NVL (v_key_dec, '-')
                         AND a.fis_numver = nro + 1;


            res := 'CORRECTO';
            COMMIT;
        ELSE
            res := 'ERRORNO EXISTE LA DECLARACION';
        END IF;

        RETURN res;
    EXCEPTION
        WHEN OTHERS
        THEN
            ROLLBACK;
            RETURN 'ERROR'
                   || SUBSTR (TO_CHAR (SQLCODE) || ': ' || SQLERRM, 1, 255);
    END;

    ----------------------------------
    --Devuelve actividad consignatario
    ----------------------------------
    FUNCTION fn_devuelve_actividad (p_nit IN VARCHAR2)
        RETURN VARCHAR2
    IS
        CURSOR c_tipo_ope
        IS
            SELECT   a.ope_numerodoc,
                     DECODE (
                         a.tip_tipooperador,
                         'TRN',
                         'Transp. Internacional Terrestre Carretero Nacional',
                         'AER',
                         'Transp. Internacional Aereo',
                         'FLU',
                         'Transp. Internacional Fluvial',
                         'FER',
                         'Transportador Internacional Terrestre Ferreo',
                         'OTM',
                         'Operador Transporte Multimodal',
                         'DUC',
                         'Transportador Internacional  Ductos/Tuberias/Cables',
                         'DES',
                         'Agencia Despachante de Aduana',
                         'CON',
                         'Consolidador/Desconsolidador Carga Internacional',
                         'COU',
                         'Empresa Servicio Expreso (Courier)',
                         'DFR',
                         'Tienda Libre de Tributos (Duty Free Shops)',
                         'EXP',
                         'Exportador',
                         'IMP',
                         'Importador',
                         'DEP',
                         'Depositos Aduaneros',
                         'ZFR',
                         'Zona Franca (Concesionarios)',
                         'UZF',
                         'Usuario  Zona Franca',
                         'TRE',
                         'Transp. Internacional Terrestre Carretero Extranjero',
                         'NAL',
                         'Transp. Nacional Terrestre Carretero',
                         'UDA',
                         'Usuarios de Depositos Aeroportuarios')
                         actividad
              FROM   ops$asy.bo_oce_opetipo a
             WHERE       a.ope_numerodoc = p_nit
                     AND a.tip_num = 0
                     AND a.tip_lst_ope = 'U';

        CURSOR c_tipo_ope2
        IS
            SELECT   UNIQUE
                     DECODE (
                         t.ope_tip,
                         'TRN',
                         'Transp. Internacional Terrestre Carretero Nacional',
                         'AER',
                         'Transp. Internacional Aereo',
                         'FLU',
                         'Transp. Internacional Fluvial',
                         'FER',
                         'Transportador Internacional Terrestre Ferreo',
                         'OTM',
                         'Operador Transporte Multimodal',
                         'DUC',
                         'Transportador Internacional  Ductos/Tuberias/Cables',
                         'DES',
                         'Agencia Despachante de Aduana',
                         'CON',
                         'Consolidador/Desconsolidador Carga Internacional',
                         'COU',
                         'Empresa Servicio Expreso (Courier)',
                         'DFR',
                         'Tienda Libre de Tributos (Duty Free Shops)',
                         'EXP',
                         'Exportador',
                         'IMP',
                         'Importador',
                         'DEP',
                         'Depositos Aduaneros',
                         'ZFR',
                         'Zona Franca (Concesionarios)',
                         'UZF',
                         'Usuario  Zona Franca',
                         'TRE',
                         'Transp. Internacional Terrestre Carretero Extranjero',
                         'NAL',
                         'Transp. Nacional Terrestre Carretero',
                         'UDA',
                         'Usuarios de Depositos Aeroportuarios')
                         actividad
              FROM   operador.olopetab o, operador.olopetip t
             WHERE       o.ope_nit = p_nit
                     AND o.ult_ver = 0
                     AND o.emp_cod = t.emp_cod
                     AND t.tbl_sta = 'H';

        v_actividad   VARCHAR2 (1000);
        num           NUMBER;
    BEGIN
        IF (p_nit IS NOT NULL)
        THEN
            SELECT   COUNT (1)
              INTO   num
              FROM   ops$asy.bo_oce_opetipo a
             WHERE       a.ope_numerodoc = p_nit
                     AND a.tip_num = 0
                     AND a.tip_lst_ope = 'U';

            IF num > 0
            THEN
                FOR x IN c_tipo_ope
                LOOP
                    v_actividad :=
                        TO_CHAR (x.actividad) || ', ' || v_actividad;
                END LOOP;
            ELSE
                FOR y IN c_tipo_ope2
                LOOP
                    v_actividad :=
                        TO_CHAR (y.actividad) || ', ' || v_actividad;
                END LOOP;
            END IF;

            RETURN v_actividad;
        ELSE
            v_actividad := '-';
            RETURN v_actividad;
        END IF;
    EXCEPTION
        WHEN NO_DATA_FOUND
        THEN
            RETURN '-';
    END;

    ----------------------------------
    --Registra anulacion de control diferido
    ----------------------------------
    FUNCTION f_reg_anul_control_dif (prm_key_year      IN VARCHAR2,
                                     prm_key_cuo       IN VARCHAR2,
                                     prm_reg_serial    IN VARCHAR2,
                                     prm_observacion   IN VARCHAR2,
                                     prm_usuario       IN VARCHAR2)
        RETURN VARCHAR2
    IS
        res               VARCHAR2 (300) := 0;
        v_key_year        VARCHAR2 (4);
        v_key_cuo         VARCHAR2 (4);
        v_key_dec         VARCHAR2 (17);
        v_key_nber        VARCHAR2 (13);
        nro               NUMBER (8) := 0;
        v_cant_siestado   NUMBER (8) := 0;
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

        IF v_key_year IS NOT NULL
        THEN
            SELECT   COUNT (1)
              INTO   v_cant_siestado
              FROM   cd_fiscalizacion a
             WHERE       a.fis_key_year = v_key_year
                     AND a.fis_key_cuo = v_key_cuo
                     AND a.fis_key_dec = v_key_dec
                     AND a.fis_key_nber = v_key_nber
                     AND a.fis_estado IN
                                ('RESULTADOS',
                                 'REGISTRADO',
                                 'ASIGNADO',
                                 'NOTIFICADO',
                                 'REGISTRADO-MIRA')
                     AND a.fis_numver = 0
                     AND a.fis_lst_ope = 'U';

            SELECT   NVL (MAX (a.fis_numver), 0) + 1     -- MAX (a.fis_numver)
              INTO   nro
              FROM   cd_fiscalizacion a
             WHERE       a.fis_key_year = v_key_year
                     AND a.fis_key_cuo = v_key_cuo
                     AND a.fis_key_nber = v_key_nber
                     AND NVL (a.fis_key_dec, '-') = NVL (v_key_dec, '-');

            UPDATE   cd_fiscalizacion a
               SET   a.fis_numver = nro                                  --+ 1
             WHERE       a.fis_key_year = v_key_year
                     AND a.fis_key_cuo = v_key_cuo
                     AND a.fis_key_nber = v_key_nber
                     AND NVL (a.fis_key_dec, '-') = NVL (v_key_dec, '-')
                     AND a.fis_numver = 0;

            INSERT INTO cd_fiscalizacion
                SELECT   a.fis_gestion,
                         a.fis_gerencia,
                         a.fis_nro_control,
                         a.fis_key_year,
                         a.fis_key_cuo,
                         a.fis_key_nber,
                         a.fis_key_dec,
                         a.sad_reg_year,
                         a.sad_reg_serial,
                         a.sad_reg_nber,
                         a.fis_fec_pase_salida,
                         a.fis_fec_registro,
                         a.fis_usuario_registro,
                         a.fis_fec_asignacion,
                         a.fis_usuario_asignacion,
                         a.fis_fec_notificacion,
                         a.fis_obs_notificacion,
                         a.fis_tipo_notificacion,
                         a.fis_usuario_notificacion,
                         a.fis_fec_liquidacion,
                         a.fis_tributo_omitido_ga,
                         a.fis_tributo_omitido_iva,
                         a.fis_tributo_omitido_ice,
                         a.fis_tributo_omitido_iehd,
                         a.fis_sancion_omision,
                         a.fis_multa_contrava,
                         a.fis_multa_contrabc,
                         a.fis_multa_contrabd,
                         a.fis_usuario_resultados,
                         a.fis_fec_aceptacion,
                         a.fis_tipo_doc_con,
                         a.fis_reg_nro_inf,
                         a.fis_reg_fec_inf,
                         a.fis_reg_nro_doc_con,
                         a.fis_reg_fec_doc_con,
                         a.fis_fec_finalizacion,
                         a.fis_reg_fec_not_doc,
                         a.fis_reg_tip_not_doc,
                         a.fis_reg_fec_env_legal,
                         a.fis_reg_nro_env_legal,
                         a.fis_usuario_finalizacion,
                         'ANULADO',
                         'D',
                         UPPER (prm_usuario),
                         0,
                         SYSDATE,
                         a.fis_fiscalizador,
                         a.fis_ovalor,
                         a.fis_opartida,
                         a.fis_oorigen,
                         a.fis_osinobs,
                         a.fis_comision,
                         a.fis_ccondel,
                         a.fis_cconcon,
                         a.fis_cconadu,
                         a.fis_tributo_omitido_ufv_ga,
                         a.fis_tributo_omitido_ufv_iva,
                         a.fis_tributo_omitido_ufv_ice,
                         a.fis_tributo_omitido_ufv_iehd,
                         a.fis_sancion_omision_ufv,
                         a.fis_multa_contrava_ufv,
                         a.fis_multa_contrabc_ufv,
                         a.fis_multa_contrabd_ufv,
                         a.fis_valor_ufv,
                         a.fis_usuario_aceptacion,
                         a.fis_usuario_not_doc_con,
                         a.fis_usuario_env_legal,
                         a.fis_origen_control,
                         a.fis_fob_inicial,
                         a.fis_fob_final,
                         SYSDATE,
                         UPPER (prm_observacion),
                         a.fis_fecha_cierre,
                         a.fis_obs_cierre,
                         a.fis_justificativo_feccon
                  FROM   cd_fiscalizacion a
                 WHERE       a.fis_key_year = v_key_year
                         AND a.fis_key_cuo = v_key_cuo
                         AND a.fis_key_nber = v_key_nber
                         AND NVL (a.fis_key_dec, '-') = NVL (v_key_dec, '-')
                         AND a.fis_numver = nro;


            res := 'CORRECTO';
            COMMIT;
        ELSE
            res := 'ERROR NO EXISTE LA DECLARACION';
        END IF;

        RETURN res;
    EXCEPTION
        WHEN OTHERS
        THEN
            ROLLBACK;
            RETURN 'ERROR'
                   || SUBSTR (TO_CHAR (SQLCODE) || ': ' || SQLERRM, 1, 255);
    END f_reg_anul_control_dif;


    ----------------------------------
    --Registra anulacion de control diferido
    ----------------------------------
    FUNCTION f_reg_cierre_control_dif (prm_key_year      IN VARCHAR2,
                                       prm_key_cuo       IN VARCHAR2,
                                       prm_reg_serial    IN VARCHAR2,
                                       prm_observacion   IN VARCHAR2,
                                       prm_usuario       IN VARCHAR2)
        RETURN VARCHAR2
    IS
        res               VARCHAR2 (300) := 0;
        v_key_year        VARCHAR2 (4);
        v_key_cuo         VARCHAR2 (4);
        v_key_dec         VARCHAR2 (17);
        v_key_nber        VARCHAR2 (13);
        nro               NUMBER (8) := 0;
        v_cant_siestado   NUMBER (8) := 0;
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

        IF v_key_year IS NOT NULL
        THEN
            SELECT   COUNT (1)
              INTO   v_cant_siestado
              FROM   cd_fiscalizacion a
             WHERE       a.fis_key_year = v_key_year
                     AND a.fis_key_cuo = v_key_cuo
                     AND a.fis_key_dec = v_key_dec
                     AND a.fis_key_nber = v_key_nber
                     AND a.fis_estado IN ('FINALIZADO')
                     AND a.fis_numver = 0
                     AND a.fis_lst_ope = 'U';

            SELECT   MAX (a.fis_numver)
              INTO   nro
              FROM   cd_fiscalizacion a
             WHERE       a.fis_key_year = v_key_year
                     AND a.fis_key_cuo = v_key_cuo
                     AND a.fis_key_nber = v_key_nber
                     AND NVL (a.fis_key_dec, '-') = NVL (v_key_dec, '-');

            UPDATE   cd_fiscalizacion a
               SET   a.fis_numver = nro + 1
             WHERE       a.fis_key_year = v_key_year
                     AND a.fis_key_cuo = v_key_cuo
                     AND a.fis_key_nber = v_key_nber
                     AND NVL (a.fis_key_dec, '-') = NVL (v_key_dec, '-')
                     AND a.fis_numver = 0;

            INSERT INTO cd_fiscalizacion
                SELECT   a.fis_gestion,
                         a.fis_gerencia,
                         a.fis_nro_control,
                         a.fis_key_year,
                         a.fis_key_cuo,
                         a.fis_key_nber,
                         a.fis_key_dec,
                         a.sad_reg_year,
                         a.sad_reg_serial,
                         a.sad_reg_nber,
                         a.fis_fec_pase_salida,
                         a.fis_fec_registro,
                         a.fis_usuario_registro,
                         a.fis_fec_asignacion,
                         a.fis_usuario_asignacion,
                         a.fis_fec_notificacion,
                         a.fis_obs_notificacion,
                         a.fis_tipo_notificacion,
                         a.fis_usuario_notificacion,
                         a.fis_fec_liquidacion,
                         a.fis_tributo_omitido_ga,
                         a.fis_tributo_omitido_iva,
                         a.fis_tributo_omitido_ice,
                         a.fis_tributo_omitido_iehd,
                         a.fis_sancion_omision,
                         a.fis_multa_contrava,
                         a.fis_multa_contrabc,
                         a.fis_multa_contrabd,
                         a.fis_usuario_resultados,
                         a.fis_fec_aceptacion,
                         a.fis_tipo_doc_con,
                         a.fis_reg_nro_inf,
                         a.fis_reg_fec_inf,
                         a.fis_reg_nro_doc_con,
                         a.fis_reg_fec_doc_con,
                         a.fis_fec_finalizacion,
                         a.fis_reg_fec_not_doc,
                         a.fis_reg_tip_not_doc,
                         a.fis_reg_fec_env_legal,
                         a.fis_reg_nro_env_legal,
                         a.fis_usuario_finalizacion,
                         'CIERRE',
                         'U',
                         UPPER (prm_usuario),
                         0,
                         SYSDATE,
                         a.fis_fiscalizador,
                         a.fis_ovalor,
                         a.fis_opartida,
                         a.fis_oorigen,
                         a.fis_osinobs,
                         a.fis_comision,
                         a.fis_ccondel,
                         a.fis_cconcon,
                         a.fis_cconadu,
                         a.fis_tributo_omitido_ufv_ga,
                         a.fis_tributo_omitido_ufv_iva,
                         a.fis_tributo_omitido_ufv_ice,
                         a.fis_tributo_omitido_ufv_iehd,
                         a.fis_sancion_omision_ufv,
                         a.fis_multa_contrava_ufv,
                         a.fis_multa_contrabc_ufv,
                         a.fis_multa_contrabd_ufv,
                         a.fis_valor_ufv,
                         a.fis_usuario_aceptacion,
                         a.fis_usuario_not_doc_con,
                         a.fis_usuario_env_legal,
                         a.fis_origen_control,
                         a.fis_fob_inicial,
                         a.fis_fob_final,
                         a.fis_fecha_anul,
                         a.fis_obs_anulacion,
                         SYSDATE,
                         UPPER (prm_observacion),
                         a.fis_justificativo_feccon
                  FROM   cd_fiscalizacion a
                 WHERE       a.fis_key_year = v_key_year
                         AND a.fis_key_cuo = v_key_cuo
                         AND a.fis_key_nber = v_key_nber
                         AND NVL (a.fis_key_dec, '-') = NVL (v_key_dec, '-')
                         AND a.fis_numver = nro + 1;


            res := 'CORRECTO';
            COMMIT;
        ELSE
            res := 'ERROR NO EXISTE LA DECLARACION';
        END IF;

        RETURN res;
    EXCEPTION
        WHEN OTHERS
        THEN
            ROLLBACK;
            RETURN 'ERROR'
                   || SUBSTR (TO_CHAR (SQLCODE) || ': ' || SQLERRM, 1, 255);
    END f_reg_cierre_control_dif;


    ----------------------------------
    --Devuelve direccion consignatario
    ----------------------------------
    FUNCTION fn_devuelve_direccion (
        p_nit        IN VARCHAR2,
        w_key_year   IN ops$asy.sad_gen.key_year%TYPE,
        w_key_cuo    IN ops$asy.sad_gen.key_cuo%TYPE,
        w_key_dec    IN ops$asy.sad_gen.key_dec%TYPE,
        w_key_nber   IN ops$asy.sad_gen.key_nber%TYPE)
        RETURN VARCHAR2
    IS
        v_direccion   VARCHAR2 (1000);
        num           NUMBER;
    BEGIN
        SELECT   COUNT (1)
          INTO   num
          FROM   ops$asy.bo_oce_opetipo a
         WHERE       a.ope_numerodoc = TRIM (p_nit)
                 AND a.tip_num = 0
                 AND a.tip_lst_ope = 'U';

        IF (num > 0)
        THEN
            SELECT      b.ope_direccion
                     || ' '
                     || b.ope_nrodireccion
                     || ', '
                     || b.ope_zona
              INTO   v_direccion
              FROM   ops$asy.bo_oce_opecab b
             WHERE   b.ope_numerodoc = p_nit                 --a.sad_consignee
                                            AND b.ope_num = 0;

            RETURN v_direccion;
        ELSE
            SELECT   a.sad_con_add1
              INTO   v_direccion
              FROM   ops$asy.sad_occ_cns a
             WHERE       a.key_year = w_key_year
                     AND a.key_cuo = w_key_cuo
                     AND NVL (a.key_dec, 0) = NVL (w_key_dec, 0)
                     AND a.key_nber = w_key_nber
                     AND a.sad_num = 0;

            RETURN v_direccion;
        END IF;
    EXCEPTION
        WHEN NO_DATA_FOUND
        THEN
            RETURN '-';
    END;
END;
/

