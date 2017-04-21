CREATE OR REPLACE 
FUNCTION devuelve_ci (prm_usuario IN VARCHAR2)
/* Formatted on 05/03/2015 16:34:56 (QP5 v5.126) */
    RETURN VARCHAR2
IS
    res       VARCHAR2 (300) := '';
BEGIN

   SELECT a.usudocid||' '|| a.usulugemi into res
     FROM usuario.usuario a
     where a.usucodusu = prm_usuario
     and lst_ope = 'U'
     and usu_num = 0;

    RETURN res;
END;
/

CREATE OR REPLACE 
FUNCTION devuelve_nombre (prm_usuario IN VARCHAR2)
/* Formatted on 05/03/2015 16:34:56 (QP5 v5.126) */
    RETURN VARCHAR2
IS
    res       VARCHAR2 (300) := '';
BEGIN

   SELECT nvl(a.usuapepat,' ') ||' '|| nvl(a.usuapemat,' ')||' '|| a.usunombre into res
     FROM usuario.usuario a
     where a.usucodusu = prm_usuario
     and lst_ope = 'U'
     and usu_num = 0;

    RETURN res;
END;
/

CREATE OR REPLACE 
FUNCTION valida_conclusion (prm_gestion IN VARCHAR2,
                                    prm_gerencia IN VARCHAR2,
                                    prm_numero IN VARCHAR2
)
   RETURN NUMBER
IS
   res      VARCHAR2 (300) := '';
   existe   NUMBER (10) := 0;
BEGIN

    SELECT COUNT (1)
     INTO existe
     FROM cd_fiscalizacion a
    WHERE     a.fis_gestion = prm_gestion
          AND a.fis_gerencia = prm_gerencia
          AND a.fis_nro_control = prm_numero
          AND a.fis_lst_ope = 'U'
          AND a.fis_numver = 0
          AND a.fis_osinobs IS NOT NULL
          AND a.fis_reg_fec_doc_con IS NOT NULL;

   IF existe > 0
   THEN
    RETURN 1;
   else

   SELECT COUNT (1)
     INTO existe
     FROM cd_fiscalizacion a
    WHERE     a.fis_gestion = prm_gestion
          AND a.fis_gerencia = prm_gerencia
          AND a.fis_nro_control = prm_numero
          AND a.fis_lst_ope = 'U'
          AND a.fis_numver = 0
          AND a.fis_fec_aceptacion IS NOT NULL;

   IF existe > 0
   THEN
      SELECT COUNT (1)
        INTO existe
        FROM cd_fiscalizacion a
       WHERE     a.fis_gestion = prm_gestion
             AND a.fis_gerencia = prm_gerencia
             AND a.fis_nro_control = prm_numero
             AND a.fis_lst_ope = 'U'
             AND a.fis_numver = 0
             AND a.fis_reg_fec_not_doc IS NOT NULL;

      IF existe > 0
      THEN
         SELECT COUNT (1)
           INTO existe
           FROM cd_recibos a
          WHERE     a.fis_gestion = prm_gestion
                AND a.fis_gerencia = prm_gerencia
                AND a.fis_nro_control = prm_numero
                AND a.rec_lst_ope = 'U'
                AND a.rec_numver = 0;

         IF existe > 0
         THEN
            RETURN 1;
         ELSE
            RETURN 0;
         END IF;
      ELSE
         RETURN 0;
      END IF;
   ELSE
      SELECT COUNT (1)
        INTO existe
        FROM cd_fiscalizacion a
       WHERE     a.fis_gestion = prm_gestion
             AND a.fis_gerencia = prm_gerencia
             AND a.fis_nro_control = prm_numero
             AND a.fis_lst_ope = 'U'
             AND a.fis_numver = 0
             AND a.fis_reg_fec_env_legal IS NOT NULL;

      IF existe > 0
      THEN
         /*SELECT COUNT (1)
           INTO existe
           FROM cd_recibos a
          WHERE     a.fis_gestion = prm_gestion
                AND a.fis_gerencia = prm_gerencia
                AND a.fis_nro_control = prm_numero
                AND a.rec_lst_ope = 'U'
                AND a.rec_numver = 0;

         IF existe = 0
         THEN*/
            RETURN 1;
         /*ELSE
            RETURN 0;
         END IF;*/
      ELSE
         RETURN 0;
      END IF;
   END IF;
END IF;


   RETURN res;
END;
/

