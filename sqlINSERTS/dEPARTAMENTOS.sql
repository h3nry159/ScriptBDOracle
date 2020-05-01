--------------------------------------------------------
-- Archivo creado  - viernes-mayo-01-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table DEPARTAMENTO
--------------------------------------------------------

  CREATE TABLE "DEPARTAMENTO" ("ID_DEPARTAMENTO" NUMBER(*,0), "NOMBRE_DEPARTAMENTO" VARCHAR2(200))
REM INSERTING into DEPARTAMENTO
SET DEFINE OFF;
Insert into DEPARTAMENTO (ID_DEPARTAMENTO,NOMBRE_DEPARTAMENTO) values ('1','Ahuachapán');
Insert into DEPARTAMENTO (ID_DEPARTAMENTO,NOMBRE_DEPARTAMENTO) values ('2','Cabañas');
Insert into DEPARTAMENTO (ID_DEPARTAMENTO,NOMBRE_DEPARTAMENTO) values ('3','Chalatenango');
Insert into DEPARTAMENTO (ID_DEPARTAMENTO,NOMBRE_DEPARTAMENTO) values ('4','Cuscatlán');
Insert into DEPARTAMENTO (ID_DEPARTAMENTO,NOMBRE_DEPARTAMENTO) values ('5','La Libertad');
Insert into DEPARTAMENTO (ID_DEPARTAMENTO,NOMBRE_DEPARTAMENTO) values ('6','La Paz');
Insert into DEPARTAMENTO (ID_DEPARTAMENTO,NOMBRE_DEPARTAMENTO) values ('7','La Unión');
Insert into DEPARTAMENTO (ID_DEPARTAMENTO,NOMBRE_DEPARTAMENTO) values ('8','Morazán');
Insert into DEPARTAMENTO (ID_DEPARTAMENTO,NOMBRE_DEPARTAMENTO) values ('9','San Migue');
Insert into DEPARTAMENTO (ID_DEPARTAMENTO,NOMBRE_DEPARTAMENTO) values ('10','San Salvador');
Insert into DEPARTAMENTO (ID_DEPARTAMENTO,NOMBRE_DEPARTAMENTO) values ('11','San Vicente');
Insert into DEPARTAMENTO (ID_DEPARTAMENTO,NOMBRE_DEPARTAMENTO) values ('12','Santa Ana');
Insert into DEPARTAMENTO (ID_DEPARTAMENTO,NOMBRE_DEPARTAMENTO) values ('13','Sonsonate');
Insert into DEPARTAMENTO (ID_DEPARTAMENTO,NOMBRE_DEPARTAMENTO) values ('14','Usulután');
--------------------------------------------------------
--  DDL for Index PK_DEPARTAMENTO
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_DEPARTAMENTO" ON "DEPARTAMENTO" ("ID_DEPARTAMENTO")
--------------------------------------------------------
--  DDL for Trigger TT_DEPARTAMENTO
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "TT_DEPARTAMENTO" 
BEFORE INSERT ON DEPARTAMENTO
FOR EACH ROW
BEGIN 
SELECT SE_DEPARTAMENTO.NEXTVAL INTO :NEW.id_departamento FROM DUAL;
END;
ALTER TRIGGER "TT_DEPARTAMENTO" ENABLE
--------------------------------------------------------
--  Constraints for Table DEPARTAMENTO
--------------------------------------------------------

  ALTER TABLE "DEPARTAMENTO" MODIFY ("ID_DEPARTAMENTO" NOT NULL ENABLE)
  ALTER TABLE "DEPARTAMENTO" MODIFY ("NOMBRE_DEPARTAMENTO" NOT NULL ENABLE)
  ALTER TABLE "DEPARTAMENTO" ADD CONSTRAINT "PK_DEPARTAMENTO" PRIMARY KEY ("ID_DEPARTAMENTO") USING INDEX  ENABLE
