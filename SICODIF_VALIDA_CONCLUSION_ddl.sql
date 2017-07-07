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
          AND not a.fis_osinobs IS NULL
          AND not a.fis_reg_fec_doc_con IS NULL;

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
          AND NOT a.fis_fec_aceptacion IS NULL;

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
             AND NOT a.fis_reg_fec_not_doc IS NULL;

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
             AND NOT a.fis_reg_fec_env_legal IS NULL;

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

