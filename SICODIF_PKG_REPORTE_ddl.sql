/* Formatted on 14-ago.-2017 17:41:51 (QP5 v5.126) */
CREATE OR REPLACE PACKAGE pkg_reporte
IS
    TYPE cursortype IS REF CURSOR;

    FUNCTION nomadu (prm_key_cuo IN VARCHAR2)
        RETURN VARCHAR2;

    FUNCTION reportebase (prm_gerencia   IN     VARCHAR2,
                          prm_fec_ini    IN     VARCHAR2,
                          prm_fec_fin    IN     VARCHAR2,
                          prm_nit        IN     VARCHAR2,
                          ct                OUT cursortype)
        RETURN VARCHAR2;

    FUNCTION reportebasedui (prm_gestion   IN     VARCHAR2,
                             prm_aduana    IN     VARCHAR2,
                             prm_numero    IN     VARCHAR2,
                             ct               OUT cursortype)
        RETURN VARCHAR2;



    FUNCTION crt_cabecera (w_key_year   IN sad_gen.key_year%TYPE,
                           w_key_cuo    IN sad_gen.key_cuo%TYPE,
                           w_key_dec    IN sad_gen.key_dec%TYPE,
                           w_key_nber   IN sad_gen.key_nber%TYPE)
        RETURN VARCHAR2;

    FUNCTION sicodif_25 (anio        IN sad_spy.key_year%TYPE,
                         cod_adu     IN sad_spy.key_cuo%TYPE,
                         w_key_dec   IN sad_spy.key_dec%TYPE,
                         nuber       IN sad_spy.key_nber%TYPE)
        RETURN VARCHAR2;

    FUNCTION sicodif_contra_adu (gesti         IN VARCHAR2,
                                 gerencia      IN VARCHAR2,
                                 nro_control   IN VARCHAR2)
        RETURN NUMBER;

    FUNCTION sicodif_sancionop (gesti         IN VARCHAR2,
                                gerencia      IN VARCHAR2,
                                nro_control   IN VARCHAR2)
        RETURN NUMBER;


    FUNCTION sicodif_ga (gesti         IN VARCHAR2,
                         gerencia      IN VARCHAR2,
                         nro_control   IN VARCHAR2)
        RETURN NUMBER;

    FUNCTION sicodif_iva (gesti         IN VARCHAR2,
                          gerencia      IN VARCHAR2,
                          nro_control   IN VARCHAR2)
        RETURN NUMBER;

    FUNCTION sicodif_ice (gesti         IN VARCHAR2,
                          gerencia      IN VARCHAR2,
                          nro_control   IN VARCHAR2)
        RETURN NUMBER;

    FUNCTION sicodif_ihd (gesti         IN VARCHAR2,
                          gerencia      IN VARCHAR2,
                          nro_control   IN VARCHAR2)
        RETURN NUMBER;

    FUNCTION fob_cabecera (anio        IN sad_itm_vim.key_year%TYPE,
                           cod_adu     IN sad_itm_vim.key_cuo%TYPE,
                           w_key_dec   IN sad_itm_vim.key_dec%TYPE,
                           key_nuber   IN sad_itm_vim.key_nber%TYPE,
                           sw          IN VARCHAR2)
        RETURN NUMBER;

    FUNCTION mercancia (w_key_year   IN sad_gen.key_year%TYPE,
                        w_key_cuo    IN sad_gen.key_cuo%TYPE,
                        w_key_dec    IN sad_gen.key_dec%TYPE,
                        w_key_nber   IN sad_gen.key_nber%TYPE)
        RETURN VARCHAR2;

    FUNCTION nomprov (w_sad_exporter   IN sad_gen.sad_exporter%TYPE,
                      w_key_year       IN sad_gen.key_year%TYPE,
                      w_key_cuo        IN sad_gen.key_cuo%TYPE,
                      w_key_dec        IN sad_gen.key_dec%TYPE,
                      w_key_nber       IN sad_gen.key_nber%TYPE,
                      w_sad_num        IN sad_gen.sad_num%TYPE)
        RETURN VARCHAR2;

    FUNCTION dirprov (w_sad_exporter   IN sad_gen.sad_exporter%TYPE,
                      w_key_year       IN sad_gen.key_year%TYPE,
                      w_key_cuo        IN sad_gen.key_cuo%TYPE,
                      w_key_dec        IN sad_gen.key_dec%TYPE,
                      w_key_nber       IN sad_gen.key_nber%TYPE,
                      w_sad_num        IN sad_gen.sad_num%TYPE)
        RETURN VARCHAR2;

    FUNCTION nomage (w_dec        IN CHAR,
                     w_key_year   IN sad_gen.key_year%TYPE,
                     w_key_cuo    IN sad_gen.key_cuo%TYPE,
                     w_key_dec    IN sad_gen.key_dec%TYPE,
                     w_key_nber   IN sad_gen.key_nber%TYPE,
                     w_sad_num    IN sad_gen.sad_num%TYPE)
        RETURN VARCHAR2;

    FUNCTION nomimp (w_consignee   IN sad_gen.sad_consignee%TYPE,
                     w_key_year    IN sad_gen.key_year%TYPE,
                     w_key_cuo     IN sad_gen.key_cuo%TYPE,
                     w_key_dec     IN sad_gen.key_dec%TYPE,
                     w_key_nber    IN sad_gen.key_nber%TYPE,
                     w_sad_num     IN sad_gen.sad_num%TYPE)
        RETURN VARCHAR2;

    FUNCTION numid (w_consignee   IN sad_gen.sad_consignee%TYPE,
                    w_key_year    IN sad_gen.key_year%TYPE,
                    w_key_cuo     IN sad_gen.key_cuo%TYPE,
                    w_key_dec     IN sad_gen.key_dec%TYPE,
                    w_key_nber    IN sad_gen.key_nber%TYPE,
                    w_sad_num     IN sad_gen.sad_num%TYPE)
        RETURN VARCHAR2;

    FUNCTION sicodif_contra_contravencional (gesti         IN VARCHAR2,
                                             gerencia      IN VARCHAR2,
                                             nro_control   IN VARCHAR2)
        RETURN NUMBER;

    FUNCTION sicodif_contra_delito (gesti         IN VARCHAR2,
                                    gerencia      IN VARCHAR2,
                                    nro_control   IN VARCHAR2)
        RETURN NUMBER;

    ---REPORTE DE CD SIN CANAL
    FUNCTION reporte_sin_canal (prm_gerencia   IN     VARCHAR2,
                                prm_fec_ini    IN     VARCHAR2,
                                prm_fec_fin    IN     VARCHAR2,
                                ct                OUT cursortype)
        RETURN VARCHAR2;

    FUNCTION reporte_det_recauda (prm_gerencia   IN     VARCHAR2,
                                  prm_fec_ini    IN     VARCHAR2,
                                  prm_fec_fin    IN     VARCHAR2,
                                  ct                OUT cursortype)
        RETURN VARCHAR2;

    FUNCTION roundsidunea (p_numero IN NUMBER, p_preci IN NUMBER)
        RETURN NUMBER;

    FUNCTION tipocambio (fecha IN DATE, tipo IN VARCHAR2)
        RETURN NUMBER;

    FUNCTION reporte_concesionario (prm_nit          IN     VARCHAR2,
                                    prm_fec_ini      IN     VARCHAR2,
                                    prm_fec_fin      IN     VARCHAR2,
                                    prm_key_year     IN     VARCHAR2,
                                    prm_key_cuo      IN     VARCHAR2,
                                    prm_reg_serial   IN     VARCHAR2,
                                    prm_tipo         IN     VARCHAR2,
                                    ct                  OUT cursortype)
        RETURN VARCHAR2;

    FUNCTION sidunea_control (gestion   IN VARCHAR2,
                              aduana    IN VARCHAR2,
                              numero    IN VARCHAR2,
                              usuario   IN VARCHAR2)
        RETURN VARCHAR2;

    FUNCTION reporteblock (prm_aduana    IN     VARCHAR2,
                           prm_fec_ini   IN     VARCHAR2,
                           prm_fec_fin   IN     VARCHAR2,
                           ct               OUT cursortype)
        RETURN VARCHAR2;

    FUNCTION reporteblockdui (prm_gestion   IN     VARCHAR2,
                              prm_aduana    IN     VARCHAR2,
                              prm_numero    IN     VARCHAR2,
                              ct               OUT cursortype)
        RETURN VARCHAR2;

    FUNCTION reporteconcierre (prm_fec_ini   IN     VARCHAR2,
                               prm_fec_fin   IN     VARCHAR2,
                               ct               OUT cursortype)
        RETURN VARCHAR2;

    FUNCTION reportependientes (prm_gerencia   IN     VARCHAR2,
                                prm_fec_ini    IN     VARCHAR2,
                                prm_fec_fin    IN     VARCHAR2,
                                ct                OUT cursortype)
        RETURN VARCHAR2;
END;
/

CREATE OR REPLACE PACKAGE BODY pkg_reporte
IS
    FUNCTION nomadu (prm_key_cuo IN VARCHAR2)
        RETURN VARCHAR2
    IS
        w_nombre   VARCHAR2 (50);
    BEGIN
        SELECT   x.cuo_nam
          INTO   w_nombre
          FROM   uncuotab x
         WHERE   lst_ope = 'U' AND x.cuo_cod = prm_key_cuo;

        RETURN w_nombre;
    END;

    FUNCTION reportebase (prm_gerencia   IN     VARCHAR2,
                          prm_fec_ini    IN     VARCHAR2,
                          prm_fec_fin    IN     VARCHAR2,
                          prm_nit        IN     VARCHAR2,
                          ct                OUT cursortype)
        RETURN VARCHAR2
    IS
        res    VARCHAR2 (50) := 'CORRECTO';
        cont   NUMBER (10);
    BEGIN
        IF prm_nit IS NULL
        THEN
            OPEN ct FOR
                SELECT   DISTINCT
                         TO_NUMBER (a.fis_gestion) gestion,
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
                         TO_CHAR (a.fis_fec_registro, 'dd/mm/yyyy')
                             fecha_orden_control,
                         s.key_cuo aduana,
                         nomadu (s.key_cuo) "DESC ADUANA",
                            --A.sad_reg_year||'/'||A.fis_key_cuo||'-'||A.sad_reg_serial||'-'||A.sad_reg_nber "TRA_FIS",
                            s.sad_reg_year
                         || '/'
                         || s.key_cuo
                         || '/'
                         || s.sad_reg_serial
                         || '-'
                         || s.sad_reg_nber
                             "TRAMITE",
                         NVL (
                             DECODE (spy1.sad_clr,
                                     0, 'VERDE',
                                     1, 'AZUL',
                                     2, 'AMARILLO',
                                     3, 'ROJO',
                                     '-'),
                             '-')
                             "CANAL",
                         numid (s.sad_consignee,
                                s.key_year,
                                s.key_cuo,
                                s.key_dec,
                                s.key_nber,
                                s.sad_num)
                             "DOC IMP",
                         NVL (nomimp (s.sad_consignee,
                                      s.key_year,
                                      s.key_cuo,
                                      s.key_dec,
                                      s.key_nber,
                                      s.sad_num), '-')
                             "IMPORTADOR",
                         NVL (s.key_dec, '&nbsp;') "DOC_DECL",
                         NVL (nomage (s.key_dec,
                                      s.key_year,
                                      s.key_cuo,
                                      s.key_dec,
                                      s.key_nber,
                                      s.sad_num), '-')
                             "DECLARANTE",
                         NVL (dirprov (s.sad_exporter,
                                       s.key_year,
                                       s.key_cuo,
                                       s.key_dec,
                                       s.key_nber,
                                       s.sad_num), '-')
                             "DIREC PROVEEDOR",
                         NVL (nomprov (s.sad_exporter,
                                       s.key_year,
                                       s.key_cuo,
                                       s.key_dec,
                                       s.key_nber,
                                       s.sad_num), '-')
                             "PROVEEDOR",
                         NVL (a.fis_fob_inicial, 0) fob_funcion,
                         /*fob_cabecera (s.key_year,
                                       s.key_cuo,
                                       s.key_dec,
                                       s.key_nber,
                                       0)
                             fob_funcion,*/
                         NVL (
                             (SELECT   SUM (saditm_tax_amount)
                                FROM   ops$asy.sad_tax st
                               WHERE       s.key_year = st.key_year
                                       AND s.key_cuo = st.key_cuo
                                       AND st.key_dec IS NULL
                                       AND s.key_nber = st.key_nber
                                       AND st.saditm_tax_code = 'GA'
                                       AND st.saditm_tax_mop = '1'
                                       AND st.sad_num = '0'),
                             0)
                             ga,
                         NVL (
                             (SELECT   SUM (saditm_tax_amount)
                                FROM   ops$asy.sad_tax st
                               WHERE       s.key_year = st.key_year
                                       AND s.key_cuo = st.key_cuo
                                       AND st.key_dec IS NULL
                                       AND s.key_nber = st.key_nber
                                       AND st.saditm_tax_code = 'IVA'
                                       AND st.sad_num = '0'),
                             0)
                             iva,
                         NVL (
                             (SELECT   SUM (saditm_tax_amount)
                                FROM   sad_tax st
                               WHERE       s.key_year = st.key_year
                                       AND s.key_cuo = st.key_cuo
                                       AND st.key_dec IS NULL
                                       AND s.key_nber = st.key_nber
                                       AND st.saditm_tax_code = 'ICE'
                                       AND st.sad_num = '0'),
                             0)
                             ice,
                         NVL (
                             (SELECT   SUM (saditm_tax_amount)
                                FROM   sad_tax st
                               WHERE       s.key_year = st.key_year
                                       AND s.key_cuo = st.key_cuo
                                       AND st.key_dec IS NULL
                                       AND s.key_nber = st.key_nber
                                       AND st.saditm_tax_code = 'IHD'
                                       AND st.sad_num = '0'),
                             0)
                             ihd,
                         ----SUMATORIAS DE TRIBUTOS
                         NVL (
                             (SELECT   SUM (saditm_tax_amount)
                                FROM   sad_tax st
                               WHERE       s.key_year = st.key_year
                                       AND s.key_cuo = st.key_cuo
                                       AND st.key_dec IS NULL
                                       AND s.key_nber = st.key_nber
                                       AND st.saditm_tax_code = 'GA'
                                       AND st.saditm_tax_mop = '1'
                                       AND st.sad_num = '0'),
                             0)
                         + NVL (
                               (SELECT   SUM (saditm_tax_amount)
                                  FROM   sad_tax st
                                 WHERE       s.key_year = st.key_year
                                         AND s.key_cuo = st.key_cuo
                                         AND st.key_dec IS NULL
                                         AND s.key_nber = st.key_nber
                                         AND st.saditm_tax_code = 'IVA'
                                         AND st.sad_num = '0'),
                               0)
                         + NVL (
                               (SELECT   SUM (saditm_tax_amount)
                                  FROM   sad_tax st
                                 WHERE       s.key_year = st.key_year
                                         AND s.key_cuo = st.key_cuo
                                         AND st.key_dec IS NULL
                                         AND s.key_nber = st.key_nber
                                         AND st.saditm_tax_code = 'ICE'
                                         AND st.sad_num = '0'),
                               0)
                         + NVL (
                               (SELECT   SUM (saditm_tax_amount)
                                  FROM   sad_tax st
                                 WHERE       s.key_year = st.key_year
                                         AND s.key_cuo = st.key_cuo
                                         AND st.key_dec IS NULL
                                         AND s.key_nber = st.key_nber
                                         AND st.saditm_tax_code = 'IHD'
                                         AND st.sad_num = '0'),
                               0)
                             total_tributos,
                         --ASIGNACION CONTROL DIFERIDO
                         NVL (a.fis_fiscalizador, '-') fiscalizador,
                         NVL (a.fis_usuario_asignacion, '-')
                             usuario_asignacion,
                         --NOTIFICACION
                         NVL (TO_CHAR (a.fis_fec_notificacion, 'dd/mm/yyyy'),
                              '-')
                             "FECHA_NOTIFICACION",
                         NVL (a.fis_obs_notificacion, '-')
                             "OBSERVACION_NOTIFICACION",
                         NVL (a.fis_tipo_notificacion, '-')
                             "TIPO_NOTIFICACION",
                         NVL (a.fis_usuario_notificacion, '-')
                             "USUARIO_NOTIFICACION",
                         --RESULTADO CONTROL DIFERIDO
                         NVL (a.fis_fob_final, 0) fob_fiscalizador,
                         NVL (TO_CHAR (a.fis_fec_liquidacion, 'dd/mm/yyyy'),
                              '-')
                             "FECHA_LIQUIDACION",
                         NVL (a.fis_valor_ufv, '-') "VALOR_UFV",
                         NVL (TO_NUMBER (a.fis_tributo_omitido_ga), 0)
                             "TRIBUTO_OMITIDO_GA",
                         NVL (TO_NUMBER (a.fis_tributo_omitido_iva), 0)
                             "TRIBUTO_OMITIDO_IVA",
                         NVL (TO_NUMBER (a.fis_tributo_omitido_ice), 0)
                             "TRIBUTO_OMITIDO_ICE",
                         NVL (TO_NUMBER (a.fis_tributo_omitido_iehd), 0)
                             "TRIBUTO_OMITIDO_IEHD",
                         NVL (
                               TO_NUMBER (a.fis_tributo_omitido_ga)
                             + TO_NUMBER (a.fis_tributo_omitido_iva)
                             + TO_NUMBER (a.fis_tributo_omitido_ice)
                             + TO_NUMBER (a.fis_tributo_omitido_iehd),
                             0)
                             "TOTAL_TRIBUTO_OMITIDO",
                         NVL (TO_NUMBER (a.fis_sancion_omision), 0)
                             sancion_omision,
                         NVL (TO_NUMBER (a.fis_multa_contrava), 0)
                             multa_contravencion,
                         NVL (TO_NUMBER (a.fis_multa_contrabc), 0)
                             "MULTA_CONTRA_CONTRA",
                         NVL (TO_NUMBER (a.fis_multa_contrabd), 0)
                             multa_contrabando_delito,
                         NVL (a.fis_usuario_resultados, '-')
                             usuarios_registrados,
                         --ACEPTACION DE PAGO
                         NVL (TO_CHAR (a.fis_fec_aceptacion, 'dd/mm/yyyy'),
                              '-')
                             fecha_aceptacion_pago,
                         NVL (a.fis_usuario_aceptacion, '-')
                             usuario_aceptacion,
                         --CONCLUSION DEL CONTROL DIFERIDO
                         NVL (a.fis_tipo_doc_con, '-') tipo_doc_conclusion,
                         NVL (a.fis_reg_nro_inf, '-') numero_informe,
                         NVL (TO_CHAR (a.fis_reg_fec_inf, 'dd/mm/yyyy'), '-')
                             "FECHA_INFORME",
                         NVL (a.fis_reg_nro_doc_con, '-')
                             "NRO_DOC_CONCLUSION",
                         NVL (TO_CHAR (a.fis_reg_fec_doc_con, 'dd/mm/yyyy'),
                              '-')
                             "FECHA_DOC_CONCLUSION",
                         NVL (TO_CHAR (a.fis_fec_finalizacion, 'dd/mm/yyyy'),
                              '-')
                             "FECHA_FINALIZACION",
                         NVL (a.fis_usuario_finalizacion, '-')
                             "USUARIO_REGISTRO_FINALIZACION",
                         --OBSERVACIONES ENCONTRADAS
                         DECODE (a.fis_ovalor, 'on', 'X', '-') "VALOR",
                         DECODE (a.fis_opartida, 'on', 'X', '-') "PARTIDA",
                         DECODE (a.fis_oorigen, 'on', 'X', '-') "ORIGEN",
                         DECODE (a.fis_osinobs, 'on', 'X', '-')
                             "SIN_OBSERVACION",
                         --OBSERVACIONES EN CONTRAVENCIONES ENCONTRADAS
                         DECODE (a.fis_comision, 'on', 'X', '-')
                             "OMISION_PAGO",
                         DECODE (a.fis_ccondel, 'on', 'X', '-')
                             "CONTRABANDO_DELITO",
                         DECODE (a.fis_cconcon, 'on', 'X', '-')
                             "CONTRABANDO_CONTRAVENCIONAL",
                         DECODE (a.fis_cconadu, 'on', 'X', '-')
                             "CONTRAVENCION_ADUANERA",
                         --NOTIFICACION DEL DOC DE CONCLUSION AL OPERADOR
                         NVL (TO_CHAR (a.fis_reg_fec_not_doc, 'dd/mm/yyyy'),
                              '-')
                             fecha_notificacion_conclusion,
                         NVL (a.fis_reg_tip_not_doc, '-')
                             tipo_notificacion_conclusion,
                         NVL (a.fis_usuario_not_doc_con, '-')
                             usuario_registro_notificacion,
                         --ENVIO A LA UNIDAD LEGAL
                         NVL (
                             TO_CHAR (a.fis_reg_fec_env_legal, 'dd/mm/yyyy'),
                             '-')
                             "FECHA_ENVIO",
                         NVL (a.fis_reg_nro_env_legal, '-')
                             "NRO_DOC_REMISION",
                         NVL (a.fis_usuario_env_legal, '-')
                             "USUARIO_UNIDAD_LEGAL",
                         --ESTADO
                         fis_estado "ESTADO",
                         --valores
                         NVL (
                             sicodif_ga (a.fis_gestion,
                                         a.fis_gerencia,
                                         a.fis_nro_control),
                             0)
                             ga_recuperado,
                         NVL (
                             sicodif_iva (a.fis_gestion,
                                          a.fis_gerencia,
                                          a.fis_nro_control),
                             0)
                             iva_recuperado,
                         NVL (
                             sicodif_ice (a.fis_gestion,
                                          a.fis_gerencia,
                                          a.fis_nro_control),
                             0)
                             ice_recuperado,
                         NVL (
                             sicodif_ihd (a.fis_gestion,
                                          a.fis_gerencia,
                                          a.fis_nro_control),
                             0)
                             ihd_recuperado,
                         NVL (
                             sicodif_ga (a.fis_gestion,
                                         a.fis_gerencia,
                                         a.fis_nro_control),
                             0)
                         + NVL (
                               sicodif_iva (a.fis_gestion,
                                            a.fis_gerencia,
                                            a.fis_nro_control),
                               0)
                         + NVL (
                               sicodif_ice (a.fis_gestion,
                                            a.fis_gerencia,
                                            a.fis_nro_control),
                               0)
                         + NVL (
                               sicodif_ihd (a.fis_gestion,
                                            a.fis_gerencia,
                                            a.fis_nro_control),
                               0)
                             total_tributo,
                         NVL (
                             sicodif_sancionop (a.fis_gestion,
                                                a.fis_gerencia,
                                                a.fis_nro_control),
                             0)
                             sancionop_recuperado,
                         --MULTA CONTRAVENCIONAL ADUANERA
                         NVL (
                             sicodif_contra_adu (a.fis_gestion,
                                                 a.fis_gerencia,
                                                 a.fis_nro_control),
                             0)
                             sancion_contra_adu,
                         --MULTA CONTRABANDO CONTRAVENCIONAL
                         --FALTA
                         NVL (
                             sicodif_contra_contravencional (
                                 a.fis_gestion,
                                 a.fis_gerencia,
                                 a.fis_nro_control),
                             0)
                             sancion_contra_contravencional,
                         --sicodif_USUARIO(a.fis_gestion,a.fis_gerencia,a.fis_nro_control) USUARIOS,

                         NVL (a.fis_usuario_resultados, '-'),
                         fis_origen_control control_origen,
                         --TO_DATE (a.fis_fec_registro, 'DD/MM/yyyy') FECHA_CONTROL
                         --to_date(a.fis_fec_registro,'dd/mm/yyyy')
                         NVL (TO_CHAR (a.fis_fec_registro, 'DD/MM/YYYY'),
                              '-')
                             fecha_control,
                         --OTROS DATOS
                         CASE
                             WHEN sicodif_25 (s.key_year,
                                              s.key_cuo,
                                              s.key_dec,
                                              s.key_nber) IS NOT NULL
                             THEN
                                 sicodif_25 (s.key_year,
                                             s.key_cuo,
                                             s.key_dec,
                                             s.key_nber)
                             ELSE
                                 '-'
                         END
                             AS pase_salida,
                         mercancia (s.key_year,
                                    s.key_cuo,
                                    s.key_dec,
                                    s.key_nber)
                             mercancias,
                         NVL (crt_cabecera (s.key_year,
                                            s.key_cuo,
                                            s.key_dec,
                                            s.key_nber), 'ALEATORIO')
                             criterio_nivel_cab,
                         --MULTA CONTRABANDO DELITO
                         --FALTA
                         NVL (
                             sicodif_contra_delito (a.fis_gestion,
                                                    a.fis_gerencia,
                                                    a.fis_nro_control),
                             0)
                             sancion_contra_delito
                  FROM   sicodif.cd_fiscalizacion a, sad_spy spy1, sad_gen s
                 WHERE       s.sad_flw = '1'
                         AND s.sad_asmt_serial IS NOT NULL
                         AND s.lst_ope = 'U'
                         AND s.sad_num = '0'
                         AND fis_numver = '0'
                         AND fis_lst_ope = 'U'
                         AND fis_estado <> 'REGULARIZACION'
                         AND s.key_year = spy1.key_year(+)
                         AND s.key_cuo = spy1.key_cuo(+)
                         AND s.key_dec IS NULL
                         AND spy1.key_dec(+) IS NULL
                         AND s.key_nber = spy1.key_nber(+)
                         AND spy1.spy_sta(+) = '10'
                         AND spy1.spy_act(+) = '24'
                         AND s.key_year = a.fis_key_year
                         AND s.key_cuo = a.fis_key_cuo
                         AND a.fis_key_dec IS NULL
                         AND s.key_nber = a.fis_key_nber
                         AND a.fis_gerencia LIKE prm_gerencia
                         AND TRUNC (a.fis_fec_asignacion) BETWEEN TO_DATE (
                                                                      prm_fec_ini,
                                                                      'dd/mm/yyyy')
                                                              AND  TO_DATE (
                                                                       prm_fec_fin,
                                                                       'dd/mm/yyyy')
                UNION
                SELECT   DISTINCT
                         TO_NUMBER (a.fis_gestion) gestion,
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
                         TO_CHAR (a.fis_fec_registro, 'dd/mm/yyyy')
                             fecha_orden_control,
                         s.key_cuo aduana,
                         nomadu (s.key_cuo) "DESC ADUANA",
                            --A.sad_reg_year||'/'||A.fis_key_cuo||'-'||A.sad_reg_serial||'-'||A.sad_reg_nber "TRA_FIS",
                            s.sad_reg_year
                         || '/'
                         || s.key_cuo
                         || '/'
                         || s.sad_reg_serial
                         || '-'
                         || s.sad_reg_nber
                             "TRAMITE",
                         NVL (
                             DECODE (spy1.sad_clr,
                                     0, 'VERDE',
                                     1, 'AZUL',
                                     2, 'AMARILLO',
                                     3, 'ROJO',
                                     '-'),
                             '-')
                             "CANAL",
                         numid (s.sad_consignee,
                                s.key_year,
                                s.key_cuo,
                                s.key_dec,
                                s.key_nber,
                                s.sad_num)
                             "DOC IMP",
                         NVL (nomimp (s.sad_consignee,
                                      s.key_year,
                                      s.key_cuo,
                                      s.key_dec,
                                      s.key_nber,
                                      s.sad_num), '-')
                             "IMPORTADOR",
                         NVL (s.key_dec, '&nbsp;') "DOC_DECL",
                         NVL (nomage (s.key_dec,
                                      s.key_year,
                                      s.key_cuo,
                                      s.key_dec,
                                      s.key_nber,
                                      s.sad_num), '-')
                             "DECLARANTE",
                         NVL (dirprov (s.sad_exporter,
                                       s.key_year,
                                       s.key_cuo,
                                       s.key_dec,
                                       s.key_nber,
                                       s.sad_num), '-')
                             "DIREC PROVEEDOR",
                         NVL (nomprov (s.sad_exporter,
                                       s.key_year,
                                       s.key_cuo,
                                       s.key_dec,
                                       s.key_nber,
                                       s.sad_num), '-')
                             "PROVEEDOR",
                         NVL (a.fis_fob_inicial, 0) fob_funcion,
                         /*fob_cabecera (s.key_year,
                                       s.key_cuo,
                                       s.key_dec,
                                       s.key_nber,
                                       0)
                             fob_funcion,*/
                         NVL (
                             (SELECT   SUM (saditm_tax_amount)
                                FROM   ops$asy.sad_tax st
                               WHERE       s.key_year = st.key_year
                                       AND s.key_cuo = st.key_cuo
                                       AND s.key_dec = st.key_dec
                                       AND s.key_nber = st.key_nber
                                       AND st.saditm_tax_code = 'GA'
                                       AND st.saditm_tax_mop = '1'
                                       AND st.sad_num = '0'),
                             0)
                             ga,
                         NVL (
                             (SELECT   SUM (saditm_tax_amount)
                                FROM   ops$asy.sad_tax st
                               WHERE       s.key_year = st.key_year
                                       AND s.key_cuo = st.key_cuo
                                       AND s.key_dec = st.key_dec
                                       AND s.key_nber = st.key_nber
                                       AND st.saditm_tax_code = 'IVA'
                                       AND st.sad_num = '0'),
                             0)
                             iva,
                         NVL (
                             (SELECT   SUM (saditm_tax_amount)
                                FROM   sad_tax st
                               WHERE       s.key_year = st.key_year
                                       AND s.key_cuo = st.key_cuo
                                       AND s.key_dec = st.key_dec
                                       AND s.key_nber = st.key_nber
                                       AND st.saditm_tax_code = 'ICE'
                                       AND st.sad_num = '0'),
                             0)
                             ice,
                         NVL (
                             (SELECT   SUM (saditm_tax_amount)
                                FROM   sad_tax st
                               WHERE       s.key_year = st.key_year
                                       AND s.key_cuo = st.key_cuo
                                       AND s.key_dec = st.key_dec
                                       AND s.key_nber = st.key_nber
                                       AND st.saditm_tax_code = 'IHD'
                                       AND st.sad_num = '0'),
                             0)
                             ihd,
                         ----SUMATORIAS DE TRIBUTOS


                         NVL (
                             (SELECT   SUM (saditm_tax_amount)
                                FROM   sad_tax st
                               WHERE       s.key_year = st.key_year
                                       AND s.key_cuo = st.key_cuo
                                       AND s.key_dec = st.key_dec
                                       AND s.key_nber = st.key_nber
                                       AND st.saditm_tax_code = 'GA'
                                       AND st.saditm_tax_mop = '1'
                                       AND st.sad_num = '0'),
                             0)
                         + NVL (
                               (SELECT   SUM (saditm_tax_amount)
                                  FROM   sad_tax st
                                 WHERE       s.key_year = st.key_year
                                         AND s.key_cuo = st.key_cuo
                                         AND s.key_dec = st.key_dec
                                         AND s.key_nber = st.key_nber
                                         AND st.saditm_tax_code = 'IVA'
                                         AND st.sad_num = '0'),
                               0)
                         + NVL (
                               (SELECT   SUM (saditm_tax_amount)
                                  FROM   sad_tax st
                                 WHERE       s.key_year = st.key_year
                                         AND s.key_cuo = st.key_cuo
                                         AND s.key_dec = st.key_dec
                                         AND s.key_nber = st.key_nber
                                         AND st.saditm_tax_code = 'ICE'
                                         AND st.sad_num = '0'),
                               0)
                         + NVL (
                               (SELECT   SUM (saditm_tax_amount)
                                  FROM   sad_tax st
                                 WHERE       s.key_year = st.key_year
                                         AND s.key_cuo = st.key_cuo
                                         AND s.key_dec = st.key_dec
                                         AND s.key_nber = st.key_nber
                                         AND st.saditm_tax_code = 'IHD'
                                         AND st.sad_num = '0'),
                               0)
                             total_tributos,
                         --ASIGNACION CONTROL DIFERIDO
                         NVL (a.fis_fiscalizador, '-') fiscalizador,
                         NVL (a.fis_usuario_asignacion, '-')
                             usuario_asignacion,
                         --NOTIFICACION
                         NVL (TO_CHAR (a.fis_fec_notificacion, 'dd/mm/yyyy'),
                              '-')
                             "FECHA_NOTIFICACION",
                         NVL (a.fis_obs_notificacion, '-')
                             "OBSERVACION_NOTIFICACION",
                         NVL (a.fis_tipo_notificacion, '-')
                             "TIPO_NOTIFICACION",
                         NVL (a.fis_usuario_notificacion, '-')
                             "USUARIO_NOTIFICACION",
                         --RESULTADO CONTROL DIFERIDO
                         NVL (a.fis_fob_final, 0) fob_fiscalizador,
                         NVL (TO_CHAR (a.fis_fec_liquidacion, 'dd/mm/yyyy'),
                              '-')
                             "FECHA_LIQUIDACION",
                         NVL (a.fis_valor_ufv, '-') "VALOR_UFV",
                         NVL (TO_NUMBER (a.fis_tributo_omitido_ga), 0)
                             "TRIBUTO_OMITIDO_GA",
                         NVL (TO_NUMBER (a.fis_tributo_omitido_iva), 0)
                             "TRIBUTO_OMITIDO_IVA",
                         NVL (TO_NUMBER (a.fis_tributo_omitido_ice), 0)
                             "TRIBUTO_OMITIDO_ICE",
                         NVL (TO_NUMBER (a.fis_tributo_omitido_iehd), 0)
                             "TRIBUTO_OMITIDO_IEHD",
                         NVL (
                               TO_NUMBER (a.fis_tributo_omitido_ga)
                             + TO_NUMBER (a.fis_tributo_omitido_iva)
                             + TO_NUMBER (a.fis_tributo_omitido_ice)
                             + TO_NUMBER (a.fis_tributo_omitido_iehd),
                             0)
                             "TOTAL_TRIBUTO_OMITIDO",
                         NVL (TO_NUMBER (a.fis_sancion_omision), 0)
                             sancion_omision,
                         NVL (TO_NUMBER (a.fis_multa_contrava), 0)
                             multa_contravencion,
                         NVL (TO_NUMBER (a.fis_multa_contrabc), 0)
                             "MULTA_CONTRA_CONTRA",
                         NVL (TO_NUMBER (a.fis_multa_contrabd), 0)
                             multa_contrabando_delito,
                         NVL (a.fis_usuario_resultados, '-')
                             usuarios_registrados,
                         --ACEPTACION DE PAGO
                         NVL (TO_CHAR (a.fis_fec_aceptacion, 'dd/mm/yyyy'),
                              '-')
                             fecha_aceptacion_pago,
                         NVL (a.fis_usuario_aceptacion, '-')
                             usuario_aceptacion,
                         --CONCLUSION DEL CONTROL DIFERIDO
                         NVL (a.fis_tipo_doc_con, '-') tipo_doc_conclusion,
                         NVL (a.fis_reg_nro_inf, '-') numero_informe,
                         NVL (TO_CHAR (a.fis_reg_fec_inf, 'dd/mm/yyyy'), '-')
                             "FECHA_INFORME",
                         NVL (a.fis_reg_nro_doc_con, '-')
                             "NRO_DOC_CONCLUSION",
                         NVL (TO_CHAR (a.fis_reg_fec_doc_con, 'dd/mm/yyyy'),
                              '-')
                             "FECHA_DOC_CONCLUSION",
                         NVL (TO_CHAR (a.fis_fec_finalizacion, 'dd/mm/yyyy'),
                              '-')
                             "FECHA_FINALIZACION",
                         NVL (a.fis_usuario_finalizacion, '-')
                             "USUARIO_REGISTRO_FINALIZACION",
                         --OBSERVACIONES ENCONTRADAS
                         DECODE (a.fis_ovalor, 'on', 'X', '-') "VALOR",
                         DECODE (a.fis_opartida, 'on', 'X', '-') "PARTIDA",
                         DECODE (a.fis_oorigen, 'on', 'X', '-') "ORIGEN",
                         DECODE (a.fis_osinobs, 'on', 'X', '-')
                             "SIN_OBSERVACION",
                         --OBSERVACIONES EN CONTRAVENCIONES ENCONTRADAS
                         DECODE (a.fis_comision, 'on', 'X', '-')
                             "OMISION_PAGO",
                         DECODE (a.fis_ccondel, 'on', 'X', '-')
                             "CONTRABANDO_DELITO",
                         DECODE (a.fis_cconcon, 'on', 'X', '-')
                             "CONTRABANDO_CONTRAVENCIONAL",
                         DECODE (a.fis_cconadu, 'on', 'X', '-')
                             "CONTRAVENCION_ADUANERA",
                         --NOTIFICACION DEL DOC DE CONCLUSION AL OPERADOR
                         NVL (TO_CHAR (a.fis_reg_fec_not_doc, 'dd/mm/yyyy'),
                              '-')
                             fecha_notificacion_conclusion,
                         NVL (a.fis_reg_tip_not_doc, '-')
                             tipo_notificacion_conclusion,
                         NVL (a.fis_usuario_not_doc_con, '-')
                             usuario_registro_notificacion,
                         --ENVIO A LA UNIDAD LEGAL
                         NVL (
                             TO_CHAR (a.fis_reg_fec_env_legal, 'dd/mm/yyyy'),
                             '-')
                             "FECHA_ENVIO",
                         NVL (a.fis_reg_nro_env_legal, '-')
                             "NRO_DOC_REMISION",
                         NVL (a.fis_usuario_env_legal, '-')
                             "USUARIO_UNIDAD_LEGAL",
                         --ESTADO
                         fis_estado "ESTADO",
                         --valores
                         NVL (
                             sicodif_ga (a.fis_gestion,
                                         a.fis_gerencia,
                                         a.fis_nro_control),
                             0)
                             ga_recuperado,
                         NVL (
                             sicodif_iva (a.fis_gestion,
                                          a.fis_gerencia,
                                          a.fis_nro_control),
                             0)
                             iva_recuperado,
                         NVL (
                             sicodif_ice (a.fis_gestion,
                                          a.fis_gerencia,
                                          a.fis_nro_control),
                             0)
                             ice_recuperado,
                         NVL (
                             sicodif_ihd (a.fis_gestion,
                                          a.fis_gerencia,
                                          a.fis_nro_control),
                             0)
                             ihd_recuperado,
                         NVL (
                             sicodif_ga (a.fis_gestion,
                                         a.fis_gerencia,
                                         a.fis_nro_control),
                             0)
                         + NVL (
                               sicodif_iva (a.fis_gestion,
                                            a.fis_gerencia,
                                            a.fis_nro_control),
                               0)
                         + NVL (
                               sicodif_ice (a.fis_gestion,
                                            a.fis_gerencia,
                                            a.fis_nro_control),
                               0)
                         + NVL (
                               sicodif_ihd (a.fis_gestion,
                                            a.fis_gerencia,
                                            a.fis_nro_control),
                               0)
                             total_tributo,
                         NVL (
                             sicodif_sancionop (a.fis_gestion,
                                                a.fis_gerencia,
                                                a.fis_nro_control),
                             0)
                             sancionop_recuperado,
                         --MULTA CONTRAVENCIONAL ADUANERA
                         NVL (
                             sicodif_contra_adu (a.fis_gestion,
                                                 a.fis_gerencia,
                                                 a.fis_nro_control),
                             0)
                             sancion_contra_adu,
                         --MULTA CONTRABANDO CONTRAVENCIONAL
                         --FALTA
                         NVL (
                             sicodif_contra_contravencional (
                                 a.fis_gestion,
                                 a.fis_gerencia,
                                 a.fis_nro_control),
                             0)
                             sancion_contra_contravencional,
                         --sicodif_USUARIO(a.fis_gestion,a.fis_gerencia,a.fis_nro_control) USUARIOS,

                         NVL (a.fis_usuario_resultados, '-'),
                         fis_origen_control control_origen,
                         --TO_DATE (a.fis_fec_registro, 'DD/MM/yyyy') FECHA_CONTROL
                         --to_date(a.fis_fec_registro,'dd/mm/yyyy')
                         NVL (TO_CHAR (a.fis_fec_registro, 'DD/MM/YYYY'),
                              '-')
                             fecha_control,
                         --OTROS DATOS
                         CASE
                             WHEN sicodif_25 (s.key_year,
                                              s.key_cuo,
                                              s.key_dec,
                                              s.key_nber) IS NOT NULL
                             THEN
                                 sicodif_25 (s.key_year,
                                             s.key_cuo,
                                             s.key_dec,
                                             s.key_nber)
                             ELSE
                                 '-'
                         END
                             AS pase_salida,
                         mercancia (s.key_year,
                                    s.key_cuo,
                                    s.key_dec,
                                    s.key_nber)
                             mercancias,
                         NVL (crt_cabecera (s.key_year,
                                            s.key_cuo,
                                            s.key_dec,
                                            s.key_nber), 'ALEATORIO')
                             criterio_nivel_cab,
                         --MULTA CONTRABANDO DELITO
                         --FALTA
                         NVL (
                             sicodif_contra_delito (a.fis_gestion,
                                                    a.fis_gerencia,
                                                    a.fis_nro_control),
                             0)
                             sancion_contra_delito
                  FROM   sicodif.cd_fiscalizacion a, sad_spy spy1, sad_gen s
                 WHERE       s.sad_flw = '1'
                         AND s.sad_asmt_serial IS NOT NULL
                         AND s.lst_ope = 'U'
                         AND s.sad_num = '0'
                         AND fis_numver = '0'
                         AND fis_lst_ope = 'U'
                         AND fis_estado <> 'REGULARIZACION'
                         AND s.key_year = spy1.key_year(+)
                         AND s.key_cuo = spy1.key_cuo(+)
                         AND s.key_dec = spy1.key_dec(+)
                         AND s.key_nber = spy1.key_nber(+)
                         AND spy1.spy_sta(+) = '10'
                         AND spy1.spy_act(+) = '24'
                         AND s.key_year = a.fis_key_year
                         AND s.key_cuo = a.fis_key_cuo
                         AND s.key_dec = a.fis_key_dec
                         AND s.key_nber = a.fis_key_nber
                         AND a.fis_gerencia LIKE prm_gerencia
                         AND TRUNC (a.fis_fec_asignacion) BETWEEN TO_DATE (
                                                                      prm_fec_ini,
                                                                      'dd/mm/yyyy')
                                                              AND  TO_DATE (
                                                                       prm_fec_fin,
                                                                       'dd/mm/yyyy');
        ELSE
            OPEN ct FOR
                SELECT   DISTINCT
                         TO_NUMBER (a.fis_gestion) gestion,
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
                         TO_CHAR (a.fis_fec_registro, 'dd/mm/yyyy')
                             fecha_orden_control,
                         s.key_cuo aduana,
                         nomadu (s.key_cuo) "DESC ADUANA",
                            --A.sad_reg_year||'/'||A.fis_key_cuo||'-'||A.sad_reg_serial||'-'||A.sad_reg_nber "TRA_FIS",
                            s.sad_reg_year
                         || '/'
                         || s.key_cuo
                         || '/'
                         || s.sad_reg_serial
                         || '-'
                         || s.sad_reg_nber
                             "TRAMITE",
                         NVL (
                             DECODE (spy1.sad_clr,
                                     0, 'VERDE',
                                     1, 'AZUL',
                                     2, 'AMARILLO',
                                     3, 'ROJO',
                                     '-'),
                             '-')
                             "CANAL",
                         numid (s.sad_consignee,
                                s.key_year,
                                s.key_cuo,
                                s.key_dec,
                                s.key_nber,
                                s.sad_num)
                             "DOC IMP",
                         NVL (nomimp (s.sad_consignee,
                                      s.key_year,
                                      s.key_cuo,
                                      s.key_dec,
                                      s.key_nber,
                                      s.sad_num), '-')
                             "IMPORTADOR",
                         NVL (s.key_dec, '&nbsp;') "DOC_DECL",
                         NVL (nomage (s.key_dec,
                                      s.key_year,
                                      s.key_cuo,
                                      s.key_dec,
                                      s.key_nber,
                                      s.sad_num), '-')
                             "DECLARANTE",
                         NVL (dirprov (s.sad_exporter,
                                       s.key_year,
                                       s.key_cuo,
                                       s.key_dec,
                                       s.key_nber,
                                       s.sad_num), '-')
                             "DIREC PROVEEDOR",
                         NVL (nomprov (s.sad_exporter,
                                       s.key_year,
                                       s.key_cuo,
                                       s.key_dec,
                                       s.key_nber,
                                       s.sad_num), '-')
                             "PROVEEDOR",
                         NVL (a.fis_fob_inicial, 0) fob_funcion,
                         /*fob_cabecera (s.key_year,
                                       s.key_cuo,
                                       s.key_dec,
                                       s.key_nber,
                                       0)
                             fob_funcion,*/
                         NVL (
                             (SELECT   SUM (saditm_tax_amount)
                                FROM   ops$asy.sad_tax st
                               WHERE       s.key_year = st.key_year
                                       AND s.key_cuo = st.key_cuo
                                       AND st.key_dec IS NULL
                                       AND s.key_nber = st.key_nber
                                       AND st.saditm_tax_code = 'GA'
                                       AND st.saditm_tax_mop = '1'
                                       AND st.sad_num = '0'),
                             0)
                             ga,
                         NVL (
                             (SELECT   SUM (saditm_tax_amount)
                                FROM   ops$asy.sad_tax st
                               WHERE       s.key_year = st.key_year
                                       AND s.key_cuo = st.key_cuo
                                       AND st.key_dec IS NULL
                                       AND s.key_nber = st.key_nber
                                       AND st.saditm_tax_code = 'IVA'
                                       AND st.sad_num = '0'),
                             0)
                             iva,
                         NVL (
                             (SELECT   SUM (saditm_tax_amount)
                                FROM   sad_tax st
                               WHERE       s.key_year = st.key_year
                                       AND s.key_cuo = st.key_cuo
                                       AND st.key_dec IS NULL
                                       AND s.key_nber = st.key_nber
                                       AND st.saditm_tax_code = 'ICE'
                                       AND st.sad_num = '0'),
                             0)
                             ice,
                         NVL (
                             (SELECT   SUM (saditm_tax_amount)
                                FROM   sad_tax st
                               WHERE       s.key_year = st.key_year
                                       AND s.key_cuo = st.key_cuo
                                       AND st.key_dec IS NULL
                                       AND s.key_nber = st.key_nber
                                       AND st.saditm_tax_code = 'IHD'
                                       AND st.sad_num = '0'),
                             0)
                             ihd,
                         ----SUMATORIAS DE TRIBUTOS
                         NVL (
                             (SELECT   SUM (saditm_tax_amount)
                                FROM   sad_tax st
                               WHERE       s.key_year = st.key_year
                                       AND s.key_cuo = st.key_cuo
                                       AND st.key_dec IS NULL
                                       AND s.key_nber = st.key_nber
                                       AND st.saditm_tax_code = 'GA'
                                       AND st.saditm_tax_mop = '1'
                                       AND st.sad_num = '0'),
                             0)
                         + NVL (
                               (SELECT   SUM (saditm_tax_amount)
                                  FROM   sad_tax st
                                 WHERE       s.key_year = st.key_year
                                         AND s.key_cuo = st.key_cuo
                                         AND st.key_dec IS NULL
                                         AND s.key_nber = st.key_nber
                                         AND st.saditm_tax_code = 'IVA'
                                         AND st.sad_num = '0'),
                               0)
                         + NVL (
                               (SELECT   SUM (saditm_tax_amount)
                                  FROM   sad_tax st
                                 WHERE       s.key_year = st.key_year
                                         AND s.key_cuo = st.key_cuo
                                         AND st.key_dec IS NULL
                                         AND s.key_nber = st.key_nber
                                         AND st.saditm_tax_code = 'ICE'
                                         AND st.sad_num = '0'),
                               0)
                         + NVL (
                               (SELECT   SUM (saditm_tax_amount)
                                  FROM   sad_tax st
                                 WHERE       s.key_year = st.key_year
                                         AND s.key_cuo = st.key_cuo
                                         AND st.key_dec IS NULL
                                         AND s.key_nber = st.key_nber
                                         AND st.saditm_tax_code = 'IHD'
                                         AND st.sad_num = '0'),
                               0)
                             total_tributos,
                         --ASIGNACION CONTROL DIFERIDO
                         NVL (a.fis_fiscalizador, '-') fiscalizador,
                         NVL (a.fis_usuario_asignacion, '-')
                             usuario_asignacion,
                         --NOTIFICACION
                         NVL (TO_CHAR (a.fis_fec_notificacion, 'dd/mm/yyyy'),
                              '-')
                             "FECHA_NOTIFICACION",
                         NVL (a.fis_obs_notificacion, '-')
                             "OBSERVACION_NOTIFICACION",
                         NVL (a.fis_tipo_notificacion, '-')
                             "TIPO_NOTIFICACION",
                         NVL (a.fis_usuario_notificacion, '-')
                             "USUARIO_NOTIFICACION",
                         --RESULTADO CONTROL DIFERIDO
                         NVL (a.fis_fob_final, 0) fob_fiscalizador,
                         NVL (TO_CHAR (a.fis_fec_liquidacion, 'dd/mm/yyyy'),
                              '-')
                             "FECHA_LIQUIDACION",
                         NVL (a.fis_valor_ufv, '-') "VALOR_UFV",
                         NVL (TO_NUMBER (a.fis_tributo_omitido_ga), 0)
                             "TRIBUTO_OMITIDO_GA",
                         NVL (TO_NUMBER (a.fis_tributo_omitido_iva), 0)
                             "TRIBUTO_OMITIDO_IVA",
                         NVL (TO_NUMBER (a.fis_tributo_omitido_ice), 0)
                             "TRIBUTO_OMITIDO_ICE",
                         NVL (TO_NUMBER (a.fis_tributo_omitido_iehd), 0)
                             "TRIBUTO_OMITIDO_IEHD",
                         NVL (
                               TO_NUMBER (a.fis_tributo_omitido_ga)
                             + TO_NUMBER (a.fis_tributo_omitido_iva)
                             + TO_NUMBER (a.fis_tributo_omitido_ice)
                             + TO_NUMBER (a.fis_tributo_omitido_iehd),
                             0)
                             "TOTAL_TRIBUTO_OMITIDO",
                         NVL (TO_NUMBER (a.fis_sancion_omision), 0)
                             sancion_omision,
                         NVL (TO_NUMBER (a.fis_multa_contrava), 0)
                             multa_contravencion,
                         NVL (TO_NUMBER (a.fis_multa_contrabc), 0)
                             "MULTA_CONTRA_CONTRA",
                         NVL (TO_NUMBER (a.fis_multa_contrabd), 0)
                             multa_contrabando_delito,
                         NVL (a.fis_usuario_resultados, '-')
                             usuarios_registrados,
                         --ACEPTACION DE PAGO
                         NVL (TO_CHAR (a.fis_fec_aceptacion, 'dd/mm/yyyy'),
                              '-')
                             fecha_aceptacion_pago,
                         NVL (a.fis_usuario_aceptacion, '-')
                             usuario_aceptacion,
                         --CONCLUSION DEL CONTROL DIFERIDO
                         NVL (a.fis_tipo_doc_con, '-') tipo_doc_conclusion,
                         NVL (a.fis_reg_nro_inf, '-') numero_informe,
                         NVL (TO_CHAR (a.fis_reg_fec_inf, 'dd/mm/yyyy'), '-')
                             "FECHA_INFORME",
                         NVL (a.fis_reg_nro_doc_con, '-')
                             "NRO_DOC_CONCLUSION",
                         NVL (TO_CHAR (a.fis_reg_fec_doc_con, 'dd/mm/yyyy'),
                              '-')
                             "FECHA_DOC_CONCLUSION",
                         NVL (TO_CHAR (a.fis_fec_finalizacion, 'dd/mm/yyyy'),
                              '-')
                             "FECHA_FINALIZACION",
                         NVL (a.fis_usuario_finalizacion, '-')
                             "USUARIO_REGISTRO_FINALIZACION",
                         --OBSERVACIONES ENCONTRADAS
                         DECODE (a.fis_ovalor, 'on', 'X', '-') "VALOR",
                         DECODE (a.fis_opartida, 'on', 'X', '-') "PARTIDA",
                         DECODE (a.fis_oorigen, 'on', 'X', '-') "ORIGEN",
                         DECODE (a.fis_osinobs, 'on', 'X', '-')
                             "SIN_OBSERVACION",
                         --OBSERVACIONES EN CONTRAVENCIONES ENCONTRADAS
                         DECODE (a.fis_comision, 'on', 'X', '-')
                             "OMISION_PAGO",
                         DECODE (a.fis_ccondel, 'on', 'X', '-')
                             "CONTRABANDO_DELITO",
                         DECODE (a.fis_cconcon, 'on', 'X', '-')
                             "CONTRABANDO_CONTRAVENCIONAL",
                         DECODE (a.fis_cconadu, 'on', 'X', '-')
                             "CONTRAVENCION_ADUANERA",
                         --NOTIFICACION DEL DOC DE CONCLUSION AL OPERADOR
                         NVL (TO_CHAR (a.fis_reg_fec_not_doc, 'dd/mm/yyyy'),
                              '-')
                             fecha_notificacion_conclusion,
                         NVL (a.fis_reg_tip_not_doc, '-')
                             tipo_notificacion_conclusion,
                         NVL (a.fis_usuario_not_doc_con, '-')
                             usuario_registro_notificacion,
                         --ENVIO A LA UNIDAD LEGAL
                         NVL (
                             TO_CHAR (a.fis_reg_fec_env_legal, 'dd/mm/yyyy'),
                             '-')
                             "FECHA_ENVIO",
                         NVL (a.fis_reg_nro_env_legal, '-')
                             "NRO_DOC_REMISION",
                         NVL (a.fis_usuario_env_legal, '-')
                             "USUARIO_UNIDAD_LEGAL",
                         --ESTADO
                         fis_estado "ESTADO",
                         --valores
                         NVL (
                             sicodif_ga (a.fis_gestion,
                                         a.fis_gerencia,
                                         a.fis_nro_control),
                             0)
                             ga_recuperado,
                         NVL (
                             sicodif_iva (a.fis_gestion,
                                          a.fis_gerencia,
                                          a.fis_nro_control),
                             0)
                             iva_recuperado,
                         NVL (
                             sicodif_ice (a.fis_gestion,
                                          a.fis_gerencia,
                                          a.fis_nro_control),
                             0)
                             ice_recuperado,
                         NVL (
                             sicodif_ihd (a.fis_gestion,
                                          a.fis_gerencia,
                                          a.fis_nro_control),
                             0)
                             ihd_recuperado,
                         NVL (
                             sicodif_ga (a.fis_gestion,
                                         a.fis_gerencia,
                                         a.fis_nro_control),
                             0)
                         + NVL (
                               sicodif_iva (a.fis_gestion,
                                            a.fis_gerencia,
                                            a.fis_nro_control),
                               0)
                         + NVL (
                               sicodif_ice (a.fis_gestion,
                                            a.fis_gerencia,
                                            a.fis_nro_control),
                               0)
                         + NVL (
                               sicodif_ihd (a.fis_gestion,
                                            a.fis_gerencia,
                                            a.fis_nro_control),
                               0)
                             total_tributo,
                         NVL (
                             sicodif_sancionop (a.fis_gestion,
                                                a.fis_gerencia,
                                                a.fis_nro_control),
                             0)
                             sancionop_recuperado,
                         --MULTA CONTRAVENCIONAL ADUANERA
                         NVL (
                             sicodif_contra_adu (a.fis_gestion,
                                                 a.fis_gerencia,
                                                 a.fis_nro_control),
                             0)
                             sancion_contra_adu,
                         --MULTA CONTRABANDO CONTRAVENCIONAL
                         --FALTA
                         NVL (
                             sicodif_contra_contravencional (
                                 a.fis_gestion,
                                 a.fis_gerencia,
                                 a.fis_nro_control),
                             0)
                             sancion_contra_contravencional,
                         --sicodif_USUARIO(a.fis_gestion,a.fis_gerencia,a.fis_nro_control) USUARIOS,

                         NVL (a.fis_usuario_resultados, '-'),
                         fis_origen_control control_origen,
                         --TO_DATE (a.fis_fec_registro, 'DD/MM/yyyy') FECHA_CONTROL
                         --to_date(a.fis_fec_registro,'dd/mm/yyyy')
                         NVL (TO_CHAR (a.fis_fec_registro, 'DD/MM/YYYY'),
                              '-')
                             fecha_control,
                         --OTROS DATOS
                         CASE
                             WHEN sicodif_25 (s.key_year,
                                              s.key_cuo,
                                              s.key_dec,
                                              s.key_nber) IS NOT NULL
                             THEN
                                 sicodif_25 (s.key_year,
                                             s.key_cuo,
                                             s.key_dec,
                                             s.key_nber)
                             ELSE
                                 '-'
                         END
                             AS pase_salida,
                         mercancia (s.key_year,
                                    s.key_cuo,
                                    s.key_dec,
                                    s.key_nber)
                             mercancias,
                         NVL (crt_cabecera (s.key_year,
                                            s.key_cuo,
                                            s.key_dec,
                                            s.key_nber), 'ALEATORIO')
                             criterio_nivel_cab,
                         --MULTA CONTRABANDO DELITO
                         --FALTA
                         NVL (
                             sicodif_contra_delito (a.fis_gestion,
                                                    a.fis_gerencia,
                                                    a.fis_nro_control),
                             0)
                             sancion_contra_delito
                  FROM   sicodif.cd_fiscalizacion a, sad_spy spy1, sad_gen s
                 WHERE       s.sad_flw = '1'
                         AND s.sad_asmt_serial IS NOT NULL
                         AND s.lst_ope = 'U'
                         AND s.sad_num = '0'
                         AND fis_numver = '0'
                         AND fis_lst_ope = 'U'
                         AND fis_estado <> 'REGULARIZACION'
                         AND s.key_year = spy1.key_year(+)
                         AND s.key_cuo = spy1.key_cuo(+)
                         AND s.key_dec IS NULL
                         AND spy1.key_dec(+) IS NULL
                         AND s.key_nber = spy1.key_nber(+)
                         AND spy1.spy_sta(+) = '10'
                         AND spy1.spy_act(+) = '24'
                         AND s.key_year = a.fis_key_year
                         AND s.key_cuo = a.fis_key_cuo
                         AND a.fis_key_dec IS NULL
                         AND s.key_nber = a.fis_key_nber
                         AND numid (s.sad_consignee,
                                    s.key_year,
                                    s.key_cuo,
                                    s.key_dec,
                                    s.key_nber,
                                    s.sad_num) = prm_nit
                         AND a.fis_gerencia LIKE prm_gerencia
                         AND TRUNC (a.fis_fec_asignacion) BETWEEN TO_DATE (
                                                                      prm_fec_ini,
                                                                      'dd/mm/yyyy')
                                                              AND  TO_DATE (
                                                                       prm_fec_fin,
                                                                       'dd/mm/yyyy')
                UNION
                SELECT   DISTINCT
                         TO_NUMBER (a.fis_gestion) gestion,
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
                         TO_CHAR (a.fis_fec_registro, 'dd/mm/yyyy')
                             fecha_orden_control,
                         s.key_cuo aduana,
                         nomadu (s.key_cuo) "DESC ADUANA",
                            --A.sad_reg_year||'/'||A.fis_key_cuo||'-'||A.sad_reg_serial||'-'||A.sad_reg_nber "TRA_FIS",
                            s.sad_reg_year
                         || '/'
                         || s.key_cuo
                         || '/'
                         || s.sad_reg_serial
                         || '-'
                         || s.sad_reg_nber
                             "TRAMITE",
                         NVL (
                             DECODE (spy1.sad_clr,
                                     0, 'VERDE',
                                     1, 'AZUL',
                                     2, 'AMARILLO',
                                     3, 'ROJO',
                                     '-'),
                             '-')
                             "CANAL",
                         numid (s.sad_consignee,
                                s.key_year,
                                s.key_cuo,
                                s.key_dec,
                                s.key_nber,
                                s.sad_num)
                             "DOC IMP",
                         NVL (nomimp (s.sad_consignee,
                                      s.key_year,
                                      s.key_cuo,
                                      s.key_dec,
                                      s.key_nber,
                                      s.sad_num), '-')
                             "IMPORTADOR",
                         NVL (s.key_dec, '&nbsp;') "DOC_DECL",
                         NVL (nomage (s.key_dec,
                                      s.key_year,
                                      s.key_cuo,
                                      s.key_dec,
                                      s.key_nber,
                                      s.sad_num), '-')
                             "DECLARANTE",
                         NVL (dirprov (s.sad_exporter,
                                       s.key_year,
                                       s.key_cuo,
                                       s.key_dec,
                                       s.key_nber,
                                       s.sad_num), '-')
                             "DIREC PROVEEDOR",
                         NVL (nomprov (s.sad_exporter,
                                       s.key_year,
                                       s.key_cuo,
                                       s.key_dec,
                                       s.key_nber,
                                       s.sad_num), '-')
                             "PROVEEDOR",
                         NVL (a.fis_fob_inicial, 0) fob_funcion,
                         /*fob_cabecera (s.key_year,
                                       s.key_cuo,
                                       s.key_dec,
                                       s.key_nber,
                                       0)
                             fob_funcion,*/
                         NVL (
                             (SELECT   SUM (saditm_tax_amount)
                                FROM   ops$asy.sad_tax st
                               WHERE       s.key_year = st.key_year
                                       AND s.key_cuo = st.key_cuo
                                       AND s.key_dec = st.key_dec
                                       AND s.key_nber = st.key_nber
                                       AND st.saditm_tax_code = 'GA'
                                       AND st.saditm_tax_mop = '1'
                                       AND st.sad_num = '0'),
                             0)
                             ga,
                         NVL (
                             (SELECT   SUM (saditm_tax_amount)
                                FROM   ops$asy.sad_tax st
                               WHERE       s.key_year = st.key_year
                                       AND s.key_cuo = st.key_cuo
                                       AND s.key_dec = st.key_dec
                                       AND s.key_nber = st.key_nber
                                       AND st.saditm_tax_code = 'IVA'
                                       AND st.sad_num = '0'),
                             0)
                             iva,
                         NVL (
                             (SELECT   SUM (saditm_tax_amount)
                                FROM   sad_tax st
                               WHERE       s.key_year = st.key_year
                                       AND s.key_cuo = st.key_cuo
                                       AND s.key_dec = st.key_dec
                                       AND s.key_nber = st.key_nber
                                       AND st.saditm_tax_code = 'ICE'
                                       AND st.sad_num = '0'),
                             0)
                             ice,
                         NVL (
                             (SELECT   SUM (saditm_tax_amount)
                                FROM   sad_tax st
                               WHERE       s.key_year = st.key_year
                                       AND s.key_cuo = st.key_cuo
                                       AND s.key_dec = st.key_dec
                                       AND s.key_nber = st.key_nber
                                       AND st.saditm_tax_code = 'IHD'
                                       AND st.sad_num = '0'),
                             0)
                             ihd,
                         ----SUMATORIAS DE TRIBUTOS


                         NVL (
                             (SELECT   SUM (saditm_tax_amount)
                                FROM   sad_tax st
                               WHERE       s.key_year = st.key_year
                                       AND s.key_cuo = st.key_cuo
                                       AND s.key_dec = st.key_dec
                                       AND s.key_nber = st.key_nber
                                       AND st.saditm_tax_code = 'GA'
                                       AND st.saditm_tax_mop = '1'
                                       AND st.sad_num = '0'),
                             0)
                         + NVL (
                               (SELECT   SUM (saditm_tax_amount)
                                  FROM   sad_tax st
                                 WHERE       s.key_year = st.key_year
                                         AND s.key_cuo = st.key_cuo
                                         AND s.key_dec = st.key_dec
                                         AND s.key_nber = st.key_nber
                                         AND st.saditm_tax_code = 'IVA'
                                         AND st.sad_num = '0'),
                               0)
                         + NVL (
                               (SELECT   SUM (saditm_tax_amount)
                                  FROM   sad_tax st
                                 WHERE       s.key_year = st.key_year
                                         AND s.key_cuo = st.key_cuo
                                         AND s.key_dec = st.key_dec
                                         AND s.key_nber = st.key_nber
                                         AND st.saditm_tax_code = 'ICE'
                                         AND st.sad_num = '0'),
                               0)
                         + NVL (
                               (SELECT   SUM (saditm_tax_amount)
                                  FROM   sad_tax st
                                 WHERE       s.key_year = st.key_year
                                         AND s.key_cuo = st.key_cuo
                                         AND s.key_dec = st.key_dec
                                         AND s.key_nber = st.key_nber
                                         AND st.saditm_tax_code = 'IHD'
                                         AND st.sad_num = '0'),
                               0)
                             total_tributos,
                         --ASIGNACION CONTROL DIFERIDO
                         NVL (a.fis_fiscalizador, '-') fiscalizador,
                         NVL (a.fis_usuario_asignacion, '-')
                             usuario_asignacion,
                         --NOTIFICACION
                         NVL (TO_CHAR (a.fis_fec_notificacion, 'dd/mm/yyyy'),
                              '-')
                             "FECHA_NOTIFICACION",
                         NVL (a.fis_obs_notificacion, '-')
                             "OBSERVACION_NOTIFICACION",
                         NVL (a.fis_tipo_notificacion, '-')
                             "TIPO_NOTIFICACION",
                         NVL (a.fis_usuario_notificacion, '-')
                             "USUARIO_NOTIFICACION",
                         --RESULTADO CONTROL DIFERIDO
                         NVL (a.fis_fob_final, 0) fob_fiscalizador,
                         NVL (TO_CHAR (a.fis_fec_liquidacion, 'dd/mm/yyyy'),
                              '-')
                             "FECHA_LIQUIDACION",
                         NVL (a.fis_valor_ufv, '-') "VALOR_UFV",
                         NVL (TO_NUMBER (a.fis_tributo_omitido_ga), 0)
                             "TRIBUTO_OMITIDO_GA",
                         NVL (TO_NUMBER (a.fis_tributo_omitido_iva), 0)
                             "TRIBUTO_OMITIDO_IVA",
                         NVL (TO_NUMBER (a.fis_tributo_omitido_ice), 0)
                             "TRIBUTO_OMITIDO_ICE",
                         NVL (TO_NUMBER (a.fis_tributo_omitido_iehd), 0)
                             "TRIBUTO_OMITIDO_IEHD",
                         NVL (
                               TO_NUMBER (a.fis_tributo_omitido_ga)
                             + TO_NUMBER (a.fis_tributo_omitido_iva)
                             + TO_NUMBER (a.fis_tributo_omitido_ice)
                             + TO_NUMBER (a.fis_tributo_omitido_iehd),
                             0)
                             "TOTAL_TRIBUTO_OMITIDO",
                         NVL (TO_NUMBER (a.fis_sancion_omision), 0)
                             sancion_omision,
                         NVL (TO_NUMBER (a.fis_multa_contrava), 0)
                             multa_contravencion,
                         NVL (TO_NUMBER (a.fis_multa_contrabc), 0)
                             "MULTA_CONTRA_CONTRA",
                         NVL (TO_NUMBER (a.fis_multa_contrabd), 0)
                             multa_contrabando_delito,
                         NVL (a.fis_usuario_resultados, '-')
                             usuarios_registrados,
                         --ACEPTACION DE PAGO
                         NVL (TO_CHAR (a.fis_fec_aceptacion, 'dd/mm/yyyy'),
                              '-')
                             fecha_aceptacion_pago,
                         NVL (a.fis_usuario_aceptacion, '-')
                             usuario_aceptacion,
                         --CONCLUSION DEL CONTROL DIFERIDO
                         NVL (a.fis_tipo_doc_con, '-') tipo_doc_conclusion,
                         NVL (a.fis_reg_nro_inf, '-') numero_informe,
                         NVL (TO_CHAR (a.fis_reg_fec_inf, 'dd/mm/yyyy'), '-')
                             "FECHA_INFORME",
                         NVL (a.fis_reg_nro_doc_con, '-')
                             "NRO_DOC_CONCLUSION",
                         NVL (TO_CHAR (a.fis_reg_fec_doc_con, 'dd/mm/yyyy'),
                              '-')
                             "FECHA_DOC_CONCLUSION",
                         NVL (TO_CHAR (a.fis_fec_finalizacion, 'dd/mm/yyyy'),
                              '-')
                             "FECHA_FINALIZACION",
                         NVL (a.fis_usuario_finalizacion, '-')
                             "USUARIO_REGISTRO_FINALIZACION",
                         --OBSERVACIONES ENCONTRADAS
                         DECODE (a.fis_ovalor, 'on', 'X', '-') "VALOR",
                         DECODE (a.fis_opartida, 'on', 'X', '-') "PARTIDA",
                         DECODE (a.fis_oorigen, 'on', 'X', '-') "ORIGEN",
                         DECODE (a.fis_osinobs, 'on', 'X', '-')
                             "SIN_OBSERVACION",
                         --OBSERVACIONES EN CONTRAVENCIONES ENCONTRADAS
                         DECODE (a.fis_comision, 'on', 'X', '-')
                             "OMISION_PAGO",
                         DECODE (a.fis_ccondel, 'on', 'X', '-')
                             "CONTRABANDO_DELITO",
                         DECODE (a.fis_cconcon, 'on', 'X', '-')
                             "CONTRABANDO_CONTRAVENCIONAL",
                         DECODE (a.fis_cconadu, 'on', 'X', '-')
                             "CONTRAVENCION_ADUANERA",
                         --NOTIFICACION DEL DOC DE CONCLUSION AL OPERADOR
                         NVL (TO_CHAR (a.fis_reg_fec_not_doc, 'dd/mm/yyyy'),
                              '-')
                             fecha_notificacion_conclusion,
                         NVL (a.fis_reg_tip_not_doc, '-')
                             tipo_notificacion_conclusion,
                         NVL (a.fis_usuario_not_doc_con, '-')
                             usuario_registro_notificacion,
                         --ENVIO A LA UNIDAD LEGAL
                         NVL (
                             TO_CHAR (a.fis_reg_fec_env_legal, 'dd/mm/yyyy'),
                             '-')
                             "FECHA_ENVIO",
                         NVL (a.fis_reg_nro_env_legal, '-')
                             "NRO_DOC_REMISION",
                         NVL (a.fis_usuario_env_legal, '-')
                             "USUARIO_UNIDAD_LEGAL",
                         --ESTADO
                         fis_estado "ESTADO",
                         --valores
                         NVL (
                             sicodif_ga (a.fis_gestion,
                                         a.fis_gerencia,
                                         a.fis_nro_control),
                             0)
                             ga_recuperado,
                         NVL (
                             sicodif_iva (a.fis_gestion,
                                          a.fis_gerencia,
                                          a.fis_nro_control),
                             0)
                             iva_recuperado,
                         NVL (
                             sicodif_ice (a.fis_gestion,
                                          a.fis_gerencia,
                                          a.fis_nro_control),
                             0)
                             ice_recuperado,
                         NVL (
                             sicodif_ihd (a.fis_gestion,
                                          a.fis_gerencia,
                                          a.fis_nro_control),
                             0)
                             ihd_recuperado,
                         NVL (
                             sicodif_ga (a.fis_gestion,
                                         a.fis_gerencia,
                                         a.fis_nro_control),
                             0)
                         + NVL (
                               sicodif_iva (a.fis_gestion,
                                            a.fis_gerencia,
                                            a.fis_nro_control),
                               0)
                         + NVL (
                               sicodif_ice (a.fis_gestion,
                                            a.fis_gerencia,
                                            a.fis_nro_control),
                               0)
                         + NVL (
                               sicodif_ihd (a.fis_gestion,
                                            a.fis_gerencia,
                                            a.fis_nro_control),
                               0)
                             total_tributo,
                         NVL (
                             sicodif_sancionop (a.fis_gestion,
                                                a.fis_gerencia,
                                                a.fis_nro_control),
                             0)
                             sancionop_recuperado,
                         --MULTA CONTRAVENCIONAL ADUANERA
                         NVL (
                             sicodif_contra_adu (a.fis_gestion,
                                                 a.fis_gerencia,
                                                 a.fis_nro_control),
                             0)
                             sancion_contra_adu,
                         --MULTA CONTRABANDO CONTRAVENCIONAL
                         --FALTA
                         NVL (
                             sicodif_contra_contravencional (
                                 a.fis_gestion,
                                 a.fis_gerencia,
                                 a.fis_nro_control),
                             0)
                             sancion_contra_contravencional,
                         --sicodif_USUARIO(a.fis_gestion,a.fis_gerencia,a.fis_nro_control) USUARIOS,

                         NVL (a.fis_usuario_resultados, '-'),
                         fis_origen_control control_origen,
                         --TO_DATE (a.fis_fec_registro, 'DD/MM/yyyy') FECHA_CONTROL
                         --to_date(a.fis_fec_registro,'dd/mm/yyyy')
                         NVL (TO_CHAR (a.fis_fec_registro, 'DD/MM/YYYY'),
                              '-')
                             fecha_control,
                         --OTROS DATOS
                         CASE
                             WHEN sicodif_25 (s.key_year,
                                              s.key_cuo,
                                              s.key_dec,
                                              s.key_nber) IS NOT NULL
                             THEN
                                 sicodif_25 (s.key_year,
                                             s.key_cuo,
                                             s.key_dec,
                                             s.key_nber)
                             ELSE
                                 '-'
                         END
                             AS pase_salida,
                         mercancia (s.key_year,
                                    s.key_cuo,
                                    s.key_dec,
                                    s.key_nber)
                             mercancias,
                         NVL (crt_cabecera (s.key_year,
                                            s.key_cuo,
                                            s.key_dec,
                                            s.key_nber), 'ALEATORIO')
                             criterio_nivel_cab,
                         --MULTA CONTRABANDO DELITO
                         --FALTA
                         NVL (
                             sicodif_contra_delito (a.fis_gestion,
                                                    a.fis_gerencia,
                                                    a.fis_nro_control),
                             0)
                             sancion_contra_delito
                  FROM   sicodif.cd_fiscalizacion a, sad_spy spy1, sad_gen s
                 WHERE       s.sad_flw = '1'
                         AND s.sad_asmt_serial IS NOT NULL
                         AND s.lst_ope = 'U'
                         AND s.sad_num = '0'
                         AND fis_numver = '0'
                         AND fis_lst_ope = 'U'
                         AND fis_estado <> 'REGULARIZACION'
                         AND s.key_year = spy1.key_year(+)
                         AND s.key_cuo = spy1.key_cuo(+)
                         AND s.key_dec = spy1.key_dec(+)
                         AND s.key_nber = spy1.key_nber(+)
                         AND spy1.spy_sta(+) = '10'
                         AND spy1.spy_act(+) = '24'
                         AND s.key_year = a.fis_key_year
                         AND s.key_cuo = a.fis_key_cuo
                         AND s.key_dec = a.fis_key_dec
                         AND s.key_nber = a.fis_key_nber
                         AND numid (s.sad_consignee,
                                    s.key_year,
                                    s.key_cuo,
                                    s.key_dec,
                                    s.key_nber,
                                    s.sad_num) = prm_nit
                         AND a.fis_gerencia LIKE prm_gerencia
                         AND TRUNC (a.fis_fec_asignacion) BETWEEN TO_DATE (
                                                                      prm_fec_ini,
                                                                      'dd/mm/yyyy')
                                                              AND  TO_DATE (
                                                                       prm_fec_fin,
                                                                       'dd/mm/yyyy');
        END IF;


        RETURN res;
    END;

    FUNCTION reportebasedui (prm_gestion   IN     VARCHAR2,
                             prm_aduana    IN     VARCHAR2,
                             prm_numero    IN     VARCHAR2,
                             ct               OUT cursortype)
        RETURN VARCHAR2
    IS
        res    VARCHAR2 (50) := 'CORRECTO';
        cont   NUMBER (10);
    BEGIN
        OPEN ct FOR
            SELECT   DISTINCT
                     TO_NUMBER (a.fis_gestion) gestion,
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
                     TO_CHAR (a.fis_fec_registro, 'dd/mm/yyyy')
                         fecha_orden_control,
                     s.key_cuo aduana,
                     nomadu (s.key_cuo) "DESC ADUANA",
                        --A.sad_reg_year||'/'||A.fis_key_cuo||'-'||A.sad_reg_serial||'-'||A.sad_reg_nber "TRA_FIS",
                        s.sad_reg_year
                     || '/'
                     || s.key_cuo
                     || '/'
                     || s.sad_reg_serial
                     || '-'
                     || s.sad_reg_nber
                         "TRAMITE",
                     NVL (
                         DECODE (spy1.sad_clr,
                                 0, 'VERDE',
                                 1, 'AZUL',
                                 2, 'AMARILLO',
                                 3, 'ROJO',
                                 '-'),
                         '-')
                         "CANAL",
                     numid (s.sad_consignee,
                            s.key_year,
                            s.key_cuo,
                            s.key_dec,
                            s.key_nber,
                            s.sad_num)
                         "DOC IMP",
                     NVL (nomimp (s.sad_consignee,
                                  s.key_year,
                                  s.key_cuo,
                                  s.key_dec,
                                  s.key_nber,
                                  s.sad_num), '-')
                         "IMPORTADOR",
                     NVL (s.key_dec, '&nbsp;') "DOC_DECL",
                     NVL (nomage (s.key_dec,
                                  s.key_year,
                                  s.key_cuo,
                                  s.key_dec,
                                  s.key_nber,
                                  s.sad_num), '-')
                         "DECLARANTE",
                     NVL (dirprov (s.sad_exporter,
                                   s.key_year,
                                   s.key_cuo,
                                   s.key_dec,
                                   s.key_nber,
                                   s.sad_num), '-')
                         "DIREC PROVEEDOR",
                     NVL (nomprov (s.sad_exporter,
                                   s.key_year,
                                   s.key_cuo,
                                   s.key_dec,
                                   s.key_nber,
                                   s.sad_num), '-')
                         "PROVEEDOR",
                     NVL (a.fis_fob_inicial, 0) fob_funcion,
                     /*fob_cabecera (s.key_year,
                                   s.key_cuo,
                                   s.key_dec,
                                   s.key_nber,
                                   0)
                         fob_funcion,*/
                     NVL (
                         (SELECT   SUM (saditm_tax_amount)
                            FROM   ops$asy.sad_tax st
                           WHERE       s.key_year = st.key_year
                                   AND s.key_cuo = st.key_cuo
                                   AND st.key_dec IS NULL
                                   AND s.key_nber = st.key_nber
                                   AND st.saditm_tax_code = 'GA'
                                   AND st.saditm_tax_mop = '1'
                                   AND st.sad_num = '0'),
                         0)
                         ga,
                     NVL (
                         (SELECT   SUM (saditm_tax_amount)
                            FROM   ops$asy.sad_tax st
                           WHERE       s.key_year = st.key_year
                                   AND s.key_cuo = st.key_cuo
                                   AND st.key_dec IS NULL
                                   AND s.key_nber = st.key_nber
                                   AND st.saditm_tax_code = 'IVA'
                                   AND st.sad_num = '0'),
                         0)
                         iva,
                     NVL (
                         (SELECT   SUM (saditm_tax_amount)
                            FROM   sad_tax st
                           WHERE       s.key_year = st.key_year
                                   AND s.key_cuo = st.key_cuo
                                   AND st.key_dec IS NULL
                                   AND s.key_nber = st.key_nber
                                   AND st.saditm_tax_code = 'ICE'
                                   AND st.sad_num = '0'),
                         0)
                         ice,
                     NVL (
                         (SELECT   SUM (saditm_tax_amount)
                            FROM   sad_tax st
                           WHERE       s.key_year = st.key_year
                                   AND s.key_cuo = st.key_cuo
                                   AND st.key_dec IS NULL
                                   AND s.key_nber = st.key_nber
                                   AND st.saditm_tax_code = 'IHD'
                                   AND st.sad_num = '0'),
                         0)
                         ihd,
                     ----SUMATORIAS DE TRIBUTOS


                     NVL (
                         (SELECT   SUM (saditm_tax_amount)
                            FROM   sad_tax st
                           WHERE       s.key_year = st.key_year
                                   AND s.key_cuo = st.key_cuo
                                   AND st.key_dec IS NULL
                                   AND s.key_nber = st.key_nber
                                   AND st.saditm_tax_code = 'GA'
                                   AND st.saditm_tax_mop = '1'
                                   AND st.sad_num = '0'),
                         0)
                     + NVL (
                           (SELECT   SUM (saditm_tax_amount)
                              FROM   sad_tax st
                             WHERE       s.key_year = st.key_year
                                     AND s.key_cuo = st.key_cuo
                                     AND st.key_dec IS NULL
                                     AND s.key_nber = st.key_nber
                                     AND st.saditm_tax_code = 'IVA'
                                     AND st.sad_num = '0'),
                           0)
                     + NVL (
                           (SELECT   SUM (saditm_tax_amount)
                              FROM   sad_tax st
                             WHERE       s.key_year = st.key_year
                                     AND s.key_cuo = st.key_cuo
                                     AND st.key_dec IS NULL
                                     AND s.key_nber = st.key_nber
                                     AND st.saditm_tax_code = 'ICE'
                                     AND st.sad_num = '0'),
                           0)
                     + NVL (
                           (SELECT   SUM (saditm_tax_amount)
                              FROM   sad_tax st
                             WHERE       s.key_year = st.key_year
                                     AND s.key_cuo = st.key_cuo
                                     AND st.key_dec IS NULL
                                     AND s.key_nber = st.key_nber
                                     AND st.saditm_tax_code = 'IHD'
                                     AND st.sad_num = '0'),
                           0)
                         total_tributos,
                     --ASIGNACION CONTROL DIFERIDO
                     NVL (a.fis_fiscalizador, '-') fiscalizador,
                     NVL (a.fis_usuario_asignacion, '-') usuario_asignacion,
                     --NOTIFICACION
                     NVL (TO_CHAR (a.fis_fec_notificacion, 'dd/mm/yyyy'),
                          '-')
                         "FECHA_NOTIFICACION",
                     NVL (a.fis_obs_notificacion, '-')
                         "OBSERVACION_NOTIFICACION",
                     NVL (a.fis_tipo_notificacion, '-') "TIPO_NOTIFICACION",
                     NVL (a.fis_usuario_notificacion, '-')
                         "USUARIO_NOTIFICACION",
                     --RESULTADO CONTROL DIFERIDO
                     NVL (a.fis_fob_final, 0) fob_fiscalizador,
                     NVL (TO_CHAR (a.fis_fec_liquidacion, 'dd/mm/yyyy'), '-')
                         "FECHA_LIQUIDACION",
                     NVL (a.fis_valor_ufv, '-') "VALOR_UFV",
                     NVL (TO_NUMBER (a.fis_tributo_omitido_ga), 0)
                         "TRIBUTO_OMITIDO_GA",
                     NVL (TO_NUMBER (a.fis_tributo_omitido_iva), 0)
                         "TRIBUTO_OMITIDO_IVA",
                     NVL (TO_NUMBER (a.fis_tributo_omitido_ice), 0)
                         "TRIBUTO_OMITIDO_ICE",
                     NVL (TO_NUMBER (a.fis_tributo_omitido_iehd), 0)
                         "TRIBUTO_OMITIDO_IEHD",
                     NVL (
                           TO_NUMBER (a.fis_tributo_omitido_ga)
                         + TO_NUMBER (a.fis_tributo_omitido_iva)
                         + TO_NUMBER (a.fis_tributo_omitido_ice)
                         + TO_NUMBER (a.fis_tributo_omitido_iehd),
                         0)
                         "TOTAL_TRIBUTO_OMITIDO",
                     NVL (TO_NUMBER (a.fis_sancion_omision), 0)
                         sancion_omision,
                     NVL (TO_NUMBER (a.fis_multa_contrava), 0)
                         multa_contravencion,
                     NVL (TO_NUMBER (a.fis_multa_contrabc), 0)
                         "MULTA_CONTRA_CONTRA",
                     NVL (TO_NUMBER (a.fis_multa_contrabd), 0)
                         multa_contrabando_delito,
                     NVL (a.fis_usuario_resultados, '-') usuarios_registrados,
                     --ACEPTACION DE PAGO
                     NVL (TO_CHAR (a.fis_fec_aceptacion, 'dd/mm/yyyy'), '-')
                         fecha_aceptacion_pago,
                     NVL (a.fis_usuario_aceptacion, '-') usuario_aceptacion,
                     --CONCLUSION DEL CONTROL DIFERIDO
                     NVL (a.fis_tipo_doc_con, '-') tipo_doc_conclusion,
                     NVL (a.fis_reg_nro_inf, '-') numero_informe,
                     NVL (TO_CHAR (a.fis_reg_fec_inf, 'dd/mm/yyyy'), '-')
                         "FECHA_INFORME",
                     NVL (a.fis_reg_nro_doc_con, '-') "NRO_DOC_CONCLUSION",
                     NVL (TO_CHAR (a.fis_reg_fec_doc_con, 'dd/mm/yyyy'), '-')
                         "FECHA_DOC_CONCLUSION",
                     NVL (TO_CHAR (a.fis_fec_finalizacion, 'dd/mm/yyyy'),
                          '-')
                         "FECHA_FINALIZACION",
                     NVL (a.fis_usuario_finalizacion, '-')
                         "USUARIO_REGISTRO_FINALIZACION",
                     --OBSERVACIONES ENCONTRADAS
                     DECODE (a.fis_ovalor, 'on', 'X', '-') "VALOR",
                     DECODE (a.fis_opartida, 'on', 'X', '-') "PARTIDA",
                     DECODE (a.fis_oorigen, 'on', 'X', '-') "ORIGEN",
                     DECODE (a.fis_osinobs, 'on', 'X', '-') "SIN_OBSERVACION",
                     --OBSERVACIONES EN CONTRAVENCIONES ENCONTRADAS
                     DECODE (a.fis_comision, 'on', 'X', '-') "OMISION_PAGO",
                     DECODE (a.fis_ccondel, 'on', 'X', '-')
                         "CONTRABANDO_DELITO",
                     DECODE (a.fis_cconcon, 'on', 'X', '-')
                         "CONTRABANDO_CONTRAVENCIONAL",
                     DECODE (a.fis_cconadu, 'on', 'X', '-')
                         "CONTRAVENCION_ADUANERA",
                     --NOTIFICACION DEL DOC DE CONCLUSION AL OPERADOR
                     NVL (TO_CHAR (a.fis_reg_fec_not_doc, 'dd/mm/yyyy'), '-')
                         fecha_notificacion_conclusion,
                     NVL (a.fis_reg_tip_not_doc, '-')
                         tipo_notificacion_conclusion,
                     NVL (a.fis_usuario_not_doc_con, '-')
                         usuario_registro_notificacion,
                     --ENVIO A LA UNIDAD LEGAL
                     NVL (TO_CHAR (a.fis_reg_fec_env_legal, 'dd/mm/yyyy'),
                          '-')
                         "FECHA_ENVIO",
                     NVL (a.fis_reg_nro_env_legal, '-') "NRO_DOC_REMISION",
                     NVL (a.fis_usuario_env_legal, '-')
                         "USUARIO_UNIDAD_LEGAL",
                     --ESTADO
                     fis_estado "ESTADO",
                     --valores
                     NVL (
                         sicodif_ga (a.fis_gestion,
                                     a.fis_gerencia,
                                     a.fis_nro_control),
                         0)
                         ga_recuperado,
                     NVL (
                         sicodif_iva (a.fis_gestion,
                                      a.fis_gerencia,
                                      a.fis_nro_control),
                         0)
                         iva_recuperado,
                     NVL (
                         sicodif_ice (a.fis_gestion,
                                      a.fis_gerencia,
                                      a.fis_nro_control),
                         0)
                         ice_recuperado,
                     NVL (
                         sicodif_ihd (a.fis_gestion,
                                      a.fis_gerencia,
                                      a.fis_nro_control),
                         0)
                         ihd_recuperado,
                     NVL (
                         sicodif_ga (a.fis_gestion,
                                     a.fis_gerencia,
                                     a.fis_nro_control),
                         0)
                     + NVL (
                           sicodif_iva (a.fis_gestion,
                                        a.fis_gerencia,
                                        a.fis_nro_control),
                           0)
                     + NVL (
                           sicodif_ice (a.fis_gestion,
                                        a.fis_gerencia,
                                        a.fis_nro_control),
                           0)
                     + NVL (
                           sicodif_ihd (a.fis_gestion,
                                        a.fis_gerencia,
                                        a.fis_nro_control),
                           0)
                         total_tributo,
                     NVL (
                         sicodif_sancionop (a.fis_gestion,
                                            a.fis_gerencia,
                                            a.fis_nro_control),
                         0)
                         sancionop_recuperado,
                     --MULTA CONTRAVENCIONAL ADUANERA
                     NVL (
                         sicodif_contra_adu (a.fis_gestion,
                                             a.fis_gerencia,
                                             a.fis_nro_control),
                         0)
                         sancion_contra_adu,
                     --MULTA CONTRABANDO CONTRAVENCIONAL
                     --FALTA
                     NVL (
                         sicodif_contra_contravencional (a.fis_gestion,
                                                         a.fis_gerencia,
                                                         a.fis_nro_control),
                         0)
                         sancion_contra_contravencional,
                     --sicodif_USUARIO(a.fis_gestion,a.fis_gerencia,a.fis_nro_control) USUARIOS,

                     NVL (a.fis_usuario_resultados, '-'),
                     fis_origen_control control_origen,
                     --TO_DATE (a.fis_fec_registro, 'DD/MM/yyyy') FECHA_CONTROL
                     --to_date(a.fis_fec_registro,'dd/mm/yyyy')
                     NVL (TO_CHAR (a.fis_fec_registro, 'DD/MM/YYYY'), '-')
                         fecha_control,
                     --OTROS DATOS
                     CASE
                         WHEN sicodif_25 (s.key_year,
                                          s.key_cuo,
                                          s.key_dec,
                                          s.key_nber) IS NOT NULL
                         THEN
                             sicodif_25 (s.key_year,
                                         s.key_cuo,
                                         s.key_dec,
                                         s.key_nber)
                         ELSE
                             '-'
                     END
                         AS pase_salida,
                     mercancia (s.key_year,
                                s.key_cuo,
                                s.key_dec,
                                s.key_nber)
                         mercancias,
                     NVL (crt_cabecera (s.key_year,
                                        s.key_cuo,
                                        s.key_dec,
                                        s.key_nber), 'ALEATORIO')
                         criterio_nivel_cab,
                     --MULTA CONTRABANDO DELITO
                     --FALTA
                     NVL (
                         sicodif_contra_delito (a.fis_gestion,
                                                a.fis_gerencia,
                                                a.fis_nro_control),
                         0)
                         sancion_contra_delito
              FROM   sicodif.cd_fiscalizacion a, sad_spy spy1, sad_gen s
             WHERE       s.sad_flw = '1'
                     AND s.sad_asmt_serial IS NOT NULL
                     AND s.lst_ope = 'U'
                     AND s.sad_num = '0'
                     AND fis_numver = '0'
                     AND fis_lst_ope = 'U'
                     AND fis_estado <> 'REGULARIZACION'
                     AND s.key_year = spy1.key_year(+)
                     AND s.key_cuo = spy1.key_cuo(+)
                     AND s.key_dec IS NULL
                     AND spy1.key_dec(+) IS NULL
                     AND s.key_nber = spy1.key_nber(+)
                     AND spy1.spy_sta(+) = '10'
                     AND spy1.spy_act(+) = '24'
                     AND s.key_year = a.fis_key_year
                     AND s.key_cuo = a.fis_key_cuo
                     AND a.fis_key_dec IS NULL
                     AND s.key_nber = a.fis_key_nber
                     AND a.sad_reg_year = prm_gestion
                     AND a.fis_key_cuo = prm_aduana
                     AND a.sad_reg_serial = 'C'
                     AND a.sad_reg_nber = prm_numero
            UNION
            SELECT   DISTINCT
                     TO_NUMBER (a.fis_gestion) gestion,
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
                     TO_CHAR (a.fis_fec_registro, 'dd/mm/yyyy')
                         fecha_orden_control,
                     s.key_cuo aduana,
                     nomadu (s.key_cuo) "DESC ADUANA",
                        --A.sad_reg_year||'/'||A.fis_key_cuo||'-'||A.sad_reg_serial||'-'||A.sad_reg_nber "TRA_FIS",
                        s.sad_reg_year
                     || '/'
                     || s.key_cuo
                     || '/'
                     || s.sad_reg_serial
                     || '-'
                     || s.sad_reg_nber
                         "TRAMITE",
                     NVL (
                         DECODE (spy1.sad_clr,
                                 0, 'VERDE',
                                 1, 'AZUL',
                                 2, 'AMARILLO',
                                 3, 'ROJO',
                                 '-'),
                         '-')
                         "CANAL",
                     numid (s.sad_consignee,
                            s.key_year,
                            s.key_cuo,
                            s.key_dec,
                            s.key_nber,
                            s.sad_num)
                         "DOC IMP",
                     NVL (nomimp (s.sad_consignee,
                                  s.key_year,
                                  s.key_cuo,
                                  s.key_dec,
                                  s.key_nber,
                                  s.sad_num), '-')
                         "IMPORTADOR",
                     NVL (s.key_dec, '&nbsp;') "DOC_DECL",
                     NVL (nomage (s.key_dec,
                                  s.key_year,
                                  s.key_cuo,
                                  s.key_dec,
                                  s.key_nber,
                                  s.sad_num), '-')
                         "DECLARANTE",
                     NVL (dirprov (s.sad_exporter,
                                   s.key_year,
                                   s.key_cuo,
                                   s.key_dec,
                                   s.key_nber,
                                   s.sad_num), '-')
                         "DIREC PROVEEDOR",
                     NVL (nomprov (s.sad_exporter,
                                   s.key_year,
                                   s.key_cuo,
                                   s.key_dec,
                                   s.key_nber,
                                   s.sad_num), '-')
                         "PROVEEDOR",
                     NVL (a.fis_fob_inicial, 0) fob_funcion,
                     /*fob_cabecera (s.key_year,
                                   s.key_cuo,
                                   s.key_dec,
                                   s.key_nber,
                                   0)
                         fob_funcion,*/
                     NVL (
                         (SELECT   SUM (saditm_tax_amount)
                            FROM   ops$asy.sad_tax st
                           WHERE       s.key_year = st.key_year
                                   AND s.key_cuo = st.key_cuo
                                   AND s.key_dec = st.key_dec
                                   AND s.key_nber = st.key_nber
                                   AND st.saditm_tax_code = 'GA'
                                   AND st.saditm_tax_mop = '1'
                                   AND st.sad_num = '0'),
                         0)
                         ga,
                     NVL (
                         (SELECT   SUM (saditm_tax_amount)
                            FROM   ops$asy.sad_tax st
                           WHERE       s.key_year = st.key_year
                                   AND s.key_cuo = st.key_cuo
                                   AND s.key_dec = st.key_dec
                                   AND s.key_nber = st.key_nber
                                   AND st.saditm_tax_code = 'IVA'
                                   AND st.sad_num = '0'),
                         0)
                         iva,
                     NVL (
                         (SELECT   SUM (saditm_tax_amount)
                            FROM   sad_tax st
                           WHERE       s.key_year = st.key_year
                                   AND s.key_cuo = st.key_cuo
                                   AND s.key_dec = st.key_dec
                                   AND s.key_nber = st.key_nber
                                   AND st.saditm_tax_code = 'ICE'
                                   AND st.sad_num = '0'),
                         0)
                         ice,
                     NVL (
                         (SELECT   SUM (saditm_tax_amount)
                            FROM   sad_tax st
                           WHERE       s.key_year = st.key_year
                                   AND s.key_cuo = st.key_cuo
                                   AND s.key_dec = st.key_dec
                                   AND s.key_nber = st.key_nber
                                   AND st.saditm_tax_code = 'IHD'
                                   AND st.sad_num = '0'),
                         0)
                         ihd,
                     ----SUMATORIAS DE TRIBUTOS


                     NVL (
                         (SELECT   SUM (saditm_tax_amount)
                            FROM   sad_tax st
                           WHERE       s.key_year = st.key_year
                                   AND s.key_cuo = st.key_cuo
                                   AND s.key_dec = st.key_dec
                                   AND s.key_nber = st.key_nber
                                   AND st.saditm_tax_code = 'GA'
                                   AND st.saditm_tax_mop = '1'
                                   AND st.sad_num = '0'),
                         0)
                     + NVL (
                           (SELECT   SUM (saditm_tax_amount)
                              FROM   sad_tax st
                             WHERE       s.key_year = st.key_year
                                     AND s.key_cuo = st.key_cuo
                                     AND s.key_dec = st.key_dec
                                     AND s.key_nber = st.key_nber
                                     AND st.saditm_tax_code = 'IVA'
                                     AND st.sad_num = '0'),
                           0)
                     + NVL (
                           (SELECT   SUM (saditm_tax_amount)
                              FROM   sad_tax st
                             WHERE       s.key_year = st.key_year
                                     AND s.key_cuo = st.key_cuo
                                     AND s.key_dec = st.key_dec
                                     AND s.key_nber = st.key_nber
                                     AND st.saditm_tax_code = 'ICE'
                                     AND st.sad_num = '0'),
                           0)
                     + NVL (
                           (SELECT   SUM (saditm_tax_amount)
                              FROM   sad_tax st
                             WHERE       s.key_year = st.key_year
                                     AND s.key_cuo = st.key_cuo
                                     AND s.key_dec = st.key_dec
                                     AND s.key_nber = st.key_nber
                                     AND st.saditm_tax_code = 'IHD'
                                     AND st.sad_num = '0'),
                           0)
                         total_tributos,
                     --ASIGNACION CONTROL DIFERIDO
                     NVL (a.fis_fiscalizador, '-') fiscalizador,
                     NVL (a.fis_usuario_asignacion, '-') usuario_asignacion,
                     --NOTIFICACION
                     NVL (TO_CHAR (a.fis_fec_notificacion, 'dd/mm/yyyy'),
                          '-')
                         "FECHA_NOTIFICACION",
                     NVL (a.fis_obs_notificacion, '-')
                         "OBSERVACION_NOTIFICACION",
                     NVL (a.fis_tipo_notificacion, '-') "TIPO_NOTIFICACION",
                     NVL (a.fis_usuario_notificacion, '-')
                         "USUARIO_NOTIFICACION",
                     --RESULTADO CONTROL DIFERIDO
                     NVL (a.fis_fob_final, 0) fob_fiscalizador,
                     NVL (TO_CHAR (a.fis_fec_liquidacion, 'dd/mm/yyyy'), '-')
                         "FECHA_LIQUIDACION",
                     NVL (a.fis_valor_ufv, '-') "VALOR_UFV",
                     NVL (TO_NUMBER (a.fis_tributo_omitido_ga), 0)
                         "TRIBUTO_OMITIDO_GA",
                     NVL (TO_NUMBER (a.fis_tributo_omitido_iva), 0)
                         "TRIBUTO_OMITIDO_IVA",
                     NVL (TO_NUMBER (a.fis_tributo_omitido_ice), 0)
                         "TRIBUTO_OMITIDO_ICE",
                     NVL (TO_NUMBER (a.fis_tributo_omitido_iehd), 0)
                         "TRIBUTO_OMITIDO_IEHD",
                     NVL (
                           TO_NUMBER (a.fis_tributo_omitido_ga)
                         + TO_NUMBER (a.fis_tributo_omitido_iva)
                         + TO_NUMBER (a.fis_tributo_omitido_ice)
                         + TO_NUMBER (a.fis_tributo_omitido_iehd),
                         0)
                         "TOTAL_TRIBUTO_OMITIDO",
                     NVL (TO_NUMBER (a.fis_sancion_omision), 0)
                         sancion_omision,
                     NVL (TO_NUMBER (a.fis_multa_contrava), 0)
                         multa_contravencion,
                     NVL (TO_NUMBER (a.fis_multa_contrabc), 0)
                         "MULTA_CONTRA_CONTRA",
                     NVL (TO_NUMBER (a.fis_multa_contrabd), 0)
                         multa_contrabando_delito,
                     NVL (a.fis_usuario_resultados, '-') usuarios_registrados,
                     --ACEPTACION DE PAGO
                     NVL (TO_CHAR (a.fis_fec_aceptacion, 'dd/mm/yyyy'), '-')
                         fecha_aceptacion_pago,
                     NVL (a.fis_usuario_aceptacion, '-') usuario_aceptacion,
                     --CONCLUSION DEL CONTROL DIFERIDO
                     NVL (a.fis_tipo_doc_con, '-') tipo_doc_conclusion,
                     NVL (a.fis_reg_nro_inf, '-') numero_informe,
                     NVL (TO_CHAR (a.fis_reg_fec_inf, 'dd/mm/yyyy'), '-')
                         "FECHA_INFORME",
                     NVL (a.fis_reg_nro_doc_con, '-') "NRO_DOC_CONCLUSION",
                     NVL (TO_CHAR (a.fis_reg_fec_doc_con, 'dd/mm/yyyy'), '-')
                         "FECHA_DOC_CONCLUSION",
                     NVL (TO_CHAR (a.fis_fec_finalizacion, 'dd/mm/yyyy'),
                          '-')
                         "FECHA_FINALIZACION",
                     NVL (a.fis_usuario_finalizacion, '-')
                         "USUARIO_REGISTRO_FINALIZACION",
                     --OBSERVACIONES ENCONTRADAS
                     DECODE (a.fis_ovalor, 'on', 'X', '-') "VALOR",
                     DECODE (a.fis_opartida, 'on', 'X', '-') "PARTIDA",
                     DECODE (a.fis_oorigen, 'on', 'X', '-') "ORIGEN",
                     DECODE (a.fis_osinobs, 'on', 'X', '-') "SIN_OBSERVACION",
                     --OBSERVACIONES EN CONTRAVENCIONES ENCONTRADAS
                     DECODE (a.fis_comision, 'on', 'X', '-') "OMISION_PAGO",
                     DECODE (a.fis_ccondel, 'on', 'X', '-')
                         "CONTRABANDO_DELITO",
                     DECODE (a.fis_cconcon, 'on', 'X', '-')
                         "CONTRABANDO_CONTRAVENCIONAL",
                     DECODE (a.fis_cconadu, 'on', 'X', '-')
                         "CONTRAVENCION_ADUANERA",
                     --NOTIFICACION DEL DOC DE CONCLUSION AL OPERADOR
                     NVL (TO_CHAR (a.fis_reg_fec_not_doc, 'dd/mm/yyyy'), '-')
                         fecha_notificacion_conclusion,
                     NVL (a.fis_reg_tip_not_doc, '-')
                         tipo_notificacion_conclusion,
                     NVL (a.fis_usuario_not_doc_con, '-')
                         usuario_registro_notificacion,
                     --ENVIO A LA UNIDAD LEGAL
                     NVL (TO_CHAR (a.fis_reg_fec_env_legal, 'dd/mm/yyyy'),
                          '-')
                         "FECHA_ENVIO",
                     NVL (a.fis_reg_nro_env_legal, '-') "NRO_DOC_REMISION",
                     NVL (a.fis_usuario_env_legal, '-')
                         "USUARIO_UNIDAD_LEGAL",
                     --ESTADO
                     fis_estado "ESTADO",
                     --valores
                     NVL (
                         sicodif_ga (a.fis_gestion,
                                     a.fis_gerencia,
                                     a.fis_nro_control),
                         0)
                         ga_recuperado,
                     NVL (
                         sicodif_iva (a.fis_gestion,
                                      a.fis_gerencia,
                                      a.fis_nro_control),
                         0)
                         iva_recuperado,
                     NVL (
                         sicodif_ice (a.fis_gestion,
                                      a.fis_gerencia,
                                      a.fis_nro_control),
                         0)
                         ice_recuperado,
                     NVL (
                         sicodif_ihd (a.fis_gestion,
                                      a.fis_gerencia,
                                      a.fis_nro_control),
                         0)
                         ihd_recuperado,
                     NVL (
                         sicodif_ga (a.fis_gestion,
                                     a.fis_gerencia,
                                     a.fis_nro_control),
                         0)
                     + NVL (
                           sicodif_iva (a.fis_gestion,
                                        a.fis_gerencia,
                                        a.fis_nro_control),
                           0)
                     + NVL (
                           sicodif_ice (a.fis_gestion,
                                        a.fis_gerencia,
                                        a.fis_nro_control),
                           0)
                     + NVL (
                           sicodif_ihd (a.fis_gestion,
                                        a.fis_gerencia,
                                        a.fis_nro_control),
                           0)
                         total_tributo,
                     NVL (
                         sicodif_sancionop (a.fis_gestion,
                                            a.fis_gerencia,
                                            a.fis_nro_control),
                         0)
                         sancionop_recuperado,
                     --MULTA CONTRAVENCIONAL ADUANERA
                     NVL (
                         sicodif_contra_adu (a.fis_gestion,
                                             a.fis_gerencia,
                                             a.fis_nro_control),
                         0)
                         sancion_contra_adu,
                     --MULTA CONTRABANDO CONTRAVENCIONAL
                     --FALTA
                     NVL (
                         sicodif_contra_contravencional (a.fis_gestion,
                                                         a.fis_gerencia,
                                                         a.fis_nro_control),
                         0)
                         sancion_contra_contravencional,
                     --sicodif_USUARIO(a.fis_gestion,a.fis_gerencia,a.fis_nro_control) USUARIOS,

                     NVL (a.fis_usuario_resultados, '-'),
                     fis_origen_control control_origen,
                     --TO_DATE (a.fis_fec_registro, 'DD/MM/yyyy') FECHA_CONTROL
                     --to_date(a.fis_fec_registro,'dd/mm/yyyy')
                     NVL (TO_CHAR (a.fis_fec_registro, 'DD/MM/YYYY'), '-')
                         fecha_control,
                     --OTROS DATOS
                     CASE
                         WHEN sicodif_25 (s.key_year,
                                          s.key_cuo,
                                          s.key_dec,
                                          s.key_nber) IS NOT NULL
                         THEN
                             sicodif_25 (s.key_year,
                                         s.key_cuo,
                                         s.key_dec,
                                         s.key_nber)
                         ELSE
                             '-'
                     END
                         AS pase_salida,
                     mercancia (s.key_year,
                                s.key_cuo,
                                s.key_dec,
                                s.key_nber)
                         mercancias,
                     NVL (crt_cabecera (s.key_year,
                                        s.key_cuo,
                                        s.key_dec,
                                        s.key_nber), 'ALEATORIO')
                         criterio_nivel_cab,
                     --MULTA CONTRABANDO DELITO
                     --FALTA
                     NVL (
                         sicodif_contra_delito (a.fis_gestion,
                                                a.fis_gerencia,
                                                a.fis_nro_control),
                         0)
                         sancion_contra_delito
              FROM   sicodif.cd_fiscalizacion a, sad_spy spy1, sad_gen s
             WHERE       s.sad_flw = '1'
                     AND s.sad_asmt_serial IS NOT NULL
                     AND s.lst_ope = 'U'
                     AND s.sad_num = '0'
                     AND fis_numver = '0'
                     AND fis_lst_ope = 'U'
                     AND fis_estado <> 'REGULARIZACION'
                     AND s.key_year = spy1.key_year(+)
                     AND s.key_cuo = spy1.key_cuo(+)
                     AND s.key_dec = spy1.key_dec(+)
                     AND s.key_nber = spy1.key_nber(+)
                     AND spy1.spy_sta(+) = '10'
                     AND spy1.spy_act(+) = '24'
                     AND s.key_year = a.fis_key_year
                     AND s.key_cuo = a.fis_key_cuo
                     AND s.key_dec = a.fis_key_dec
                     AND s.key_nber = a.fis_key_nber
                     AND a.sad_reg_year = prm_gestion
                     AND a.fis_key_cuo = prm_aduana
                     AND a.sad_reg_serial = 'C'
                     AND a.sad_reg_nber = prm_numero;

        /*END IF;*/

        RETURN res;
    END;

    FUNCTION sicodif_25 (anio        IN sad_spy.key_year%TYPE,
                         cod_adu     IN sad_spy.key_cuo%TYPE,
                         w_key_dec   IN sad_spy.key_dec%TYPE,
                         nuber       IN sad_spy.key_nber%TYPE)
        RETURN VARCHAR2
    IS
        valor1   VARCHAR2 (30);
        valor2   VARCHAR2 (10);
        cont     NUMBER;
    BEGIN
        valor1 := NULL;
        cont := 1;

        IF w_key_dec IS NULL
        THEN
            FOR c1
            IN (SELECT   upd_dat, upd_hor
                  FROM   sad_spy spy
                 WHERE       spy.key_year = anio
                         AND spy.key_cuo = cod_adu
                         AND spy.key_dec IS NULL
                         AND spy.key_nber = nuber
                         --AND spy.spy_sta='10'
                         AND spy.spy_act = '25')
            LOOP
                IF cont = 1
                THEN
                    valor1 := TO_CHAR (c1.upd_dat, 'dd/mm/yyyy');
                END IF;

                cont := cont + 1;
            END LOOP;
        ELSE
            FOR c1
            IN (SELECT   upd_dat, upd_hor
                  FROM   sad_spy spy
                 WHERE       spy.key_year = anio
                         AND spy.key_cuo = cod_adu
                         AND spy.key_dec = w_key_dec
                         AND spy.key_nber = nuber
                         --AND spy.spy_sta='10'
                         AND spy.spy_act = '25')
            LOOP
                IF cont = 1
                THEN
                    valor1 := TO_CHAR (c1.upd_dat, 'dd/mm/yyyy');
                END IF;

                cont := cont + 1;
            END LOOP;
        END IF;

        RETURN valor1;
    EXCEPTION
        WHEN NO_DATA_FOUND
        THEN
            IF (valor1 IS NULL)
            THEN
                RETURN (NULL);
            END IF;
        WHEN TOO_MANY_ROWS
        THEN
            RETURN ('MAS DE UNO');
        WHEN OTHERS
        THEN
            RETURN ('OTRO ERROR');
    END;

    FUNCTION sicodif_contra_adu (gesti         IN VARCHAR2,
                                 gerencia      IN VARCHAR2,
                                 nro_control   IN VARCHAR2)
        RETURN NUMBER
    IS
        valor   VARCHAR2 (20);
    BEGIN
        SELECT   SUM (tbl.rec_monto)
          INTO   valor
          FROM   (SELECT   DISTINCT rec_codigo, rec_monto
                    FROM   sicodif.cd_recibos
                   WHERE       fis_gestion = gesti
                           AND fis_gerencia = gerencia
                           AND fis_nro_control = nro_control
                           AND rec_tipo_deuda = 'CONTRAVENCION ADUANERA'
                           AND rec_lst_ope = 'U'
                           AND rec_numver = 0) tbl;

        RETURN valor;
    EXCEPTION
        WHEN NO_DATA_FOUND
        THEN
            IF (valor IS NULL)
            THEN
                RETURN (0);
            END IF;
        WHEN TOO_MANY_ROWS
        THEN
            RETURN (0);
        WHEN OTHERS
        THEN
            RETURN (0);
    END;

    FUNCTION sicodif_contra_contravencional (gesti         IN VARCHAR2,
                                             gerencia      IN VARCHAR2,
                                             nro_control   IN VARCHAR2)
        RETURN NUMBER
    IS
        valor   VARCHAR2 (20);
    BEGIN
        SELECT   SUM (tbl.rec_monto)
          INTO   valor
          FROM   (SELECT   DISTINCT rec_codigo, rec_monto
                    FROM   sicodif.cd_recibos
                   WHERE       fis_gestion = gesti
                           AND fis_gerencia = gerencia
                           AND fis_nro_control = nro_control
                           AND rec_tipo_deuda = 'CONTRABANDO CONTRAVENCIONAL'
                           AND rec_lst_ope = 'U'
                           AND rec_numver = 0) tbl;

        RETURN valor;
    EXCEPTION
        WHEN NO_DATA_FOUND
        THEN
            IF (valor IS NULL)
            THEN
                RETURN (0);
            END IF;
        WHEN TOO_MANY_ROWS
        THEN
            RETURN (0);
        WHEN OTHERS
        THEN
            RETURN (0);
    END;

    FUNCTION sicodif_contra_delito (gesti         IN VARCHAR2,
                                    gerencia      IN VARCHAR2,
                                    nro_control   IN VARCHAR2)
        RETURN NUMBER
    IS
        valor   VARCHAR2 (20);
    BEGIN
        SELECT   SUM (tbl.rec_monto)
          INTO   valor
          FROM   (SELECT   DISTINCT rec_codigo, rec_monto
                    FROM   sicodif.cd_recibos
                   WHERE       fis_gestion = gesti
                           AND fis_gerencia = gerencia
                           AND fis_nro_control = nro_control
                           AND rec_tipo_deuda = 'CONTRABANDO DELITO'
                           AND rec_lst_ope = 'U'
                           AND rec_numver = 0) tbl;

        RETURN valor;
    EXCEPTION
        WHEN NO_DATA_FOUND
        THEN
            IF (valor IS NULL)
            THEN
                RETURN (0);
            END IF;
        WHEN TOO_MANY_ROWS
        THEN
            RETURN (0);
        WHEN OTHERS
        THEN
            RETURN (0);
    END;

    FUNCTION sicodif_ga (gesti         IN VARCHAR2,
                         gerencia      IN VARCHAR2,
                         nro_control   IN VARCHAR2)
        RETURN NUMBER
    IS
        valor   VARCHAR2 (20);
    BEGIN
        SELECT   SUM (tbl.rec_monto)
          INTO   valor
          FROM   (SELECT   DISTINCT rec_codigo, rec_monto
                    FROM   sicodif.cd_recibos
                   WHERE       fis_gestion = gesti
                           AND fis_gerencia = gerencia
                           AND fis_nro_control = nro_control
                           AND rec_tipo_deuda = 'TRIBUTO OMITIDO GA'
                           AND rec_lst_ope = 'U'
                           AND rec_numver = 0) tbl;

        RETURN valor;
    EXCEPTION
        WHEN NO_DATA_FOUND
        THEN
            IF (valor IS NULL)
            THEN
                RETURN (0);
            END IF;
        WHEN TOO_MANY_ROWS
        THEN
            RETURN (0);
        WHEN OTHERS
        THEN
            RETURN (0);
    END;

    FUNCTION sicodif_ice (gesti         IN VARCHAR2,
                          gerencia      IN VARCHAR2,
                          nro_control   IN VARCHAR2)
        RETURN NUMBER
    IS
        valor   VARCHAR2 (20);
    BEGIN
        SELECT   SUM (tbl.rec_monto)
          INTO   valor
          FROM   (SELECT   DISTINCT rec_codigo, rec_monto
                    FROM   sicodif.cd_recibos
                   WHERE       fis_gestion = gesti
                           AND fis_gerencia = gerencia
                           AND fis_nro_control = nro_control
                           AND rec_tipo_deuda = 'TRIBUTO OMITIDO ICE'
                           AND rec_lst_ope = 'U'
                           AND rec_numver = 0) tbl;

        RETURN valor;
    EXCEPTION
        WHEN NO_DATA_FOUND
        THEN
            IF (valor IS NULL)
            THEN
                RETURN (0);
            END IF;
        WHEN TOO_MANY_ROWS
        THEN
            RETURN (0);
        WHEN OTHERS
        THEN
            RETURN (0);
    END;

    FUNCTION sicodif_ihd (gesti         IN VARCHAR2,
                          gerencia      IN VARCHAR2,
                          nro_control   IN VARCHAR2)
        RETURN NUMBER
    IS
        valor   VARCHAR2 (20);
    BEGIN
        SELECT   SUM (tbl.rec_monto)
          INTO   valor
          FROM   (SELECT   DISTINCT rec_codigo, rec_monto
                    FROM   sicodif.cd_recibos
                   WHERE       fis_gestion = gesti
                           AND fis_gerencia = gerencia
                           AND fis_nro_control = nro_control
                           AND rec_tipo_deuda = 'TRIBUTO OMITIDO IEHD'
                           AND rec_lst_ope = 'U'
                           AND rec_numver = 0) tbl;

        RETURN valor;
    EXCEPTION
        WHEN NO_DATA_FOUND
        THEN
            IF (valor IS NULL)
            THEN
                RETURN (0);
            END IF;
        WHEN TOO_MANY_ROWS
        THEN
            RETURN (0);
        WHEN OTHERS
        THEN
            RETURN (0);
    END;

    FUNCTION sicodif_sancioncontra (gesti         IN VARCHAR2,
                                    gerencia      IN VARCHAR2,
                                    nro_control   IN VARCHAR2)
        RETURN NUMBER
    IS
        valor   VARCHAR2 (20);
    BEGIN
        SELECT   SUM (tbl.rec_monto)
          INTO   valor
          FROM   (SELECT   DISTINCT rec_codigo, rec_monto
                    FROM   sicodif.cd_recibos
                   WHERE       fis_gestion = gesti
                           AND fis_gerencia = gerencia
                           AND fis_nro_control = nro_control
                           AND rec_tipo_deuda = 'CONTRABANDO CONTRAVENCIONAL'
                           AND rec_lst_ope = 'U'
                           AND rec_numver = 0) tbl;

        RETURN valor;
    EXCEPTION
        WHEN NO_DATA_FOUND
        THEN
            IF (valor IS NULL)
            THEN
                RETURN (0);
            END IF;
        WHEN TOO_MANY_ROWS
        THEN
            RETURN (0);
        WHEN OTHERS
        THEN
            RETURN (0);
    END;

    FUNCTION sicodif_sancionop (gesti         IN VARCHAR2,
                                gerencia      IN VARCHAR2,
                                nro_control   IN VARCHAR2)
        RETURN NUMBER
    IS
        valor   VARCHAR2 (20);
    BEGIN
        SELECT   SUM (tbl.rec_monto)
          INTO   valor
          FROM   (SELECT   DISTINCT rec_codigo, rec_monto
                    FROM   sicodif.cd_recibos
                   WHERE       fis_gestion = gesti
                           AND fis_gerencia = gerencia
                           AND fis_nro_control = nro_control
                           AND rec_tipo_deuda = 'SANCION OP'
                           AND rec_lst_ope = 'U'
                           AND rec_numver = 0) tbl;

        RETURN valor;
    EXCEPTION
        WHEN NO_DATA_FOUND
        THEN
            IF (valor IS NULL)
            THEN
                RETURN (0);
            END IF;
        WHEN TOO_MANY_ROWS
        THEN
            RETURN (0);
        WHEN OTHERS
        THEN
            RETURN (0);
    END;

    FUNCTION crt_cabecera (w_key_year   IN sad_gen.key_year%TYPE,
                           w_key_cuo    IN sad_gen.key_cuo%TYPE,
                           w_key_dec    IN sad_gen.key_dec%TYPE,
                           w_key_nber   IN sad_gen.key_nber%TYPE)
        RETURN VARCHAR2
    IS
        valor1   VARCHAR2 (200);
    BEGIN
        valor1 := NULL;

        IF w_key_dec IS NULL
        THEN
            --cont := 1 ;
            FOR c1
            IN (SELECT   DISTINCT (a.ctr_cod)
                  FROM   ops$asy.sad_itm_ped a
                 WHERE       a.key_year = w_key_year
                         AND a.key_cuo = w_key_cuo
                         AND a.key_dec IS NULL
                         AND a.key_nber = w_key_nber)
            LOOP
                valor1 := valor1 || c1.ctr_cod;
                valor1 := valor1 || '   ';
            END LOOP;
        ELSE
            FOR c1
            IN (SELECT   DISTINCT (a.ctr_cod)
                  FROM   ops$asy.sad_itm_ped a
                 WHERE       a.key_year = w_key_year
                         AND a.key_cuo = w_key_cuo
                         AND a.key_dec = w_key_dec
                         AND a.key_nber = w_key_nber)
            LOOP
                valor1 := valor1 || c1.ctr_cod;
                valor1 := valor1 || '   ';
            END LOOP;
        END IF;



        RETURN (valor1);
    END;

    FUNCTION mercancia (w_key_year   IN sad_gen.key_year%TYPE,
                        w_key_cuo    IN sad_gen.key_cuo%TYPE,
                        w_key_dec    IN sad_gen.key_dec%TYPE,
                        w_key_nber   IN sad_gen.key_nber%TYPE)
        RETURN VARCHAR2
    IS
        valor1   VARCHAR2 (150);
    BEGIN
        IF w_key_dec IS NULL
        THEN
            SELECT      saditm_goods_desc1
                     || ' '
                     || saditm_goods_desc2
                     || ' '
                     || saditm_goods_desc3
              INTO   valor1
              FROM   ops$asy.sad_itm a
             WHERE       a.key_year = w_key_year
                     AND a.key_cuo = w_key_cuo
                     AND a.key_dec IS NULL
                     AND a.key_nber = w_key_nber
                     AND a.itm_nber = 1
                     AND a.sad_num = 0;
        ELSE
            SELECT      saditm_goods_desc1
                     || ' '
                     || saditm_goods_desc2
                     || ' '
                     || saditm_goods_desc3
              INTO   valor1
              FROM   ops$asy.sad_itm a
             WHERE       a.key_year = w_key_year
                     AND a.key_cuo = w_key_cuo
                     AND a.key_dec = w_key_dec
                     AND a.key_nber = w_key_nber
                     AND a.itm_nber = 1
                     AND a.sad_num = 0;
        END IF;

        /*
              CURSOR ctr
              IS
                 SELECT saditm_goods_desc1||' '||saditm_goods_desc2||' '||saditm_goods_desc3
                   FROM sad_itm a
                  WHERE     a.key_year = w_key_year
                        AND a.key_cuo = w_key_cuo
                        AND NVL (a.key_dec, 0) = NVL (w_key_dec, 0)
                        AND a.key_nber = w_key_nber
                        AND itm_nber = 1;
           BEGIN
              valor1   := NULL;

              --cont := 1 ;
              FOR c1 IN ctr
              LOOP
                 valor1   := valor1 || c1.ctr_cod;
                 valor1   := valor1 || '   ';
              END LOOP;
        */
        RETURN (valor1);
    END;

    FUNCTION sicodif_iva (gesti         IN VARCHAR2,
                          gerencia      IN VARCHAR2,
                          nro_control   IN VARCHAR2)
        RETURN NUMBER
    IS
        valor   VARCHAR2 (20);
    BEGIN
        SELECT   SUM (rec_monto)
          INTO   valor
          FROM   sicodif.cd_recibos
         WHERE       fis_gestion = gesti
                 AND fis_gerencia = gerencia
                 AND fis_nro_control = nro_control
                 AND rec_tipo_deuda = 'TRIBUTO OMITIDO IVA'
                 AND rec_lst_ope = 'U'
                 AND rec_numver = 0;

        RETURN valor;
    EXCEPTION
        WHEN NO_DATA_FOUND
        THEN
            IF (valor IS NULL)
            THEN
                RETURN (0);
            END IF;
        WHEN TOO_MANY_ROWS
        THEN
            RETURN (0);
        WHEN OTHERS
        THEN
            RETURN (0);
    END;

    FUNCTION fob_cabecera (anio        IN sad_itm_vim.key_year%TYPE,
                           cod_adu     IN sad_itm_vim.key_cuo%TYPE,
                           w_key_dec   IN sad_itm_vim.key_dec%TYPE,
                           key_nuber   IN sad_itm_vim.key_nber%TYPE,
                           sw          IN VARCHAR2)
        RETURN NUMBER
    IS
        valorfob   sad_itm_vim.sad_iitminv_valc%TYPE;
    BEGIN
        IF w_key_dec IS NULL
        THEN
            SELECT   SUM (vim.sad_iitminv_valc)
              INTO   valorfob
              FROM   sad_itm_vim vim
             WHERE       vim.key_year = anio
                     AND vim.key_cuo = cod_adu
                     AND vim.key_dec IS NULL
                     AND vim.key_nber = key_nuber
                     AND vim.sad_num = sw;
        ELSE
            SELECT   SUM (vim.sad_iitminv_valc)
              INTO   valorfob
              FROM   sad_itm_vim vim
             WHERE       vim.key_year = anio
                     AND vim.key_cuo = cod_adu
                     AND vim.key_dec = w_key_dec
                     AND vim.key_nber = key_nuber
                     AND vim.sad_num = sw;
        END IF;

        RETURN valorfob;
    EXCEPTION
        WHEN NO_DATA_FOUND
        THEN
            IF (valorfob IS NULL)
            THEN
                RETURN (0);
            END IF;
        WHEN TOO_MANY_ROWS
        THEN
            RETURN (0);
        WHEN OTHERS
        THEN
            RETURN (0);
    END;

    FUNCTION nomprov (w_sad_exporter   IN sad_gen.sad_exporter%TYPE,
                      w_key_year       IN sad_gen.key_year%TYPE,
                      w_key_cuo        IN sad_gen.key_cuo%TYPE,
                      w_key_dec        IN sad_gen.key_dec%TYPE,
                      w_key_nber       IN sad_gen.key_nber%TYPE,
                      w_sad_num        IN sad_gen.sad_num%TYPE)
        RETURN VARCHAR2
    IS
        w_nombre   sad_occ_exp.sad_exp_nam%TYPE;
    BEGIN
        IF w_sad_exporter IS NULL
        THEN
            IF w_key_dec IS NULL
            THEN
                SELECT   sad_exp_nam
                  INTO   w_nombre
                  FROM   sad_occ_exp a
                 WHERE       a.key_year = w_key_year
                         AND a.key_cuo = w_key_cuo
                         AND a.key_dec IS NULL
                         AND a.key_nber = w_key_nber
                         AND a.sad_num = w_sad_num;
            ELSE
                SELECT   sad_exp_nam
                  INTO   w_nombre
                  FROM   sad_occ_exp a
                 WHERE       a.key_year = w_key_year
                         AND a.key_cuo = w_key_cuo
                         AND a.key_dec = w_key_dec
                         AND a.key_nber = w_key_nber
                         AND a.sad_num = w_sad_num;
            END IF;

            RETURN w_nombre;
        ELSE
            SELECT   DISTINCT a.ope_razonsocial
              INTO   w_nombre
              FROM   ops$asy.bo_oce_opecab a
             WHERE   a.ope_numerodoc = w_sad_exporter AND a.ope_num = 0;

            RETURN w_nombre;
        END IF;
    EXCEPTION
        WHEN OTHERS
        THEN
            RETURN ('NO REGISTRADO');
    END;

    FUNCTION dirprov (w_sad_exporter   IN sad_gen.sad_exporter%TYPE,
                      w_key_year       IN sad_gen.key_year%TYPE,
                      w_key_cuo        IN sad_gen.key_cuo%TYPE,
                      w_key_dec        IN sad_gen.key_dec%TYPE,
                      w_key_nber       IN sad_gen.key_nber%TYPE,
                      w_sad_num        IN sad_gen.sad_num%TYPE)
        RETURN VARCHAR2
    IS
        w_nombre   VARCHAR2 (80);
    BEGIN
        IF w_sad_exporter IS NULL
        THEN
            IF w_key_dec IS NULL
            THEN
                SELECT   sad_exp_add1 || ' ' || sad_exp_add2
                  INTO   w_nombre
                  FROM   sad_occ_exp a
                 WHERE       a.key_year = w_key_year
                         AND a.key_cuo = w_key_cuo
                         AND a.key_dec IS NULL
                         AND a.key_nber = w_key_nber
                         AND a.sad_num = w_sad_num;
            ELSE
                SELECT   sad_exp_add1 || ' ' || sad_exp_add2
                  INTO   w_nombre
                  FROM   sad_occ_exp a
                 WHERE       a.key_year = w_key_year
                         AND a.key_cuo = w_key_cuo
                         AND a.key_dec = w_key_dec
                         AND a.key_nber = w_key_nber
                         AND a.sad_num = w_sad_num;
            END IF;


            RETURN w_nombre;
        ELSE
            SELECT      a.ope_direccion
                     || ', N'
                     || CHR (186)
                     || ' '
                     || a.ope_nrodireccion
                     || ', ZONA '
                     || a.ope_zona
                     || ', '
                     || a.ope_ciudad
              INTO   w_nombre
              FROM   ops$asy.bo_oce_opecab a
             WHERE   a.ope_numerodoc = w_sad_exporter AND a.ope_num = 0;

            RETURN w_nombre;
        END IF;
    EXCEPTION
        WHEN OTHERS
        THEN
            RETURN ('NO REGISTRADO');
    END;

    FUNCTION nomage (w_dec        IN CHAR,
                     w_key_year   IN sad_gen.key_year%TYPE,
                     w_key_cuo    IN sad_gen.key_cuo%TYPE,
                     w_key_dec    IN sad_gen.key_dec%TYPE,
                     w_key_nber   IN sad_gen.key_nber%TYPE,
                     w_sad_num    IN sad_gen.sad_num%TYPE)
        RETURN VARCHAR2
    IS
        w_nombre   VARCHAR2 (50);
    BEGIN
        IF w_dec IS NULL
        THEN
            IF w_key_dec IS NULL
            THEN
                SELECT   a.sad_dec_nam
                  INTO   w_nombre
                  FROM   sad_occ_dec a
                 WHERE       a.key_year = w_key_year
                         AND a.key_cuo = w_key_cuo
                         AND a.key_dec IS NULL
                         AND a.key_nber = w_key_nber
                         AND a.sad_num = w_sad_num;
            ELSE
                SELECT   a.sad_dec_nam
                  INTO   w_nombre
                  FROM   sad_occ_dec a
                 WHERE       a.key_year = w_key_year
                         AND a.key_cuo = w_key_cuo
                         AND a.key_dec = w_key_dec
                         AND a.key_nber = w_key_nber
                         AND a.sad_num = w_sad_num;
            END IF;
        ELSE
            SELECT   dec_nam
              INTO   w_nombre
              FROM   undectab
             WHERE   dec_cod = w_dec
                     AND ser_sta = (SELECT   MAX (ser_sta)
                                      FROM   undectab
                                     WHERE   dec_cod = w_dec);
        END IF;

        RETURN w_nombre;
    --EXCEPTION
    --   WHEN TOO_MANY_ROWS THEN
    --     RETURN (-100);
    END;

    FUNCTION nomimp (w_consignee   IN sad_gen.sad_consignee%TYPE,
                     w_key_year    IN sad_gen.key_year%TYPE,
                     w_key_cuo     IN sad_gen.key_cuo%TYPE,
                     w_key_dec     IN sad_gen.key_dec%TYPE,
                     w_key_nber    IN sad_gen.key_nber%TYPE,
                     w_sad_num     IN sad_gen.sad_num%TYPE)
        RETURN VARCHAR2
    IS
        w_nombre   VARCHAR2 (150);
    BEGIN
        IF w_consignee IS NULL
        THEN
            IF w_key_dec IS NULL
            THEN
                SELECT   DISTINCT sad_con_nam
                  INTO   w_nombre
                  FROM   sad_occ_cns a
                 WHERE       a.key_year = w_key_year
                         AND a.key_cuo = w_key_cuo
                         AND a.key_dec IS NULL
                         AND a.key_nber = w_key_nber
                         AND a.sad_num = w_sad_num;
            ELSE
                SELECT   DISTINCT sad_con_nam
                  INTO   w_nombre
                  FROM   sad_occ_cns a
                 WHERE       a.key_year = w_key_year
                         AND a.key_cuo = w_key_cuo
                         AND a.key_dec = w_key_dec
                         AND a.key_nber = w_key_nber
                         AND a.sad_num = w_sad_num;
            END IF;

            RETURN w_nombre;
        END IF;

        BEGIN
            SELECT   UNIQUE NVL (ope_razonsocialnsga, ope_razonsocial)
              INTO   w_nombre
              FROM   ops$asy.bo_oce_opecab
             WHERE   ope_numerodoc = w_consignee AND ope_num = 0;

            RETURN w_nombre;
        EXCEPTION
            WHEN NO_DATA_FOUND
            THEN
                BEGIN
                    SELECT   nom_sid
                      INTO   w_nombre
                      FROM   operador.olopetab
                     WHERE   ope_nit = w_consignee AND ult_ver = '0';

                    RETURN w_nombre;
                EXCEPTION
                    WHEN NO_DATA_FOUND
                    THEN
                        IF w_nombre IS NULL
                        THEN
                            SELECT   DISTINCT a.ope_razonsocial
                              INTO   w_nombre
                              FROM   ops$asy.bo_oce_opecab a
                             WHERE   a.ope_numerodoc = w_consignee
                                     AND a.ope_num = 0;

                            RETURN w_nombre;
                        END IF;
                END;
        --    WHEN OTHERS
        --   THEN
        --     w_nombre := SUBSTR (SQLERRM, 1, 35);
        END;
    END;

    FUNCTION crt (w_key_year   IN sad_gen.key_year%TYPE,
                  w_key_cuo    IN sad_gen.key_cuo%TYPE,
                  w_key_dec    IN sad_gen.key_dec%TYPE,
                  w_key_nber   IN sad_gen.key_nber%TYPE,
                  w_itm_nber   IN sad_itm_ped.itm_nber%TYPE,
                  num          IN NUMBER)
        RETURN VARCHAR2
    IS
        w_ctr   VARCHAR2 (30);
        cont    NUMBER;
    BEGIN
        w_ctr := NULL;
        cont := 1;

        IF w_key_dec IS NULL
        THEN
            FOR c1
            IN (SELECT   a.ctr_cod
                  FROM   sad_itm_ped a
                 WHERE       a.key_year = w_key_year
                         AND a.key_cuo = w_key_cuo
                         AND a.key_dec IS NULL
                         AND a.key_nber = w_key_nber
                         AND a.itm_nber = w_itm_nber)
            LOOP
                IF cont = num
                THEN
                    w_ctr := c1.ctr_cod;
                END IF;

                cont := cont + 1;
            END LOOP;
        ELSE
            FOR c1
            IN (SELECT   a.ctr_cod
                  FROM   sad_itm_ped a
                 WHERE       a.key_year = w_key_year
                         AND a.key_cuo = w_key_cuo
                         AND a.key_dec = w_key_dec
                         AND a.key_nber = w_key_nber
                         AND a.itm_nber = w_itm_nber)
            LOOP
                IF cont = num
                THEN
                    w_ctr := c1.ctr_cod;
                END IF;

                cont := cont + 1;
            END LOOP;
        END IF;



        RETURN (w_ctr);
    END;

    FUNCTION numid (w_consignee   IN sad_gen.sad_consignee%TYPE,
                    w_key_year    IN sad_gen.key_year%TYPE,
                    w_key_cuo     IN sad_gen.key_cuo%TYPE,
                    w_key_dec     IN sad_gen.key_dec%TYPE,
                    w_key_nber    IN sad_gen.key_nber%TYPE,
                    w_sad_num     IN sad_gen.sad_num%TYPE)
        RETURN VARCHAR2
    IS
        w_docid   sad_occ_cns.sad_con_zip%TYPE;
    BEGIN
        IF w_consignee IS NULL
        THEN
            IF w_key_dec IS NULL
            THEN
                SELECT   SUBSTR (sad_con_zip,
                                 INSTR (sad_con_zip, ' ') + 1,
                                 LENGTH (sad_con_zip))
                  INTO   w_docid
                  FROM   sad_occ_cns a
                 WHERE       a.key_year = w_key_year
                         AND a.key_cuo = w_key_cuo
                         AND a.key_dec IS NULL
                         AND a.key_nber = w_key_nber
                         AND a.sad_num = w_sad_num;
            ELSE
                SELECT   SUBSTR (sad_con_zip,
                                 INSTR (sad_con_zip, ' ') + 1,
                                 LENGTH (sad_con_zip))
                  INTO   w_docid
                  FROM   sad_occ_cns a
                 WHERE       a.key_year = w_key_year
                         AND a.key_cuo = w_key_cuo
                         AND a.key_dec = w_key_dec
                         AND a.key_nber = w_key_nber
                         AND a.sad_num = w_sad_num;
            END IF;

            RETURN w_docid;
        ELSE
            RETURN w_consignee;
        END IF;
    EXCEPTION
        WHEN OTHERS
        THEN
            RETURN NULL;
    --   WHEN TOO_MANY_ROWS THEN
    --     RETURN (-100);
    END;

    FUNCTION reporte_sin_canal (prm_gerencia   IN     VARCHAR2,
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
            SELECT   DISTINCT
                     ROWNUM,
                     DECODE (a.fis_gerencia,
                             'GRLP', 'LA PAZ',
                             'GRCB', 'COCHABAMBA',
                             'GRSC', 'SANTA CRUZ',
                             'GROR', 'ORURO',
                             'GRTJ', 'TARIJA',
                             'GRPT', 'POTOSI',
                             'GNF-DIA')
                         gerencia,
                     s.key_cuo aduana,
                     a.fis_gestion || 'CD' || a.fis_gerencia
                     || DECODE (LENGTH (a.fis_nro_control),
                                1, '000' || a.fis_nro_control,
                                2, '00' || a.fis_nro_control,
                                3, '0' || a.fis_nro_control,
                                a.fis_nro_control)
                         nro_correlativo,
                     TO_CHAR (a.fis_fec_registro, 'dd/mm/yyyy HH24:mi:ss')
                         fecha_orden_control,
                        s.sad_reg_year
                     || '/'
                     || s.key_cuo
                     || '/'
                     || s.sad_reg_serial
                     || '-'
                     || s.sad_reg_nber
                         "TRAMITE",
                     DECODE (spy1.sad_clr,
                             0, 'VERDE',
                             1, 'AZUL',
                             2, 'AMARILLO',
                             3, 'ROJO',
                             'SIN CANAL')
                         "CANAL",
                     NVL (
                         pkg_sicodif.devuelve_fecha_levante (a.fis_key_year,
                                                             a.fis_key_cuo,
                                                             a.fis_key_dec,
                                                             a.fis_key_nber),
                         '-')
                         fecha_levante,
                     a.fis_estado
              FROM   sicodif.cd_fiscalizacion a, sad_spy spy1, sad_gen s
             WHERE       s.sad_flw = '1'
                     AND s.sad_asmt_serial IS NOT NULL
                     AND s.lst_ope = 'U'
                     AND s.sad_num = '0'
                     AND fis_numver = '0'
                     AND fis_lst_ope = 'U'
                     AND fis_estado <> 'REGULARIZACION'
                     AND s.key_year = spy1.key_year(+)
                     AND s.key_cuo = spy1.key_cuo(+)
                     AND s.key_dec IS NULL
                     AND spy1.key_dec(+) IS NULL
                     AND s.key_nber = spy1.key_nber(+)
                     AND spy1.spy_sta(+) = '10'
                     AND spy1.spy_act(+) = '24'
                     AND s.key_year = a.fis_key_year
                     AND s.key_cuo = a.fis_key_cuo
                     AND a.fis_key_dec IS NULL
                     AND s.key_nber = a.fis_key_nber
                     AND a.fis_origen_control = 'SICODIF_CANAL'
                     AND a.fis_gerencia LIKE prm_gerencia
                     AND TRUNC (a.fis_fec_registro) BETWEEN TO_DATE (
                                                                prm_fec_ini,
                                                                'dd/mm/yyyy')
                                                        AND  TO_DATE (
                                                                 prm_fec_fin,
                                                                 'dd/mm/yyyy')
            UNION
            SELECT   DISTINCT
                     ROWNUM,
                     DECODE (a.fis_gerencia,
                             'GRLP', 'LA PAZ',
                             'GRCB', 'COCHABAMBA',
                             'GRSC', 'SANTA CRUZ',
                             'GROR', 'ORURO',
                             'GRTJ', 'TARIJA',
                             'GRPT', 'POTOSI',
                             'GNF-DIA')
                         gerencia,
                     s.key_cuo aduana,
                     a.fis_gestion || 'CD' || a.fis_gerencia
                     || DECODE (LENGTH (a.fis_nro_control),
                                1, '000' || a.fis_nro_control,
                                2, '00' || a.fis_nro_control,
                                3, '0' || a.fis_nro_control,
                                a.fis_nro_control)
                         nro_correlativo,
                     TO_CHAR (a.fis_fec_registro, 'dd/mm/yyyy HH24:mi:ss')
                         fecha_orden_control,
                        s.sad_reg_year
                     || '/'
                     || s.key_cuo
                     || '/'
                     || s.sad_reg_serial
                     || '-'
                     || s.sad_reg_nber
                         "TRAMITE",
                     DECODE (spy1.sad_clr,
                             0, 'VERDE',
                             1, 'AZUL',
                             2, 'AMARILLO',
                             3, 'ROJO',
                             'SIN CANAL')
                         "CANAL",
                     NVL (
                         pkg_sicodif.devuelve_fecha_levante (a.fis_key_year,
                                                             a.fis_key_cuo,
                                                             a.fis_key_dec,
                                                             a.fis_key_nber),
                         '-')
                         fecha_levante,
                     a.fis_estado
              FROM   sicodif.cd_fiscalizacion a, sad_spy spy1, sad_gen s
             WHERE       s.sad_flw = '1'
                     AND s.sad_asmt_serial IS NOT NULL
                     AND s.lst_ope = 'U'
                     AND s.sad_num = '0'
                     AND fis_numver = '0'
                     AND fis_lst_ope = 'U'
                     AND fis_estado <> 'REGULARIZACION'
                     AND s.key_year = spy1.key_year(+)
                     AND s.key_cuo = spy1.key_cuo(+)
                     AND s.key_dec = spy1.key_dec(+)
                     AND s.key_nber = spy1.key_nber(+)
                     AND spy1.spy_sta(+) = '10'
                     AND spy1.spy_act(+) = '24'
                     AND s.key_year = a.fis_key_year
                     AND s.key_cuo = a.fis_key_cuo
                     AND s.key_dec = a.fis_key_dec
                     AND s.key_nber = a.fis_key_nber
                     AND a.fis_origen_control = 'SICODIF_CANAL'
                     AND a.fis_gerencia LIKE prm_gerencia
                     AND TRUNC (a.fis_fec_registro) BETWEEN TO_DATE (
                                                                prm_fec_ini,
                                                                'dd/mm/yyyy')
                                                        AND  TO_DATE (
                                                                 prm_fec_fin,
                                                                 'dd/mm/yyyy')
            ORDER BY   2, 3, 4;

        RETURN res;
    END;

    FUNCTION reporte_det_recauda (prm_gerencia   IN     VARCHAR2,
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
            SELECT   DISTINCT
                     TO_NUMBER (a.fis_gestion) gestion,
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
                     TO_CHAR (a.fis_fec_registro) fecha_orden_control,
                     s.key_cuo aduana,
                     nomadu (s.key_cuo) "DESC ADUANA",
                        --A.sad_reg_year||'/'||A.fis_key_cuo||'-'||A.sad_reg_serial||'-'||A.sad_reg_nber "TRA_FIS",
                        s.sad_reg_year
                     || '/'
                     || s.key_cuo
                     || '/'
                     || s.sad_reg_serial
                     || '-'
                     || s.sad_reg_nber
                         "TRAMITE",
                     DECODE (spy1.sad_clr,
                             0,
                             'VERDE',
                             1,
                             'AZUL',
                             2,
                             'AMARILLO',
                             3,
                             'ROJO')
                         "CANAL",
                     numid (s.sad_consignee,
                            s.key_year,
                            s.key_cuo,
                            s.key_dec,
                            s.key_nber,
                            s.sad_num)
                         "DOC IMP",
                     NVL (nomimp (s.sad_consignee,
                                  s.key_year,
                                  s.key_cuo,
                                  s.key_dec,
                                  s.key_nber,
                                  s.sad_num), '-')
                         "IMPORTADOR",
                     NVL (s.key_dec, ' ') "DOC_DECL",
                     NVL (nomage (s.key_dec,
                                  s.key_year,
                                  s.key_cuo,
                                  s.key_dec,
                                  s.key_nber,
                                  s.sad_num), '-')
                         "DECLARANTE",
                     NVL (dirprov (s.sad_exporter,
                                   s.key_year,
                                   s.key_cuo,
                                   s.key_dec,
                                   s.key_nber,
                                   s.sad_num), '-')
                         "DIREC PROVEEDOR",
                     NVL (nomprov (s.sad_exporter,
                                   s.key_year,
                                   s.key_cuo,
                                   s.key_dec,
                                   s.key_nber,
                                   s.sad_num), '-')
                         "PROVEEDOR",
                     NVL (a.fis_fob_inicial, 0) fob_funcion,
                     /*fob_cabecera (s.key_year,
                                   s.key_cuo,
                                   s.key_dec,
                                   s.key_nber,
                                   0)
                         fob_funcion,*/
                     NVL (
                         (SELECT   SUM (saditm_tax_amount)
                            FROM   ops$asy.sad_tax st
                           WHERE       s.key_year = st.key_year
                                   AND s.key_cuo = st.key_cuo
                                   AND st.key_dec IS NULL
                                   AND s.key_nber = st.key_nber
                                   AND st.saditm_tax_code = 'GA'
                                   AND st.saditm_tax_mop = '1'
                                   AND st.sad_num = '0'),
                         0)
                         ga,
                     NVL (
                         (SELECT   SUM (saditm_tax_amount)
                            FROM   ops$asy.sad_tax st
                           WHERE       s.key_year = st.key_year
                                   AND s.key_cuo = st.key_cuo
                                   AND st.key_dec IS NULL
                                   AND s.key_nber = st.key_nber
                                   AND st.saditm_tax_code = 'IVA'
                                   AND st.sad_num = '0'),
                         0)
                         iva,
                     NVL (
                         (SELECT   SUM (saditm_tax_amount)
                            FROM   sad_tax st
                           WHERE       s.key_year = st.key_year
                                   AND s.key_cuo = st.key_cuo
                                   AND st.key_dec IS NULL
                                   AND s.key_nber = st.key_nber
                                   AND st.saditm_tax_code = 'ICE'
                                   AND st.sad_num = '0'),
                         0)
                         ice,
                     NVL (
                         (SELECT   SUM (saditm_tax_amount)
                            FROM   sad_tax st
                           WHERE       s.key_year = st.key_year
                                   AND s.key_cuo = st.key_cuo
                                   AND st.key_dec IS NULL
                                   AND s.key_nber = st.key_nber
                                   AND st.saditm_tax_code = 'IHD'
                                   AND st.sad_num = '0'),
                         0)
                         ihd,
                     ----SUMATORIAS DE TRIBUTOS


                     NVL (
                         (SELECT   SUM (saditm_tax_amount)
                            FROM   sad_tax st
                           WHERE       s.key_year = st.key_year
                                   AND s.key_cuo = st.key_cuo
                                   AND st.key_dec IS NULL
                                   AND s.key_nber = st.key_nber
                                   AND st.saditm_tax_code = 'GA'
                                   AND st.saditm_tax_mop = '1'
                                   AND st.sad_num = '0'),
                         0)
                     + NVL (
                           (SELECT   SUM (saditm_tax_amount)
                              FROM   sad_tax st
                             WHERE       s.key_year = st.key_year
                                     AND s.key_cuo = st.key_cuo
                                     AND st.key_dec IS NULL
                                     AND s.key_nber = st.key_nber
                                     AND st.saditm_tax_code = 'IVA'
                                     AND st.sad_num = '0'),
                           0)
                     + NVL (
                           (SELECT   SUM (saditm_tax_amount)
                              FROM   sad_tax st
                             WHERE       s.key_year = st.key_year
                                     AND s.key_cuo = st.key_cuo
                                     AND st.key_dec IS NULL
                                     AND s.key_nber = st.key_nber
                                     AND st.saditm_tax_code = 'ICE'
                                     AND st.sad_num = '0'),
                           0)
                     + NVL (
                           (SELECT   SUM (saditm_tax_amount)
                              FROM   sad_tax st
                             WHERE       s.key_year = st.key_year
                                     AND s.key_cuo = st.key_cuo
                                     AND st.key_dec IS NULL
                                     AND s.key_nber = st.key_nber
                                     AND st.saditm_tax_code = 'IHD'
                                     AND st.sad_num = '0'),
                           0)
                         total_tributos,
                     --ASIGNACION CONTROL DIFERIDO
                     NVL (a.fis_fiscalizador, '-') fiscalizador,
                     NVL (a.fis_usuario_asignacion, '-') usuario_asignacion,
                     --NOTIFICACION
                     NVL (TO_CHAR (a.fis_fec_notificacion, 'dd/mm/yyyy'),
                          '-')
                         "FECHA_NOTIFICACION",
                     NVL (a.fis_obs_notificacion, '-')
                         "OBSERVACION_NOTIFICACION",
                     NVL (a.fis_tipo_notificacion, '-') "TIPO_NOTIFICACION",
                     NVL (a.fis_usuario_notificacion, '-')
                         "USUARIO_NOTIFICACION",
                     --RESULTADO CONTROL DIFERIDO
                     NVL (a.fis_fob_final, 0) fob_fiscalizador,
                     NVL (TO_CHAR (a.fis_fec_liquidacion, 'dd/mm/yyyy'), '-')
                         "FECHA_LIQUIDACION",
                     NVL (a.fis_valor_ufv, '-') "VALOR_UFV",
                     NVL (TO_NUMBER (a.fis_tributo_omitido_ga), 0)
                         "TRIBUTO_OMITIDO_GA",
                     NVL (TO_NUMBER (a.fis_tributo_omitido_iva), 0)
                         "TRIBUTO_OMITIDO_IVA",
                     NVL (TO_NUMBER (a.fis_tributo_omitido_ice), 0)
                         "TRIBUTO_OMITIDO_ICE",
                     NVL (TO_NUMBER (a.fis_tributo_omitido_iehd), 0)
                         "TRIBUTO_OMITIDO_IEHD",
                     NVL (
                           TO_NUMBER (a.fis_tributo_omitido_ga)
                         + TO_NUMBER (a.fis_tributo_omitido_iva)
                         + TO_NUMBER (a.fis_tributo_omitido_ice)
                         + TO_NUMBER (a.fis_tributo_omitido_iehd),
                         0)
                         "TOTAL_TRIBUTO_OMITIDO",
                     NVL (TO_NUMBER (a.fis_sancion_omision), 0)
                         sancion_omision,
                     NVL (TO_NUMBER (a.fis_multa_contrava), 0)
                         multa_contravencion,
                     NVL (TO_NUMBER (a.fis_multa_contrabc), 0)
                         "MULTA_CONTRA_CONTRA",
                     NVL (TO_NUMBER (a.fis_multa_contrabd), 0)
                         multa_contrabando_delito,
                     NVL (a.fis_usuario_resultados, '-') usuarios_registrados,
                     --ACEPTACION DE PAGO
                     NVL (TO_CHAR (a.fis_fec_aceptacion, 'dd/mm/yyyy'), '-')
                         fecha_aceptacion_pago,
                     NVL (a.fis_usuario_aceptacion, '-') usuario_aceptacion,
                     --CONCLUSION DEL CONTROL DIFERIDO
                     NVL (a.fis_tipo_doc_con, '-') tipo_doc_conclusion,
                     NVL (a.fis_reg_nro_inf, '-') numero_informe,
                     NVL (TO_CHAR (a.fis_reg_fec_inf, 'dd/mm/yyyy'), '-')
                         "FECHA_INFORME",
                     NVL (a.fis_reg_nro_doc_con, '-') "NRO_DOC_CONCLUSION",
                     NVL (TO_CHAR (a.fis_reg_fec_doc_con, 'dd/mm/yyyy'), '-')
                         "FECHA_DOC_CONCLUSION",
                     NVL (TO_CHAR (a.fis_fec_finalizacion, 'dd/mm/yyyy'),
                          '-')
                         "FECHA_FINALIZACION",
                     NVL (a.fis_usuario_finalizacion, '-')
                         "USUARIO_REGISTRO_FINALIZACION",
                     --OBSERVACIONES ENCONTRADAS
                     DECODE (a.fis_ovalor, 'on', 'X', '-') "VALOR",
                     DECODE (a.fis_opartida, 'on', 'X', '-') "PARTIDA",
                     DECODE (a.fis_oorigen, 'on', 'X', '-') "ORIGEN",
                     DECODE (a.fis_osinobs, 'on', 'X', '-') "SIN_OBSERVACION",
                     --OBSERVACIONES EN CONTRAVENCIONES ENCONTRADAS
                     DECODE (a.fis_comision, 'on', 'X', '-') "OMISION_PAGO",
                     DECODE (a.fis_ccondel, 'on', 'X', '-')
                         "CONTRABANDO_DELITO",
                     DECODE (a.fis_cconcon, 'on', 'X', '-')
                         "CONTRABANDO_CONTRAVENCIONAL",
                     DECODE (a.fis_cconadu, 'on', 'X', '-')
                         "CONTRAVENCION_ADUANERA",
                     --NOTIFICACION DEL DOC DE CONCLUSION AL OPERADOR
                     NVL (TO_CHAR (a.fis_reg_fec_not_doc, 'dd/mm/yyyy'), '-')
                         fecha_notificacion_conclusion,
                     NVL (a.fis_reg_tip_not_doc, '-')
                         tipo_notificacion_conclusion,
                     NVL (a.fis_usuario_not_doc_con, '-')
                         usuario_registro_notificacion,
                     --ENVIO A LA UNIDAD LEGAL
                     NVL (TO_CHAR (a.fis_reg_fec_env_legal, 'dd/mm/yyyy'),
                          '-')
                         "FECHA_ENVIO",
                     NVL (a.fis_reg_nro_env_legal, '-') "NRO_DOC_REMISION",
                     NVL (a.fis_usuario_env_legal, '-')
                         "USUARIO_UNIDAD_LEGAL",
                     --ESTADO
                     fis_estado "ESTADO",
                     --valores
                     NVL (
                         sicodif_ga (a.fis_gestion,
                                     a.fis_gerencia,
                                     a.fis_nro_control),
                         0)
                         ga_recuperado,
                     NVL (
                         sicodif_iva (a.fis_gestion,
                                      a.fis_gerencia,
                                      a.fis_nro_control),
                         0)
                         iva_recuperado,
                     NVL (
                         sicodif_ice (a.fis_gestion,
                                      a.fis_gerencia,
                                      a.fis_nro_control),
                         0)
                         ice_recuperado,
                     NVL (
                         sicodif_ihd (a.fis_gestion,
                                      a.fis_gerencia,
                                      a.fis_nro_control),
                         0)
                         ihd_recuperado,
                     NVL (
                         sicodif_ga (a.fis_gestion,
                                     a.fis_gerencia,
                                     a.fis_nro_control),
                         0)
                     + NVL (
                           sicodif_iva (a.fis_gestion,
                                        a.fis_gerencia,
                                        a.fis_nro_control),
                           0)
                     + NVL (
                           sicodif_ice (a.fis_gestion,
                                        a.fis_gerencia,
                                        a.fis_nro_control),
                           0)
                     + NVL (
                           sicodif_ihd (a.fis_gestion,
                                        a.fis_gerencia,
                                        a.fis_nro_control),
                           0)
                         total_tributo,
                     NVL (
                         sicodif_sancionop (a.fis_gestion,
                                            a.fis_gerencia,
                                            a.fis_nro_control),
                         0)
                         sancionop_recuperado,
                     --MULTA CONTRAVENCIONAL ADUANERA
                     NVL (
                         sicodif_contra_adu (a.fis_gestion,
                                             a.fis_gerencia,
                                             a.fis_nro_control),
                         0)
                         sancion_contra_adu,
                     --MULTA CONTRABANDO CONTRAVENCIONAL
                     --FALTA
                     NVL (
                         sicodif_contra_contravencional (a.fis_gestion,
                                                         a.fis_gerencia,
                                                         a.fis_nro_control),
                         0)
                         sancion_contra_contravencional,
                     --sicodif_USUARIO(a.fis_gestion,a.fis_gerencia,a.fis_nro_control) USUARIOS,

                     NVL (a.fis_usuario_resultados, '-'),
                     fis_origen_control control_origen,
                     --TO_DATE (a.fis_fec_registro, 'DD/MM/yyyy') FECHA_CONTROL
                     --to_date(a.fis_fec_registro,'dd/mm/yyyy')
                     NVL (TO_CHAR (a.fis_fec_registro, 'DD/MM/YYYY'), '-')
                         fecha_control,
                     --OTROS DATOS
                     CASE
                         WHEN sicodif_25 (s.key_year,
                                          s.key_cuo,
                                          s.key_dec,
                                          s.key_nber) IS NOT NULL
                         THEN
                             sicodif_25 (s.key_year,
                                         s.key_cuo,
                                         s.key_dec,
                                         s.key_nber)
                         ELSE
                             '-'
                     END
                         AS pase_salida,
                     mercancia (s.key_year,
                                s.key_cuo,
                                s.key_dec,
                                s.key_nber)
                         mercancias,
                     NVL (crt_cabecera (s.key_year,
                                        s.key_cuo,
                                        s.key_dec,
                                        s.key_nber), 'ALEATORIO')
                         criterio_nivel_cab,
                     --MULTA CONTRABANDO DELITO
                     --FALTA
                     NVL (
                         sicodif_contra_delito (a.fis_gestion,
                                                a.fis_gerencia,
                                                a.fis_nro_control),
                         0)
                         sancion_contra_delito
              FROM   sicodif.cd_fiscalizacion a, sad_spy spy1, sad_gen s
             WHERE       s.sad_flw = '1'
                     AND s.sad_asmt_serial IS NOT NULL
                     AND s.lst_ope = 'U'
                     AND s.sad_num = '0'
                     AND fis_numver = '0'
                     AND fis_lst_ope = 'U'
                     AND fis_estado <> 'REGULARIZACION'
                     AND s.key_year = spy1.key_year(+)
                     AND s.key_cuo = spy1.key_cuo(+)
                     AND spy1.key_dec(+) IS NULL
                     AND s.key_nber = spy1.key_nber(+)
                     AND spy1.spy_sta(+) = '10'
                     AND spy1.spy_act(+) = '24'
                     AND s.key_year = a.fis_key_year
                     AND s.key_cuo = a.fis_key_cuo
                     AND s.key_dec IS NULL
                     AND a.fis_key_dec IS NULL
                     AND s.key_nber = a.fis_key_nber
                     AND a.fis_gerencia LIKE prm_gerencia
                     AND a.fis_reg_fec_doc_con BETWEEN TO_DATE (prm_fec_ini,
                                                                'dd/mm/yyyy')
                                                   AND  TO_DATE (
                                                            prm_fec_fin,
                                                            'dd/mm/yyyy')
            UNION
            SELECT   DISTINCT
                     TO_NUMBER (a.fis_gestion) gestion,
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
                     TO_CHAR (a.fis_fec_registro) fecha_orden_control,
                     s.key_cuo aduana,
                     nomadu (s.key_cuo) "DESC ADUANA",
                        --A.sad_reg_year||'/'||A.fis_key_cuo||'-'||A.sad_reg_serial||'-'||A.sad_reg_nber "TRA_FIS",
                        s.sad_reg_year
                     || '/'
                     || s.key_cuo
                     || '/'
                     || s.sad_reg_serial
                     || '-'
                     || s.sad_reg_nber
                         "TRAMITE",
                     DECODE (spy1.sad_clr,
                             0,
                             'VERDE',
                             1,
                             'AZUL',
                             2,
                             'AMARILLO',
                             3,
                             'ROJO')
                         "CANAL",
                     numid (s.sad_consignee,
                            s.key_year,
                            s.key_cuo,
                            s.key_dec,
                            s.key_nber,
                            s.sad_num)
                         "DOC IMP",
                     NVL (nomimp (s.sad_consignee,
                                  s.key_year,
                                  s.key_cuo,
                                  s.key_dec,
                                  s.key_nber,
                                  s.sad_num), '-')
                         "IMPORTADOR",
                     NVL (s.key_dec, ' ') "DOC_DECL",
                     NVL (nomage (s.key_dec,
                                  s.key_year,
                                  s.key_cuo,
                                  s.key_dec,
                                  s.key_nber,
                                  s.sad_num), '-')
                         "DECLARANTE",
                     NVL (dirprov (s.sad_exporter,
                                   s.key_year,
                                   s.key_cuo,
                                   s.key_dec,
                                   s.key_nber,
                                   s.sad_num), '-')
                         "DIREC PROVEEDOR",
                     NVL (nomprov (s.sad_exporter,
                                   s.key_year,
                                   s.key_cuo,
                                   s.key_dec,
                                   s.key_nber,
                                   s.sad_num), '-')
                         "PROVEEDOR",
                     NVL (a.fis_fob_inicial, 0) fob_funcion,
                     /*fob_cabecera (s.key_year,
                                   s.key_cuo,
                                   s.key_dec,
                                   s.key_nber,
                                   0)
                         fob_funcion,*/
                     NVL (
                         (SELECT   SUM (saditm_tax_amount)
                            FROM   ops$asy.sad_tax st
                           WHERE       s.key_year = st.key_year
                                   AND s.key_cuo = st.key_cuo
                                   AND s.key_dec = st.key_dec
                                   AND s.key_nber = st.key_nber
                                   AND st.saditm_tax_code = 'GA'
                                   AND st.saditm_tax_mop = '1'
                                   AND st.sad_num = '0'),
                         0)
                         ga,
                     NVL (
                         (SELECT   SUM (saditm_tax_amount)
                            FROM   ops$asy.sad_tax st
                           WHERE       s.key_year = st.key_year
                                   AND s.key_cuo = st.key_cuo
                                   AND s.key_dec = st.key_dec
                                   AND s.key_nber = st.key_nber
                                   AND st.saditm_tax_code = 'IVA'
                                   AND st.sad_num = '0'),
                         0)
                         iva,
                     NVL (
                         (SELECT   SUM (saditm_tax_amount)
                            FROM   sad_tax st
                           WHERE       s.key_year = st.key_year
                                   AND s.key_cuo = st.key_cuo
                                   AND s.key_dec = st.key_dec
                                   AND s.key_nber = st.key_nber
                                   AND st.saditm_tax_code = 'ICE'
                                   AND st.sad_num = '0'),
                         0)
                         ice,
                     NVL (
                         (SELECT   SUM (saditm_tax_amount)
                            FROM   sad_tax st
                           WHERE       s.key_year = st.key_year
                                   AND s.key_cuo = st.key_cuo
                                   AND s.key_dec = st.key_dec
                                   AND s.key_nber = st.key_nber
                                   AND st.saditm_tax_code = 'IHD'
                                   AND st.sad_num = '0'),
                         0)
                         ihd,
                     ----SUMATORIAS DE TRIBUTOS


                     NVL (
                         (SELECT   SUM (saditm_tax_amount)
                            FROM   sad_tax st
                           WHERE       s.key_year = st.key_year
                                   AND s.key_cuo = st.key_cuo
                                   AND s.key_dec = st.key_dec
                                   AND s.key_nber = st.key_nber
                                   AND st.saditm_tax_code = 'GA'
                                   AND st.saditm_tax_mop = '1'
                                   AND st.sad_num = '0'),
                         0)
                     + NVL (
                           (SELECT   SUM (saditm_tax_amount)
                              FROM   sad_tax st
                             WHERE       s.key_year = st.key_year
                                     AND s.key_cuo = st.key_cuo
                                     AND s.key_dec = st.key_dec
                                     AND s.key_nber = st.key_nber
                                     AND st.saditm_tax_code = 'IVA'
                                     AND st.sad_num = '0'),
                           0)
                     + NVL (
                           (SELECT   SUM (saditm_tax_amount)
                              FROM   sad_tax st
                             WHERE       s.key_year = st.key_year
                                     AND s.key_cuo = st.key_cuo
                                     AND s.key_dec = st.key_dec
                                     AND s.key_nber = st.key_nber
                                     AND st.saditm_tax_code = 'ICE'
                                     AND st.sad_num = '0'),
                           0)
                     + NVL (
                           (SELECT   SUM (saditm_tax_amount)
                              FROM   sad_tax st
                             WHERE       s.key_year = st.key_year
                                     AND s.key_cuo = st.key_cuo
                                     AND s.key_dec = st.key_dec
                                     AND s.key_nber = st.key_nber
                                     AND st.saditm_tax_code = 'IHD'
                                     AND st.sad_num = '0'),
                           0)
                         total_tributos,
                     --ASIGNACION CONTROL DIFERIDO
                     NVL (a.fis_fiscalizador, '-') fiscalizador,
                     NVL (a.fis_usuario_asignacion, '-') usuario_asignacion,
                     --NOTIFICACION
                     NVL (TO_CHAR (a.fis_fec_notificacion, 'dd/mm/yyyy'),
                          '-')
                         "FECHA_NOTIFICACION",
                     NVL (a.fis_obs_notificacion, '-')
                         "OBSERVACION_NOTIFICACION",
                     NVL (a.fis_tipo_notificacion, '-') "TIPO_NOTIFICACION",
                     NVL (a.fis_usuario_notificacion, '-')
                         "USUARIO_NOTIFICACION",
                     --RESULTADO CONTROL DIFERIDO
                     NVL (a.fis_fob_final, 0) fob_fiscalizador,
                     NVL (TO_CHAR (a.fis_fec_liquidacion, 'dd/mm/yyyy'), '-')
                         "FECHA_LIQUIDACION",
                     NVL (a.fis_valor_ufv, '-') "VALOR_UFV",
                     NVL (TO_NUMBER (a.fis_tributo_omitido_ga), 0)
                         "TRIBUTO_OMITIDO_GA",
                     NVL (TO_NUMBER (a.fis_tributo_omitido_iva), 0)
                         "TRIBUTO_OMITIDO_IVA",
                     NVL (TO_NUMBER (a.fis_tributo_omitido_ice), 0)
                         "TRIBUTO_OMITIDO_ICE",
                     NVL (TO_NUMBER (a.fis_tributo_omitido_iehd), 0)
                         "TRIBUTO_OMITIDO_IEHD",
                     NVL (
                           TO_NUMBER (a.fis_tributo_omitido_ga)
                         + TO_NUMBER (a.fis_tributo_omitido_iva)
                         + TO_NUMBER (a.fis_tributo_omitido_ice)
                         + TO_NUMBER (a.fis_tributo_omitido_iehd),
                         0)
                         "TOTAL_TRIBUTO_OMITIDO",
                     NVL (TO_NUMBER (a.fis_sancion_omision), 0)
                         sancion_omision,
                     NVL (TO_NUMBER (a.fis_multa_contrava), 0)
                         multa_contravencion,
                     NVL (TO_NUMBER (a.fis_multa_contrabc), 0)
                         "MULTA_CONTRA_CONTRA",
                     NVL (TO_NUMBER (a.fis_multa_contrabd), 0)
                         multa_contrabando_delito,
                     NVL (a.fis_usuario_resultados, '-') usuarios_registrados,
                     --ACEPTACION DE PAGO
                     NVL (TO_CHAR (a.fis_fec_aceptacion, 'dd/mm/yyyy'), '-')
                         fecha_aceptacion_pago,
                     NVL (a.fis_usuario_aceptacion, '-') usuario_aceptacion,
                     --CONCLUSION DEL CONTROL DIFERIDO
                     NVL (a.fis_tipo_doc_con, '-') tipo_doc_conclusion,
                     NVL (a.fis_reg_nro_inf, '-') numero_informe,
                     NVL (TO_CHAR (a.fis_reg_fec_inf, 'dd/mm/yyyy'), '-')
                         "FECHA_INFORME",
                     NVL (a.fis_reg_nro_doc_con, '-') "NRO_DOC_CONCLUSION",
                     NVL (TO_CHAR (a.fis_reg_fec_doc_con, 'dd/mm/yyyy'), '-')
                         "FECHA_DOC_CONCLUSION",
                     NVL (TO_CHAR (a.fis_fec_finalizacion, 'dd/mm/yyyy'),
                          '-')
                         "FECHA_FINALIZACION",
                     NVL (a.fis_usuario_finalizacion, '-')
                         "USUARIO_REGISTRO_FINALIZACION",
                     --OBSERVACIONES ENCONTRADAS
                     DECODE (a.fis_ovalor, 'on', 'X', '-') "VALOR",
                     DECODE (a.fis_opartida, 'on', 'X', '-') "PARTIDA",
                     DECODE (a.fis_oorigen, 'on', 'X', '-') "ORIGEN",
                     DECODE (a.fis_osinobs, 'on', 'X', '-') "SIN_OBSERVACION",
                     --OBSERVACIONES EN CONTRAVENCIONES ENCONTRADAS
                     DECODE (a.fis_comision, 'on', 'X', '-') "OMISION_PAGO",
                     DECODE (a.fis_ccondel, 'on', 'X', '-')
                         "CONTRABANDO_DELITO",
                     DECODE (a.fis_cconcon, 'on', 'X', '-')
                         "CONTRABANDO_CONTRAVENCIONAL",
                     DECODE (a.fis_cconadu, 'on', 'X', '-')
                         "CONTRAVENCION_ADUANERA",
                     --NOTIFICACION DEL DOC DE CONCLUSION AL OPERADOR
                     NVL (TO_CHAR (a.fis_reg_fec_not_doc, 'dd/mm/yyyy'), '-')
                         fecha_notificacion_conclusion,
                     NVL (a.fis_reg_tip_not_doc, '-')
                         tipo_notificacion_conclusion,
                     NVL (a.fis_usuario_not_doc_con, '-')
                         usuario_registro_notificacion,
                     --ENVIO A LA UNIDAD LEGAL
                     NVL (TO_CHAR (a.fis_reg_fec_env_legal, 'dd/mm/yyyy'),
                          '-')
                         "FECHA_ENVIO",
                     NVL (a.fis_reg_nro_env_legal, '-') "NRO_DOC_REMISION",
                     NVL (a.fis_usuario_env_legal, '-')
                         "USUARIO_UNIDAD_LEGAL",
                     --ESTADO
                     fis_estado "ESTADO",
                     --valores
                     NVL (
                         sicodif_ga (a.fis_gestion,
                                     a.fis_gerencia,
                                     a.fis_nro_control),
                         0)
                         ga_recuperado,
                     NVL (
                         sicodif_iva (a.fis_gestion,
                                      a.fis_gerencia,
                                      a.fis_nro_control),
                         0)
                         iva_recuperado,
                     NVL (
                         sicodif_ice (a.fis_gestion,
                                      a.fis_gerencia,
                                      a.fis_nro_control),
                         0)
                         ice_recuperado,
                     NVL (
                         sicodif_ihd (a.fis_gestion,
                                      a.fis_gerencia,
                                      a.fis_nro_control),
                         0)
                         ihd_recuperado,
                     NVL (
                         sicodif_ga (a.fis_gestion,
                                     a.fis_gerencia,
                                     a.fis_nro_control),
                         0)
                     + NVL (
                           sicodif_iva (a.fis_gestion,
                                        a.fis_gerencia,
                                        a.fis_nro_control),
                           0)
                     + NVL (
                           sicodif_ice (a.fis_gestion,
                                        a.fis_gerencia,
                                        a.fis_nro_control),
                           0)
                     + NVL (
                           sicodif_ihd (a.fis_gestion,
                                        a.fis_gerencia,
                                        a.fis_nro_control),
                           0)
                         total_tributo,
                     NVL (
                         sicodif_sancionop (a.fis_gestion,
                                            a.fis_gerencia,
                                            a.fis_nro_control),
                         0)
                         sancionop_recuperado,
                     --MULTA CONTRAVENCIONAL ADUANERA
                     NVL (
                         sicodif_contra_adu (a.fis_gestion,
                                             a.fis_gerencia,
                                             a.fis_nro_control),
                         0)
                         sancion_contra_adu,
                     --MULTA CONTRABANDO CONTRAVENCIONAL
                     --FALTA
                     NVL (
                         sicodif_contra_contravencional (a.fis_gestion,
                                                         a.fis_gerencia,
                                                         a.fis_nro_control),
                         0)
                         sancion_contra_contravencional,
                     --sicodif_USUARIO(a.fis_gestion,a.fis_gerencia,a.fis_nro_control) USUARIOS,

                     NVL (a.fis_usuario_resultados, '-'),
                     fis_origen_control control_origen,
                     --TO_DATE (a.fis_fec_registro, 'DD/MM/yyyy') FECHA_CONTROL
                     --to_date(a.fis_fec_registro,'dd/mm/yyyy')
                     NVL (TO_CHAR (a.fis_fec_registro, 'DD/MM/YYYY'), '-')
                         fecha_control,
                     --OTROS DATOS
                     CASE
                         WHEN sicodif_25 (s.key_year,
                                          s.key_cuo,
                                          s.key_dec,
                                          s.key_nber) IS NOT NULL
                         THEN
                             sicodif_25 (s.key_year,
                                         s.key_cuo,
                                         s.key_dec,
                                         s.key_nber)
                         ELSE
                             '-'
                     END
                         AS pase_salida,
                     mercancia (s.key_year,
                                s.key_cuo,
                                s.key_dec,
                                s.key_nber)
                         mercancias,
                     NVL (crt_cabecera (s.key_year,
                                        s.key_cuo,
                                        s.key_dec,
                                        s.key_nber), 'ALEATORIO')
                         criterio_nivel_cab,
                     --MULTA CONTRABANDO DELITO
                     --FALTA
                     NVL (
                         sicodif_contra_delito (a.fis_gestion,
                                                a.fis_gerencia,
                                                a.fis_nro_control),
                         0)
                         sancion_contra_delito
              FROM   sicodif.cd_fiscalizacion a, sad_spy spy1, sad_gen s
             WHERE       s.sad_flw = '1'
                     AND s.sad_asmt_serial IS NOT NULL
                     AND s.lst_ope = 'U'
                     AND s.sad_num = '0'
                     AND fis_numver = '0'
                     AND fis_lst_ope = 'U'
                     AND fis_estado <> 'REGULARIZACION'
                     AND s.key_year = spy1.key_year(+)
                     AND s.key_cuo = spy1.key_cuo(+)
                     AND s.key_dec = spy1.key_dec(+)
                     AND s.key_nber = spy1.key_nber(+)
                     AND spy1.spy_sta(+) = '10'
                     AND spy1.spy_act(+) = '24'
                     AND s.key_year = a.fis_key_year
                     AND s.key_cuo = a.fis_key_cuo
                     AND s.key_dec = a.fis_key_dec
                     AND s.key_nber = a.fis_key_nber
                     AND a.fis_gerencia LIKE prm_gerencia
                     AND a.fis_reg_fec_doc_con BETWEEN TO_DATE (prm_fec_ini,
                                                                'dd/mm/yyyy')
                                                   AND  TO_DATE (
                                                            prm_fec_fin,
                                                            'dd/mm/yyyy');

        RETURN res;
    END;

    FUNCTION roundsidunea (p_numero IN NUMBER, p_preci IN NUMBER)
        RETURN NUMBER
    IS
        v_valor   NUMBER;
        v_dec     NUMBER;
    BEGIN
        --        IF p_preci = 0         THEN V_dec := 0.5; END IF;
        --        IF p_preci = 1         THEN V_dec := 0.05; END IF;
        --        IF p_preci = 2         THEN V_dec := 0.005; END IF;
        v_dec := 5 / POWER (10, p_preci + 1);
        v_valor := TRUNC (p_numero, p_preci);

        IF v_valor <= p_numero AND p_numero < v_valor + v_dec
        THEN
            RETURN v_valor;
        ELSE
            RETURN v_valor + (1 / POWER (10, p_preci));
        END IF;
    EXCEPTION
        WHEN OTHERS
        THEN
            ROLLBACK;
            RETURN -1;
    END roundsidunea;

    FUNCTION tipocambio (fecha IN DATE, tipo IN VARCHAR2)
        RETURN NUMBER
    IS
        v_valor   NUMBER;
    BEGIN
        SELECT   rat_exc
          INTO   v_valor
          FROM   unrattab
         WHERE       lst_ope = 'U'
                 AND cur_cod = tipo
                 AND eea_dov <= fecha
                 AND NVL (eea_eov, fecha + 1) >= fecha;

        RETURN v_valor;
    EXCEPTION
        WHEN NO_DATA_FOUND
        THEN
            RETURN 0;
        WHEN OTHERS
        THEN
            RETURN 0;
    END;

    FUNCTION reporte_concesionario (prm_nit          IN     VARCHAR2,
                                    prm_fec_ini      IN     VARCHAR2,
                                    prm_fec_fin      IN     VARCHAR2,
                                    prm_key_year     IN     VARCHAR2,
                                    prm_key_cuo      IN     VARCHAR2,
                                    prm_reg_serial   IN     VARCHAR2,
                                    prm_tipo         IN     VARCHAR2,
                                    ct                  OUT cursortype)
        RETURN VARCHAR2
    IS
        res    VARCHAR2 (50) := 'CORRECTO';
        cont   NUMBER (10);
    BEGIN
        -- ALTER SESSION SET NLS_TERRITORY=america;

        IF prm_tipo = 'nit'
        THEN
            OPEN ct FOR
                SELECT   *
                  FROM   (SELECT      s.sad_reg_year
                                   || '/'
                                   || s.key_cuo
                                   || '/'
                                   || s.sad_reg_serial
                                   || '-'
                                   || s.sad_reg_nber
                                       tramite,
                                   TO_CHAR (s.sad_reg_date, 'dd/mm/yyyy')
                                       fecha_registro,
                                   pkg_reporte.numid (s.sad_consignee,
                                                      s.key_year,
                                                      s.key_cuo,
                                                      s.key_dec,
                                                      s.key_nber,
                                                      s.sad_num)
                                       nit,
                                   NVL (pkg_reporte.nomimp (s.sad_consignee,
                                                            s.key_year,
                                                            s.key_cuo,
                                                            s.key_dec,
                                                            s.key_nber,
                                                            s.sad_num), '-')
                                       importador,
                                      TO_NUMBER (a.fis_gestion)
                                   || 'CD'
                                   || a.fis_gerencia
                                   || a.fis_nro_control
                                       nro_control,
                                   TO_CHAR (a.fis_fec_registro, 'dd/mm/yyyy')
                                       fecha_control,
                                   NVL (v.sad_icif_valn, 0) cif,
                                   a.fis_reg_nro_doc_con doc_con,
                                   a.fis_tipo_doc_con tipo_con,
                                   TO_CHAR (a.fis_reg_fec_doc_con,
                                            'dd/mm/yyyy')
                                       fec_doc_con,
                                   pkg_reporte.roundsidunea (
                                       a.fis_fob_final
                                       * pkg_reporte.tipocambio (
                                             a.fis_reg_fec_doc_con,
                                             'USD'),
                                       0)
                                   + pkg_reporte.roundsidunea (
                                         a.fis_fob_final
                                         * pkg_reporte.tipocambio (
                                               a.fis_reg_fec_doc_con,
                                               'USD')
                                         * 0.02,
                                         0)
                                   + NVL (v.sad_itotefr_valn, 0)
                                   + NVL (v.sad_itototc_valn, 0)
                                   - NVL (v.sad_itotded_valn, 0)
                                       cif_determinado,
                                   CASE
                                       WHEN pkg_reporte.sicodif_25 (
                                                s.key_year,
                                                s.key_cuo,
                                                s.key_dec,
                                                s.key_nber) IS NOT NULL
                                       THEN
                                           pkg_reporte.sicodif_25 (
                                               s.key_year,
                                               s.key_cuo,
                                               s.key_dec,
                                               s.key_nber)
                                       ELSE
                                           '-'
                                   END
                                       AS pase_salida
                            FROM   sicodif.cd_fiscalizacion a,
                                   sad_spy spy1,
                                   sad_gen s,
                                   ops$asy.sad_gen_vim v
                           WHERE       s.sad_flw = '1'
                                   AND s.sad_asmt_serial IS NOT NULL
                                   AND s.lst_ope = 'U'
                                   AND s.sad_num = '0'
                                   AND a.fis_numver = '0'
                                   AND a.fis_lst_ope = 'U'
                                   AND a.fis_estado <> 'REGULARIZACION'
                                   AND s.key_year = spy1.key_year(+)
                                   AND s.key_cuo = spy1.key_cuo(+)
                                   AND s.key_dec = spy1.key_dec(+)
                                   AND s.key_nber = spy1.key_nber(+)
                                   AND spy1.spy_sta(+) = '10'
                                   AND spy1.spy_act(+) = '24'
                                   AND s.key_year = a.fis_key_year
                                   AND s.key_cuo = a.fis_key_cuo
                                   AND s.key_dec = a.fis_key_dec
                                   AND s.key_nber = a.fis_key_nber
                                   AND v.key_year = a.fis_key_year
                                   AND v.key_cuo = a.fis_key_cuo
                                   AND v.key_dec = a.fis_key_dec
                                   AND v.key_nber = a.fis_key_nber
                                   AND v.sad_num = 0
                                   AND a.fis_fob_final IS NOT NULL
                                   AND a.fis_reg_fec_doc_con IS NOT NULL
                                   AND a.fis_fec_pase_salida IS NULL
                                   AND TRUNC (a.fis_fec_registro) BETWEEN TO_DATE (
                                                                              prm_fec_ini,
                                                                              'dd/mm/yyyy')
                                                                      AND  TO_DATE (
                                                                               prm_fec_fin,
                                                                               'dd/mm/yyyy')
                          UNION
                          SELECT      s.sad_reg_year
                                   || '/'
                                   || s.key_cuo
                                   || '/'
                                   || s.sad_reg_serial
                                   || '-'
                                   || s.sad_reg_nber
                                       tramite,
                                   TO_CHAR (s.sad_reg_date, 'dd/mm/yyyy')
                                       fecha_registro,
                                   pkg_reporte.numid (s.sad_consignee,
                                                      s.key_year,
                                                      s.key_cuo,
                                                      s.key_dec,
                                                      s.key_nber,
                                                      s.sad_num)
                                       nit,
                                   NVL (pkg_reporte.nomimp (s.sad_consignee,
                                                            s.key_year,
                                                            s.key_cuo,
                                                            s.key_dec,
                                                            s.key_nber,
                                                            s.sad_num), '-')
                                       importador,
                                      TO_NUMBER (a.fis_gestion)
                                   || 'CD'
                                   || a.fis_gerencia
                                   || a.fis_nro_control
                                       nro_control,
                                   TO_CHAR (a.fis_fec_registro, 'dd/mm/yyyy')
                                       fecha_control,
                                   NVL (v.sad_icif_valn, 0) cif,
                                   a.fis_reg_nro_doc_con doc_con,
                                   a.fis_tipo_doc_con tipo_con,
                                   TO_CHAR (a.fis_reg_fec_doc_con,
                                            'dd/mm/yyyy')
                                       fec_doc_con,
                                   pkg_reporte.roundsidunea (
                                       a.fis_fob_final
                                       * pkg_reporte.tipocambio (
                                             a.fis_reg_fec_doc_con,
                                             'USD'),
                                       0)
                                   + pkg_reporte.roundsidunea (
                                         a.fis_fob_final
                                         * pkg_reporte.tipocambio (
                                               a.fis_reg_fec_doc_con,
                                               'USD')
                                         * 0.02,
                                         0)
                                   + NVL (v.sad_itotefr_valn, 0)
                                   + NVL (v.sad_itototc_valn, 0)
                                   - NVL (v.sad_itotded_valn, 0)
                                       cif_determinado,
                                   CASE
                                       WHEN pkg_reporte.sicodif_25 (
                                                s.key_year,
                                                s.key_cuo,
                                                s.key_dec,
                                                s.key_nber) IS NOT NULL
                                       THEN
                                           pkg_reporte.sicodif_25 (
                                               s.key_year,
                                               s.key_cuo,
                                               s.key_dec,
                                               s.key_nber)
                                       ELSE
                                           '-'
                                   END
                                       AS pase_salida
                            FROM   sicodif.cd_fiscalizacion a,
                                   sad_spy spy1,
                                   sad_gen s,
                                   ops$asy.sad_gen_vim v
                           WHERE       s.sad_flw = '1'
                                   AND s.sad_asmt_serial IS NOT NULL
                                   AND s.lst_ope = 'U'
                                   AND s.sad_num = '0'
                                   AND a.fis_numver = '0'
                                   AND a.fis_lst_ope = 'U'
                                   AND a.fis_estado <> 'REGULARIZACION'
                                   AND s.key_year = spy1.key_year(+)
                                   AND s.key_cuo = spy1.key_cuo(+)
                                   AND s.key_dec IS NULL
                                   AND spy1.key_dec(+) IS NULL
                                   AND s.key_nber = spy1.key_nber(+)
                                   AND spy1.spy_sta(+) = '10'
                                   AND spy1.spy_act(+) = '24'
                                   AND s.key_year = a.fis_key_year
                                   AND s.key_cuo = a.fis_key_cuo
                                   AND a.fis_key_dec IS NULL
                                   AND s.key_nber = a.fis_key_nber
                                   AND v.key_year = a.fis_key_year
                                   AND v.key_cuo = a.fis_key_cuo
                                   AND v.key_dec IS NULL
                                   AND v.key_nber = a.fis_key_nber
                                   AND v.sad_num = 0
                                   AND a.fis_fob_final IS NOT NULL
                                   AND a.fis_reg_fec_doc_con IS NOT NULL
                                   AND a.fis_fec_pase_salida IS NULL
                                   AND TRUNC (a.fis_fec_registro) BETWEEN TO_DATE (
                                                                              prm_fec_ini,
                                                                              'dd/mm/yyyy')
                                                                      AND  TO_DATE (
                                                                               prm_fec_fin,
                                                                               'dd/mm/yyyy'))
                         tbl
                 WHERE   tbl.nit = prm_nit;
        END IF;

        IF prm_tipo = 'dui'
        THEN
            OPEN ct FOR
                SELECT      s.sad_reg_year
                         || '/'
                         || s.key_cuo
                         || '/'
                         || s.sad_reg_serial
                         || '-'
                         || s.sad_reg_nber
                             tramite,
                         TO_CHAR (s.sad_reg_date, 'dd/mm/yyyy')
                             fecha_registro,
                         pkg_reporte.numid (s.sad_consignee,
                                            s.key_year,
                                            s.key_cuo,
                                            s.key_dec,
                                            s.key_nber,
                                            s.sad_num)
                             nit,
                         NVL (pkg_reporte.nomimp (s.sad_consignee,
                                                  s.key_year,
                                                  s.key_cuo,
                                                  s.key_dec,
                                                  s.key_nber,
                                                  s.sad_num), '-')
                             importador,
                            TO_NUMBER (a.fis_gestion)
                         || 'CD'
                         || a.fis_gerencia
                         || a.fis_nro_control
                             nro_control,
                         TO_CHAR (a.fis_fec_registro, 'dd/mm/yyyy')
                             fecha_control,
                         NVL (v.sad_icif_valn, 0) cif,
                         a.fis_reg_nro_doc_con doc_con,
                         a.fis_tipo_doc_con tipo_con,
                         TO_CHAR (a.fis_reg_fec_doc_con, 'dd/mm/yyyy')
                             fec_doc_con,
                         pkg_reporte.roundsidunea (
                             a.fis_fob_final
                             * pkg_reporte.tipocambio (a.fis_reg_fec_doc_con,
                                                       'USD'),
                             0)
                         + pkg_reporte.roundsidunea (
                               a.fis_fob_final
                               * pkg_reporte.tipocambio (
                                     a.fis_reg_fec_doc_con,
                                     'USD')
                               * 0.02,
                               0)
                         + NVL (v.sad_itotefr_valn, 0)
                         + NVL (v.sad_itototc_valn, 0)
                         - NVL (v.sad_itotded_valn, 0)
                             cif_determinado,
                         CASE
                             WHEN pkg_reporte.sicodif_25 (s.key_year,
                                                          s.key_cuo,
                                                          s.key_dec,
                                                          s.key_nber) IS NOT NULL
                             THEN
                                 pkg_reporte.sicodif_25 (s.key_year,
                                                         s.key_cuo,
                                                         s.key_dec,
                                                         s.key_nber)
                             ELSE
                                 '-'
                         END
                             AS pase_salida
                  FROM   sicodif.cd_fiscalizacion a,
                         sad_spy spy1,
                         sad_gen s,
                         ops$asy.sad_gen_vim v
                 WHERE       s.sad_flw = '1'
                         AND s.sad_asmt_serial IS NOT NULL
                         AND s.lst_ope = 'U'
                         AND s.sad_num = '0'
                         AND a.fis_numver = '0'
                         AND a.fis_lst_ope = 'U'
                         AND a.fis_estado <> 'REGULARIZACION'
                         AND s.key_year = spy1.key_year(+)
                         AND s.key_cuo = spy1.key_cuo(+)
                         AND s.key_dec = spy1.key_dec(+)
                         AND s.key_nber = spy1.key_nber(+)
                         AND spy1.spy_sta(+) = '10'
                         AND spy1.spy_act(+) = '24'
                         AND s.key_year = a.fis_key_year
                         AND s.key_cuo = a.fis_key_cuo
                         AND s.key_dec = a.fis_key_dec
                         AND s.key_nber = a.fis_key_nber
                         AND v.key_year = a.fis_key_year
                         AND v.key_cuo = a.fis_key_cuo
                         AND v.key_dec = a.fis_key_dec
                         AND v.key_nber = a.fis_key_nber
                         AND v.sad_num = 0
                         AND a.fis_fob_final IS NOT NULL
                         AND a.fis_reg_fec_doc_con IS NOT NULL
                         AND a.fis_fec_pase_salida IS NULL
                         AND a.sad_reg_year = prm_key_year
                         AND a.fis_key_cuo = prm_key_cuo
                         AND a.sad_reg_nber = prm_reg_serial
                UNION
                SELECT      s.sad_reg_year
                         || '/'
                         || s.key_cuo
                         || '/'
                         || s.sad_reg_serial
                         || '-'
                         || s.sad_reg_nber
                             tramite,
                         TO_CHAR (s.sad_reg_date, 'dd/mm/yyyy')
                             fecha_registro,
                         pkg_reporte.numid (s.sad_consignee,
                                            s.key_year,
                                            s.key_cuo,
                                            s.key_dec,
                                            s.key_nber,
                                            s.sad_num)
                             nit,
                         NVL (pkg_reporte.nomimp (s.sad_consignee,
                                                  s.key_year,
                                                  s.key_cuo,
                                                  s.key_dec,
                                                  s.key_nber,
                                                  s.sad_num), '-')
                             importador,
                            TO_NUMBER (a.fis_gestion)
                         || 'CD'
                         || a.fis_gerencia
                         || a.fis_nro_control
                             nro_control,
                         TO_CHAR (a.fis_fec_registro, 'dd/mm/yyyy')
                             fecha_control,
                         NVL (v.sad_icif_valn, 0) cif,
                         a.fis_reg_nro_doc_con doc_con,
                         a.fis_tipo_doc_con tipo_con,
                         TO_CHAR (a.fis_reg_fec_doc_con, 'dd/mm/yyyy')
                             fec_doc_con,
                         pkg_reporte.roundsidunea (
                             a.fis_fob_final
                             * pkg_reporte.tipocambio (a.fis_reg_fec_doc_con,
                                                       'USD'),
                             0)
                         + pkg_reporte.roundsidunea (
                               a.fis_fob_final
                               * pkg_reporte.tipocambio (
                                     a.fis_reg_fec_doc_con,
                                     'USD')
                               * 0.02,
                               0)
                         + NVL (v.sad_itotefr_valn, 0)
                         + NVL (v.sad_itototc_valn, 0)
                         - NVL (v.sad_itotded_valn, 0)
                             cif_determinado,
                         CASE
                             WHEN pkg_reporte.sicodif_25 (s.key_year,
                                                          s.key_cuo,
                                                          s.key_dec,
                                                          s.key_nber) IS NOT NULL
                             THEN
                                 pkg_reporte.sicodif_25 (s.key_year,
                                                         s.key_cuo,
                                                         s.key_dec,
                                                         s.key_nber)
                             ELSE
                                 '-'
                         END
                             AS pase_salida
                  FROM   sicodif.cd_fiscalizacion a,
                         sad_spy spy1,
                         sad_gen s,
                         ops$asy.sad_gen_vim v
                 WHERE       s.sad_flw = '1'
                         AND s.sad_asmt_serial IS NOT NULL
                         AND s.lst_ope = 'U'
                         AND s.sad_num = '0'
                         AND a.fis_numver = '0'
                         AND a.fis_lst_ope = 'U'
                         AND a.fis_estado <> 'REGULARIZACION'
                         AND s.key_year = spy1.key_year(+)
                         AND s.key_cuo = spy1.key_cuo(+)
                         AND s.key_dec IS NULL
                         AND spy1.key_dec(+) IS NULL
                         AND s.key_nber = spy1.key_nber(+)
                         AND spy1.spy_sta(+) = '10'
                         AND spy1.spy_act(+) = '24'
                         AND s.key_year = a.fis_key_year
                         AND s.key_cuo = a.fis_key_cuo
                         AND a.fis_key_dec IS NULL
                         AND s.key_nber = a.fis_key_nber
                         AND v.key_year = a.fis_key_year
                         AND v.key_cuo = a.fis_key_cuo
                         AND v.key_dec IS NULL
                         AND v.key_nber = a.fis_key_nber
                         AND v.sad_num = 0
                         AND a.fis_fob_final IS NOT NULL
                         AND a.fis_reg_fec_doc_con IS NOT NULL
                         AND a.fis_fec_pase_salida IS NULL
                         AND a.sad_reg_year = prm_key_year
                         AND a.fis_key_cuo = prm_key_cuo
                         AND a.sad_reg_nber = prm_reg_serial;
        END IF;


        RETURN res;
    END;

    FUNCTION sidunea_control (gestion   IN VARCHAR2,
                              aduana    IN VARCHAR2,
                              numero    IN VARCHAR2,
                              usuario   IN VARCHAR2)
        RETURN VARCHAR2
    IS
        hay             NUMBER := 0;
        nro             NUMBER := 0;
        v_key_year      VARCHAR2 (4);
        v_key_cuo       VARCHAR2 (4);
        v_key_dec       VARCHAR2 (17);
        v_key_nber      VARCHAR2 (13);
        v_fob_inicial   NUMBER (18, 2);
        v_fec_pase      DATE;
        gerencia        VARCHAR2 (4);
        cont            NUMBER (8) := 0;
    BEGIN
        --VERIFICAMOS EXISTENCIA DEL CONTROL LA DUI A REGISTRAR
        SELECT   COUNT (1)
          INTO   hay
          FROM   sicodif.cd_fiscalizacion a
         WHERE       a.sad_reg_year = gestion
                 AND a.fis_key_cuo = aduana
                 AND a.sad_reg_serial = 'C'
                 AND a.sad_reg_nber = numero
                 AND a.fis_numver = 0
                 AND a.fis_lst_ope = 'U';

        IF hay = 0
        THEN
            --RECUPERAMOS LA LLAVE DE LA DECLARACION Y EL VALOR FOB INICIAL
            SELECT   a.key_year,
                     a.key_cuo,
                     a.key_dec,
                     a.key_nber,
                     a.sad_tot_invoiced
              INTO   v_key_year,
                     v_key_cuo,
                     v_key_dec,
                     v_key_nber,
                     v_fob_inicial
              FROM   ops$asy.sad_gen a
             WHERE       a.sad_reg_year = gestion
                     AND a.key_cuo = aduana
                     AND a.sad_reg_serial = 'C'
                     AND a.sad_reg_nber = numero
                     AND a.lst_ope = 'U'
                     AND a.sad_num = 0;

            --VERIFICAMOS SI TIENE FECHA DE PASE DE SALIDA
            SELECT   COUNT (1)
              INTO   cont
              FROM   ops$asy.sad_spy a
             WHERE       a.key_year = v_key_year
                     AND a.key_cuo = v_key_cuo
                     AND NVL (a.key_dec, 0) = NVL (v_key_dec, 0)
                     AND a.key_nber = v_key_nber
                     AND a.spy_act = 25
                     AND ROWNUM = 1;

            --RECUPERAMOS LA FECHA DE PASE DE SALIDA, SI NO TIENE SE COLOCA NULL
            IF cont = 0
            THEN
                v_fec_pase := NULL;
            ELSE
                SELECT   DECODE (
                             a.upd_dat,
                             NULL,
                             NULL,
                             TO_DATE (a.upd_dat || ' ' || a.upd_hor,
                                      'DD/MM/YYYY hh24:mi:ss'))
                  INTO   v_fec_pase
                  FROM   ops$asy.sad_spy a
                 WHERE       a.key_year = v_key_year
                         AND a.key_cuo = v_key_cuo
                         AND NVL (a.key_dec, 0) = NVL (v_key_dec, 0)
                         AND a.key_nber = v_key_nber
                         AND a.spy_act = 25
                         AND ROWNUM = 1;
            END IF;

            --RECUPERAMOS EL CODIGO DE LA GERENCIA EN BASE AL CODIGO DE ADUANA
            SELECT   DECODE (reg_cod,
                             2, 'GRLP',
                             3, 'GRCB',
                             4, 'GROR',
                             5, 'GRPT',
                             6, 'GRPT',
                             7, 'GRSC',
                             NULL)
              INTO   gerencia
              FROM   ops$asy.uncuoreg
             WHERE   cuo_cod = aduana;

            --INSERTAMOS EL REGISTRO
            INSERT INTO sicodif.cd_fiscalizacion a (a.fis_gestion,
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
              VALUES   (TO_CHAR (SYSDATE, 'yyyy'),
                        gerencia,
                        0,                                                -- S
                        v_key_year,
                        v_key_cuo,
                        v_key_nber,
                        v_key_dec,
                        gestion,
                        'C',
                        numero,
                        SYSDATE,
                        usuario,
                        'REGISTRADO',
                        'U',
                        usuario,
                        0,
                        SYSDATE,
                        '-',
                        'SIDUNEA',
                        v_fec_pase,
                        v_fob_inicial);

            COMMIT;
            RETURN 'Correcto';
        ELSE
            RETURN 'Ya se encuentra registrado';
        END IF;
    EXCEPTION
        WHEN OTHERS
        THEN
            ROLLBACK;
            RETURN ('Error: ' || SQLERRM);
    END;

    FUNCTION reporteblock (prm_aduana    IN     VARCHAR2,
                           prm_fec_ini   IN     VARCHAR2,
                           prm_fec_fin   IN     VARCHAR2,
                           ct               OUT cursortype)
        RETURN VARCHAR2
    IS
        res    VARCHAR2 (50) := '';
        cont   NUMBER (10);
    BEGIN
        OPEN ct FOR
            SELECT   DECODE (a.fis_gerencia,
                             'GRLP', 'GERENCIA REGIONAL LA PAZ',
                             'GRCB', 'GERENCIA REGIONAL COCHABAMBA',
                             'GRSC', 'GERENCIA REGIONAL SANTA CRUZ',
                             'GROR', 'GERENCIA REGIONAL ORURO',
                             'GRTJ', 'GERENCIA REGIONAL TARIJA',
                             'GRPT', 'GERENCIA REGIONAL POTOSI',
                             'GERENCIA NACIONAL DE FISCALIZACION ')
                         gerencia,
                        a.sad_reg_year
                     || '/'
                     || a.fis_key_cuo
                     || '/C-'
                     || a.sad_reg_nber,
                     a.fis_gestion || 'CD' || a.fis_gerencia
                     || DECODE (LENGTH (a.fis_nro_control),
                                1, '000' || a.fis_nro_control,
                                2, '00' || a.fis_nro_control,
                                3, '0' || a.fis_nro_control,
                                a.fis_nro_control),
                     TO_CHAR (g.upd_dat, 'dd/mm/yyyy') || ' ' || g.upd_hor,
                     DECODE (d.upd_dat, NULL, 'BLOQUEADO', 'LIBERADO'),
                     TO_CHAR (d.upd_dat, 'dd/mm/yyyy') || ' ' || d.upd_hor,
                     DECODE (d.upd_dat,
                             NULL, ' ',
                             NVL (m.blq_observacion, ' '))
              FROM   sicodif.cd_fiscalizacion a,
                     ops$asy.sad_spy g,
                     ops$asy.sad_spy d,
                     mira.mir_bloqueo_dui m
             WHERE       a.fis_key_year = g.key_year
                     AND a.fis_key_cuo = g.key_cuo
                     AND a.fis_key_nber = g.key_nber
                     AND a.fis_key_dec IS NULL
                     AND g.key_dec IS NULL
                     AND g.spy_sta = '27'
                     AND g.spy_act = '72'
                     AND a.fis_key_year = d.key_year(+)
                     AND a.fis_key_cuo = d.key_cuo(+)
                     AND a.fis_key_nber = d.key_nber(+)
                     AND d.key_dec(+) IS NULL
                     AND d.spy_sta(+) = '27'
                     AND d.spy_act(+) = '73'
                     AND a.fis_lst_ope = 'U'
                     AND a.fis_numver = 0
                     AND m.blq_dui_reg_gestion(+) = a.sad_reg_year
                     AND m.blq_dui_key_cuo(+) = a.fis_key_cuo
                     AND m.blq_dui_reg_numero(+) = a.sad_reg_nber
                     AND m.blq_lst_ope(+) = 'U'
                     AND m.blq_num(+) = 0
                     AND g.upd_dat BETWEEN TO_DATE (prm_fec_ini,
                                                    'dd/mm/yyyy')
                                       AND  TO_DATE (prm_fec_fin,
                                                     'dd/mm/yyyy')
                     AND a.fis_key_cuo LIKE prm_aduana
            UNION
            SELECT   DECODE (a.fis_gerencia,
                             'GRLP', 'GERENCIA REGIONAL LA PAZ',
                             'GRCB', 'GERENCIA REGIONAL COCHABAMBA',
                             'GRSC', 'GERENCIA REGIONAL SANTA CRUZ',
                             'GROR', 'GERENCIA REGIONAL ORURO',
                             'GRTJ', 'GERENCIA REGIONAL TARIJA',
                             'GRPT', 'GERENCIA REGIONAL POTOSI',
                             'GERENCIA NACIONAL DE FISCALIZACION ')
                         gerencia,
                        a.sad_reg_year
                     || '/'
                     || a.fis_key_cuo
                     || '/C-'
                     || a.sad_reg_nber,
                     a.fis_gestion || 'CD' || a.fis_gerencia
                     || DECODE (LENGTH (a.fis_nro_control),
                                1, '000' || a.fis_nro_control,
                                2, '00' || a.fis_nro_control,
                                3, '0' || a.fis_nro_control,
                                a.fis_nro_control),
                     TO_CHAR (g.upd_dat, 'dd/mm/yyyy') || ' ' || g.upd_hor,
                     DECODE (d.upd_dat, NULL, 'BLOQUEADO', 'LIBERADO'),
                     TO_CHAR (d.upd_dat, 'dd/mm/yyyy') || ' ' || d.upd_hor,
                     DECODE (d.upd_dat,
                             NULL, ' ',
                             NVL (m.blq_observacion, ' '))
              FROM   sicodif.cd_fiscalizacion a,
                     ops$asy.sad_spy g,
                     ops$asy.sad_spy d,
                     mira.mir_bloqueo_dui m
             WHERE       a.fis_key_year = g.key_year
                     AND a.fis_key_cuo = g.key_cuo
                     AND a.fis_key_nber = g.key_nber
                     AND NOT a.fis_key_dec IS NULL
                     AND a.fis_key_dec = g.key_dec
                     AND g.spy_sta = '27'
                     AND g.spy_act = '72'
                     AND a.fis_key_year = d.key_year(+)
                     AND a.fis_key_cuo = d.key_cuo(+)
                     AND a.fis_key_nber = d.key_nber(+)
                     AND a.fis_key_dec = d.key_dec(+)
                     AND d.spy_sta(+) = '27'
                     AND d.spy_act(+) = '73'
                     AND a.fis_lst_ope = 'U'
                     AND a.fis_numver = 0
                     AND m.blq_dui_reg_gestion(+) = a.sad_reg_year
                     AND m.blq_dui_key_cuo(+) = a.fis_key_cuo
                     AND m.blq_dui_reg_numero(+) = a.sad_reg_nber
                     AND m.blq_lst_ope(+) = 'U'
                     AND m.blq_num(+) = 0
                     AND g.upd_dat BETWEEN TO_DATE (prm_fec_ini,
                                                    'dd/mm/yyyy')
                                       AND  TO_DATE (prm_fec_fin,
                                                     'dd/mm/yyyy')
                     AND a.fis_key_cuo LIKE prm_aduana;

        RETURN 'CORRECTO';
    END;

    FUNCTION reporteblockdui (prm_gestion   IN     VARCHAR2,
                              prm_aduana    IN     VARCHAR2,
                              prm_numero    IN     VARCHAR2,
                              ct               OUT cursortype)
        RETURN VARCHAR2
    IS
        res    VARCHAR2 (50) := '';
        cont   NUMBER (10);
    BEGIN
        OPEN ct FOR
            SELECT   DECODE (a.fis_gerencia,
                             'GRLP', 'GERENCIA REGIONAL LA PAZ',
                             'GRCB', 'GERENCIA REGIONAL COCHABAMBA',
                             'GRSC', 'GERENCIA REGIONAL SANTA CRUZ',
                             'GROR', 'GERENCIA REGIONAL ORURO',
                             'GRTJ', 'GERENCIA REGIONAL TARIJA',
                             'GRPT', 'GERENCIA REGIONAL POTOSI',
                             'GERENCIA NACIONAL DE FISCALIZACION ')
                         gerencia,
                        a.sad_reg_year
                     || '/'
                     || a.fis_key_cuo
                     || '/C-'
                     || a.sad_reg_nber,
                     a.fis_gestion || 'CD' || a.fis_gerencia
                     || DECODE (LENGTH (a.fis_nro_control),
                                1, '000' || a.fis_nro_control,
                                2, '00' || a.fis_nro_control,
                                3, '0' || a.fis_nro_control,
                                a.fis_nro_control),
                     TO_CHAR (g.upd_dat, 'dd/mm/yyyy') || ' ' || g.upd_hor,
                     DECODE (d.upd_dat, NULL, 'BLOQUEADO', 'LIBERADO'),
                     TO_CHAR (d.upd_dat, 'dd/mm/yyyy') || ' ' || d.upd_hor,
                     DECODE (d.upd_dat,
                             NULL, ' ',
                             NVL (m.blq_observacion, ' '))
              FROM   sicodif.cd_fiscalizacion a,
                     ops$asy.sad_spy g,
                     ops$asy.sad_spy d,
                     mira.mir_bloqueo_dui m
             WHERE       a.fis_key_year = g.key_year
                     AND a.fis_key_cuo = g.key_cuo
                     AND a.fis_key_nber = g.key_nber
                     AND a.fis_key_dec IS NULL
                     AND g.key_dec IS NULL
                     AND g.spy_sta = '27'
                     AND g.spy_act = '72'
                     AND a.fis_key_year = d.key_year(+)
                     AND a.fis_key_cuo = d.key_cuo(+)
                     AND a.fis_key_nber = d.key_nber(+)
                     AND d.key_dec(+) IS NULL
                     AND d.spy_sta(+) = '27'
                     AND d.spy_act(+) = '73'
                     AND a.fis_lst_ope = 'U'
                     AND a.fis_numver = 0
                     AND m.blq_dui_reg_gestion(+) = a.sad_reg_year
                     AND m.blq_dui_key_cuo(+) = a.fis_key_cuo
                     AND m.blq_dui_reg_numero(+) = a.sad_reg_nber
                     AND m.blq_lst_ope(+) = 'U'
                     AND m.blq_num(+) = 0
                     AND a.sad_reg_year = prm_gestion
                     AND a.fis_key_cuo = prm_aduana
                     AND a.sad_reg_nber = prm_numero
            UNION
            SELECT   DECODE (a.fis_gerencia,
                             'GRLP', 'GERENCIA REGIONAL LA PAZ',
                             'GRCB', 'GERENCIA REGIONAL COCHABAMBA',
                             'GRSC', 'GERENCIA REGIONAL SANTA CRUZ',
                             'GROR', 'GERENCIA REGIONAL ORURO',
                             'GRTJ', 'GERENCIA REGIONAL TARIJA',
                             'GRPT', 'GERENCIA REGIONAL POTOSI',
                             'GERENCIA NACIONAL DE FISCALIZACION ')
                         gerencia,
                        a.sad_reg_year
                     || '/'
                     || a.fis_key_cuo
                     || '/C-'
                     || a.sad_reg_nber,
                     a.fis_gestion || 'CD' || a.fis_gerencia
                     || DECODE (LENGTH (a.fis_nro_control),
                                1, '000' || a.fis_nro_control,
                                2, '00' || a.fis_nro_control,
                                3, '0' || a.fis_nro_control,
                                a.fis_nro_control),
                     TO_CHAR (g.upd_dat, 'dd/mm/yyyy') || ' ' || g.upd_hor,
                     DECODE (d.upd_dat, NULL, 'BLOQUEADO', 'LIBERADO'),
                     TO_CHAR (d.upd_dat, 'dd/mm/yyyy') || ' ' || d.upd_hor,
                     DECODE (d.upd_dat,
                             NULL, ' ',
                             NVL (m.blq_observacion, ' '))
              FROM   sicodif.cd_fiscalizacion a,
                     ops$asy.sad_spy g,
                     ops$asy.sad_spy d,
                     mira.mir_bloqueo_dui m
             WHERE       a.fis_key_year = g.key_year
                     AND a.fis_key_cuo = g.key_cuo
                     AND a.fis_key_nber = g.key_nber
                     AND NOT a.fis_key_dec IS NULL
                     AND a.fis_key_dec = g.key_dec
                     AND g.spy_sta = '27'
                     AND g.spy_act = '72'
                     AND a.fis_key_year = d.key_year(+)
                     AND a.fis_key_cuo = d.key_cuo(+)
                     AND a.fis_key_nber = d.key_nber(+)
                     AND a.fis_key_dec = d.key_dec(+)
                     AND d.spy_sta(+) = '27'
                     AND d.spy_act(+) = '73'
                     AND a.fis_lst_ope = 'U'
                     AND a.fis_numver = 0
                     AND m.blq_dui_reg_gestion(+) = a.sad_reg_year
                     AND m.blq_dui_key_cuo(+) = a.fis_key_cuo
                     AND m.blq_dui_reg_numero(+) = a.sad_reg_nber
                     AND m.blq_lst_ope(+) = 'U'
                     AND m.blq_num(+) = 0
                     AND a.sad_reg_year = prm_gestion
                     AND a.fis_key_cuo = prm_aduana
                     AND a.sad_reg_nber = prm_numero;

        RETURN 'CORRECTO';
    END;

    FUNCTION reporteconcierre (prm_fec_ini   IN     VARCHAR2,
                               prm_fec_fin   IN     VARCHAR2,
                               ct               OUT cursortype)
        RETURN VARCHAR2
    IS
        res    VARCHAR2 (50) := '';
        cont   NUMBER (10);
    BEGIN
        OPEN ct FOR
              SELECT   DISTINCT
                       u.cuo_nam,
                          a.sad_reg_year
                       || '/'
                       || a.fis_key_cuo
                       || '/C-'
                       || a.sad_reg_nber,
                       a.fis_gestion || 'CD' || a.fis_gerencia
                       || DECODE (LENGTH (a.fis_nro_control),
                                  1, '000' || a.fis_nro_control,
                                  2, '00' || a.fis_nro_control,
                                  3, '0' || a.fis_nro_control,
                                  a.fis_nro_control),
                       TO_CHAR (a.fis_fecha_cierre, 'dd/mm/yyyy hh24:mi'),
                          a.fis_usuario
                       || ' : '
                       || fc.usuapepat
                       || ' '
                       || fc.usuapemat
                       || ' '
                       || fc.usunombre,
                          a.fis_fiscalizador
                       || ' : '
                       || fa.usuapepat
                       || ' '
                       || fa.usuapemat
                       || ' '
                       || fa.usunombre,
                       a.fis_obs_cierre
                FROM   sicodif.cd_fiscalizacion a,
                       sicodif.cd_fiscalizacion c,
                       ops$asy.uncuotab u,
                       usuario.usuario fc,
                       usuario.usuario fa
               WHERE       a.fis_gestion = c.fis_gestion
                       AND a.fis_gerencia = c.fis_gerencia
                       AND a.fis_nro_control = c.fis_nro_control
                       AND a.fis_numver = 0
                       AND c.fis_estado = 'CIERRE'
                       AND u.cuo_cod = a.fis_key_cuo
                       AND u.lst_ope = 'U'
                       AND fc.usucodusu = a.fis_usuario
                       AND fc.usu_num = 0
                       AND fa.usucodusu = a.fis_fiscalizador
                       AND fa.usu_num = 0
                       AND a.fis_fecha_cierre BETWEEN TO_DATE (prm_fec_ini,
                                                               'dd/mm/yyyy')
                                                  AND  TO_DATE (prm_fec_fin,
                                                                'dd/mm/yyyy')
            ORDER BY   1, 2;

        RETURN 'CORRECTO';
    END;

    FUNCTION reportependientes (prm_gerencia   IN     VARCHAR2,
                                prm_fec_ini    IN     VARCHAR2,
                                prm_fec_fin    IN     VARCHAR2,
                                ct                OUT cursortype)
        RETURN VARCHAR2
    IS
        res    VARCHAR2 (50) := '';
        cont   NUMBER (10);
    BEGIN
        OPEN ct FOR
              SELECT   tbl.fiscalizador,
                       SUM (asignado) asig,
                       SUM (pendiente) pen
                FROM   (SELECT      a.fis_fiscalizador
                                 || ' : '
                                 || fa.usuapepat
                                 || ' '
                                 || fa.usuapemat
                                 || ' '
                                 || fa.usunombre
                                     fiscalizador,
                                 DECODE (a.fis_fec_asignacion, NULL, 0, 1)
                                     asignado,
                                 DECODE (a.fis_reg_fec_doc_con, NULL, 1, 0)
                                     pendiente
                          FROM   sicodif.cd_fiscalizacion a, usuario.usuario fa
                         WHERE       a.fis_lst_ope = 'U'
                                 AND a.fis_numver = 0
                                 AND fa.usucodusu = a.fis_fiscalizador
                                 AND fa.usu_num = 0
                                 AND a.fis_gerencia LIKE prm_gerencia
                                 AND a.fis_fec_asignacion BETWEEN TO_DATE (
                                                                      prm_fec_ini,
                                                                      'dd/mm/yyyy')
                                                              AND  TO_DATE (
                                                                       prm_fec_fin,
                                                                       'dd/mm/yyyy'))
                       tbl
            GROUP BY   tbl.fiscalizador
            ORDER BY   1;

        RETURN 'CORRECTO';
    END;
END;
/
