CREATE TABLE cd_enmiendas
    (enm_codigo                     NUMBER(18,0) NOT NULL,
    fis_gestion                    VARCHAR2(4 BYTE) NOT NULL,
    fis_gerencia                   VARCHAR2(4 BYTE) NOT NULL,
    fis_nro_control                NUMBER(18,0) NOT NULL,
    enm_tipo_enmienda              VARCHAR2(50 BYTE) NOT NULL,
    enm_info_original              VARCHAR2(1000 BYTE) NOT NULL,
    enm_info_enmendado             VARCHAR2(1000 BYTE) NOT NULL,
    enm_observacion                VARCHAR2(200 BYTE) NOT NULL,
    enm_lst_ope                    VARCHAR2(1 BYTE) NOT NULL,
    enm_usuario                    VARCHAR2(30 BYTE) NOT NULL,
    enm_numver                     NUMBER(3,0) NOT NULL,
    enm_fecha                      DATE)
  NOPARALLEL
  LOGGING
/

CREATE TABLE cd_fiscalizacion
    (fis_gestion                    VARCHAR2(4 BYTE),
    fis_gerencia                   VARCHAR2(4 BYTE),
    fis_nro_control                NUMBER(18,0),
    fis_key_year                   VARCHAR2(4 BYTE),
    fis_key_cuo                    VARCHAR2(4 BYTE),
    fis_key_nber                   VARCHAR2(13 BYTE),
    fis_key_dec                    VARCHAR2(17 BYTE),
    sad_reg_year                   VARCHAR2(4 BYTE),
    sad_reg_serial                 VARCHAR2(1 BYTE),
    sad_reg_nber                   NUMBER,
    fis_fec_pase_salida            DATE,
    fis_fec_registro               DATE,
    fis_usuario_registro           VARCHAR2(30 BYTE),
    fis_fec_asignacion             DATE,
    fis_usuario_asignacion         VARCHAR2(30 BYTE),
    fis_fec_notificacion           DATE,
    fis_obs_notificacion           VARCHAR2(200 BYTE),
    fis_tipo_notificacion          VARCHAR2(50 BYTE),
    fis_usuario_notificacion       VARCHAR2(30 BYTE),
    fis_fec_liquidacion            DATE,
    fis_tributo_omitido_ga         VARCHAR2(30 BYTE),
    fis_tributo_omitido_iva        VARCHAR2(30 BYTE),
    fis_tributo_omitido_ice        VARCHAR2(30 BYTE),
    fis_tributo_omitido_iehd       VARCHAR2(30 BYTE),
    fis_sancion_omision            VARCHAR2(30 BYTE),
    fis_multa_contrava             VARCHAR2(30 BYTE),
    fis_multa_contrabc             VARCHAR2(30 BYTE),
    fis_multa_contrabd             VARCHAR2(30 BYTE),
    fis_usuario_resultados         VARCHAR2(30 BYTE),
    fis_fec_aceptacion             DATE,
    fis_tipo_doc_con               VARCHAR2(50 BYTE),
    fis_reg_nro_inf                VARCHAR2(50 BYTE),
    fis_reg_fec_inf                DATE,
    fis_reg_nro_doc_con            VARCHAR2(50 BYTE),
    fis_reg_fec_doc_con            DATE,
    fis_fec_finalizacion           DATE,
    fis_reg_fec_not_doc            DATE,
    fis_reg_tip_not_doc            VARCHAR2(50 BYTE),
    fis_reg_fec_env_legal          DATE,
    fis_reg_nro_env_legal          VARCHAR2(100 BYTE),
    fis_usuario_finalizacion       VARCHAR2(30 BYTE),
    fis_estado                     VARCHAR2(30 BYTE),
    fis_lst_ope                    VARCHAR2(1 BYTE),
    fis_usuario                    VARCHAR2(30 BYTE),
    fis_numver                     NUMBER(3,0),
    fis_fecha                      DATE,
    fis_fiscalizador               VARCHAR2(30 BYTE),
    fis_ovalor                     VARCHAR2(10 BYTE),
    fis_opartida                   VARCHAR2(10 BYTE),
    fis_oorigen                    VARCHAR2(10 BYTE),
    fis_osinobs                    VARCHAR2(10 BYTE),
    fis_comision                   VARCHAR2(10 BYTE),
    fis_ccondel                    VARCHAR2(10 BYTE),
    fis_cconcon                    VARCHAR2(10 BYTE),
    fis_cconadu                    VARCHAR2(10 BYTE),
    fis_tributo_omitido_ufv_ga     VARCHAR2(30 BYTE),
    fis_tributo_omitido_ufv_iva    VARCHAR2(30 BYTE),
    fis_tributo_omitido_ufv_ice    VARCHAR2(30 BYTE),
    fis_tributo_omitido_ufv_iehd   VARCHAR2(30 BYTE),
    fis_sancion_omision_ufv        VARCHAR2(35 BYTE),
    fis_multa_contrava_ufv         VARCHAR2(30 BYTE),
    fis_multa_contrabc_ufv         VARCHAR2(30 BYTE),
    fis_multa_contrabd_ufv         VARCHAR2(30 BYTE),
    fis_valor_ufv                  VARCHAR2(30 BYTE),
    fis_usuario_aceptacion         VARCHAR2(30 BYTE),
    fis_usuario_not_doc_con        VARCHAR2(30 BYTE),
    fis_usuario_env_legal          VARCHAR2(30 BYTE),
    fis_origen_control             VARCHAR2(30 BYTE),
    fis_fob_inicial                NUMBER(18,2),
    fis_fob_final                  NUMBER(18,2),
    fis_fecha_anul                 DATE,
    fis_obs_anulacion              VARCHAR2(600 BYTE),
    fis_fecha_cierre               DATE,
    fis_obs_cierre                 VARCHAR2(600 BYTE),
    fis_justificativo_feccon       VARCHAR2(200 BYTE))
  NOPARALLEL
  LOGGING
/

CREATE INDEX idx_consulta ON cd_fiscalizacion
  (
    fis_gerencia                    ASC,
    fis_key_cuo                     ASC,
    fis_origen_control              ASC,
    fis_estado                      ASC,
    fis_numver                      ASC,
    fis_lst_ope                     ASC
  )
NOPARALLEL
LOGGING
/


ALTER TABLE cd_fiscalizacion
ADD CONSTRAINT cd_fis_cons UNIQUE (fis_gestion, fis_gerencia, fis_nro_control, 
  fis_key_year, fis_key_cuo, fis_key_nber, fis_key_dec, fis_numver)
USING INDEX
/

COMMENT ON COLUMN cd_fiscalizacion.fis_estado IS 'Estado R:Registrado N:Notificado F:Finalizado'
/
COMMENT ON COLUMN cd_fiscalizacion.fis_fec_asignacion IS 'Fecha Asignacion por parte del jefe'
/
COMMENT ON COLUMN cd_fiscalizacion.fis_fec_finalizacion IS 'Fecha de Finalizacion de la Fiscalizacion'
/
COMMENT ON COLUMN cd_fiscalizacion.fis_fec_notificacion IS 'Fecha de la Notificacion'
/
COMMENT ON COLUMN cd_fiscalizacion.fis_fec_registro IS 'Fecha de Registro del Control'
/
COMMENT ON COLUMN cd_fiscalizacion.fis_fecha IS 'Fecha Modificacion'
/
COMMENT ON COLUMN cd_fiscalizacion.fis_fecha_anul IS 'fecha de anulacion del control diferido'
/
COMMENT ON COLUMN cd_fiscalizacion.fis_fecha_cierre IS 'FECHA DE CIERRE DEL CONTROL DIFERIDO'
/
COMMENT ON COLUMN cd_fiscalizacion.fis_fiscalizador IS 'Codigo del Fiscalizador'
/
COMMENT ON COLUMN cd_fiscalizacion.fis_gerencia IS 'Gerencia de la Fiscalizacion'
/
COMMENT ON COLUMN cd_fiscalizacion.fis_gestion IS 'Gestion de la Fiscalizacion'
/
COMMENT ON COLUMN cd_fiscalizacion.fis_justificativo_feccon IS 'Justificativo de Fecha de Conclusion atrasada'
/
COMMENT ON COLUMN cd_fiscalizacion.fis_key_cuo IS 'Aduana de la Declaracion'
/
COMMENT ON COLUMN cd_fiscalizacion.fis_key_dec IS 'Declarante de la Declaracion'
/
COMMENT ON COLUMN cd_fiscalizacion.fis_key_nber IS 'Numero de la Declaracion'
/
COMMENT ON COLUMN cd_fiscalizacion.fis_key_year IS 'Gestion de la Declaracion'
/
COMMENT ON COLUMN cd_fiscalizacion.fis_lst_ope IS 'Estado del Registro U:Disponible D:Eliminado'
/
COMMENT ON COLUMN cd_fiscalizacion.fis_nro_control IS 'Correlativo de la Fiscalizacion'
/
COMMENT ON COLUMN cd_fiscalizacion.fis_numver IS 'Numero de Version'
/
COMMENT ON COLUMN cd_fiscalizacion.fis_obs_anulacion IS 'observacion de la anulacion'
/
COMMENT ON COLUMN cd_fiscalizacion.fis_obs_cierre IS 'OBSERVACION DE CIERRE DEL CONTROL DIFERIDO'
/
COMMENT ON COLUMN cd_fiscalizacion.fis_obs_notificacion IS 'Observacion de Registro de la Notificacion'
/
COMMENT ON COLUMN cd_fiscalizacion.fis_origen_control IS 'origen del control diferido - MIRA o SICODIF'
/
COMMENT ON COLUMN cd_fiscalizacion.fis_usuario IS 'Usuario'
/
COMMENT ON COLUMN cd_fiscalizacion.fis_usuario_asignacion IS 'Usuario de Asignacion por parte del jefe'
/
COMMENT ON COLUMN cd_fiscalizacion.fis_usuario_finalizacion IS 'Usuario de Registro de la Finalizacion'
/
COMMENT ON COLUMN cd_fiscalizacion.fis_usuario_notificacion IS 'Usuario de Registro de la Notificacion'
/
COMMENT ON COLUMN cd_fiscalizacion.fis_usuario_registro IS 'Usuario de Registro del Control'
/
CREATE TABLE cd_recibos
    (rec_codigo                     NUMBER(18,0) NOT NULL,
    fis_gestion                    VARCHAR2(4 BYTE) NOT NULL,
    fis_gerencia                   VARCHAR2(4 BYTE) NOT NULL,
    fis_nro_control                NUMBER(18,0) NOT NULL,
    rec_tipo_deuda                 VARCHAR2(50 BYTE) NOT NULL,
    rec_monto                      VARCHAR2(20 BYTE) NOT NULL,
    rec_fecha_pago                 DATE,
    rec_lst_ope                    VARCHAR2(1 BYTE) NOT NULL,
    rec_usuario                    VARCHAR2(30 BYTE) NOT NULL,
    rec_numver                     NUMBER(3,0) NOT NULL,
    rec_fecha                      DATE ,
    rec_gestion                    VARCHAR2(4 BYTE) NOT NULL,
    rec_aduana                     VARCHAR2(4 BYTE) NOT NULL,
    rec_nro_recibo                 VARCHAR2(30 BYTE) NOT NULL)
  NOPARALLEL
  LOGGING
/

ALTER TABLE cd_recibos
ADD CHECK ("REC_FECHA" IS NOT NULL)
/

