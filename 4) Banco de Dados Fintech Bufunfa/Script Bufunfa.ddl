-- Gerado por Oracle SQL Developer Data Modeler 21.4.2.059.0838
--   em:        2022-05-21 10:29:32 BRT
--   site:      Oracle Database 11g
--   tipo:      Oracle Database 11g



-- predefined type, no DDL - MDSYS.SDO_GEOMETRY

-- predefined type, no DDL - XMLTYPE

CREATE TABLE t_gastos (
    id_gasto                   NUMBER(5) NOT NULL,
    dt_gasto                   DATE NOT NULL,
    ds_gasto                   VARCHAR2(30) NOT NULL,
    vl_gasto                   NUMBER NOT NULL,
    t_usuario_id_usuario       NUMBER(5) NOT NULL,
    t_tipo_gasto_cd_tipo_gasto NUMBER(4) NOT NULL,
    id_usuario                 NUMBER NOT NULL
);

ALTER TABLE t_gastos ADD CONSTRAINT t_gastos_pk PRIMARY KEY ( id_gasto,
                                                              id_usuario );

CREATE TABLE t_receitas (
    id_receita                     NUMBER(5) NOT NULL,
    dt_receita                     DATE NOT NULL,
    ds_receita                     VARCHAR2(30) NOT NULL,
    vl_receita                     NUMBER NOT NULL,
    t_usuario_id_usuario           NUMBER(5) NOT NULL,
    t_tipo_receita_cd_tipo_receita NUMBER(4) NOT NULL,
    id_usuario                     NUMBER NOT NULL
);

ALTER TABLE t_receitas ADD CONSTRAINT t_receitas_pk PRIMARY KEY ( id_receita,
                                                                  id_usuario );

CREATE TABLE t_tipo_gasto (
    cd_tipo_gasto NUMBER(4) NOT NULL,
    ds_tipo_gasto VARCHAR2(30) NOT NULL
);

ALTER TABLE t_tipo_gasto ADD CONSTRAINT t_tipo_gasto_pk PRIMARY KEY ( cd_tipo_gasto );

CREATE TABLE t_tipo_receita (
    cd_tipo_receita NUMBER(4) NOT NULL,
    ds_tipo_receita VARCHAR2(30) NOT NULL
);

ALTER TABLE t_tipo_receita ADD CONSTRAINT t_tipo_receita_pk PRIMARY KEY ( cd_tipo_receita );

CREATE TABLE t_usuario (
    id_usuario    NUMBER(5) NOT NULL,
    ds_login      VARCHAR2(30) NOT NULL,
    ds_senha      VARCHAR2(30) NOT NULL,
    ds_nome       VARCHAR2(30),
    ds_sobrenome  VARCHAR2(30),
    ds_email      VARCHAR2(30),
    dt_nascimento DATE
);

ALTER TABLE t_usuario ADD CONSTRAINT t_usuario_pk PRIMARY KEY ( id_usuario );

ALTER TABLE t_gastos
    ADD CONSTRAINT t_gastos_t_tipo_gasto_fk FOREIGN KEY ( t_tipo_gasto_cd_tipo_gasto )
        REFERENCES t_tipo_gasto ( cd_tipo_gasto );

ALTER TABLE t_gastos
    ADD CONSTRAINT t_gastos_t_usuario_fk FOREIGN KEY ( t_usuario_id_usuario )
        REFERENCES t_usuario ( id_usuario );

ALTER TABLE t_receitas
    ADD CONSTRAINT t_receitas_t_tipo_receita_fk FOREIGN KEY ( t_tipo_receita_cd_tipo_receita )
        REFERENCES t_tipo_receita ( cd_tipo_receita );

ALTER TABLE t_receitas
    ADD CONSTRAINT t_receitas_t_usuario_fk FOREIGN KEY ( t_usuario_id_usuario )
        REFERENCES t_usuario ( id_usuario );



-- Relatório do Resumo do Oracle SQL Developer Data Modeler: 
-- 
-- CREATE TABLE                             5
-- CREATE INDEX                             0
-- ALTER TABLE                              9
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE MATERIALIZED VIEW LOG             0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
