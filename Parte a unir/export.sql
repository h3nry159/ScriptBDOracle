--------------------------------------------------------
-- Archivo creado  - s�bado-febrero-01-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table ARTICULOS
--------------------------------------------------------

  CREATE TABLE "DBPOLICOMERCE"."ARTICULOS" 
   (	"ID_ARTICULO" NUMBER(*,0), 
	"NOMBRE_ARTICULO" VARCHAR2(200 BYTE), 
	"PRECIO_ARTICULO" NUMBER(10,2), 
	"IMAGEN_ARTICULO" BLOB, 
	"DESCRIPCION_ARTICULO" VARCHAR2(200 BYTE), 
	"ID_CATEGORIA_ARTICULO" NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" 
 LOB ("IMAGEN_ARTICULO") STORE AS BASICFILE (
  TABLESPACE "SYSTEM" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;
REM INSERTING into DBPOLICOMERCE.ARTICULOS
SET DEFINE OFF;
Insert into DBPOLICOMERCE.ARTICULOS (ID_ARTICULO,NOMBRE_ARTICULO,PRECIO_ARTICULO,DESCRIPCION_ARTICULO,ID_CATEGORIA_ARTICULO) values ('2','Camisa','5','Camisa sin fondo de varios colores','4');
Insert into DBPOLICOMERCE.ARTICULOS (ID_ARTICULO,NOMBRE_ARTICULO,PRECIO_ARTICULO,DESCRIPCION_ARTICULO,ID_CATEGORIA_ARTICULO) values ('3','Taza','2','Tazas para regalos de trabajo o personales','2');
Insert into DBPOLICOMERCE.ARTICULOS (ID_ARTICULO,NOMBRE_ARTICULO,PRECIO_ARTICULO,DESCRIPCION_ARTICULO,ID_CATEGORIA_ARTICULO) values ('4','LLaveros','2','Llaveros de todo tipo, para excursiones o regalos','1');
--------------------------------------------------------
--  DDL for Index PK_ARTICULOS
--------------------------------------------------------

  CREATE UNIQUE INDEX "DBPOLICOMERCE"."PK_ARTICULOS" ON "DBPOLICOMERCE"."ARTICULOS" ("ID_ARTICULO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Trigger TT_ARTICULOS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "DBPOLICOMERCE"."TT_ARTICULOS" 
BEFORE INSERT ON ARTICULOS
FOR EACH ROW
BEGIN 
SELECT SE_ARTICULOS.NEXTVAL INTO :NEW.id_articulo FROM DUAL;
END;
/
ALTER TRIGGER "DBPOLICOMERCE"."TT_ARTICULOS" ENABLE;
--------------------------------------------------------
--  Constraints for Table ARTICULOS
--------------------------------------------------------

  ALTER TABLE "DBPOLICOMERCE"."ARTICULOS" MODIFY ("ID_ARTICULO" NOT NULL ENABLE);
  ALTER TABLE "DBPOLICOMERCE"."ARTICULOS" MODIFY ("NOMBRE_ARTICULO" NOT NULL ENABLE);
  ALTER TABLE "DBPOLICOMERCE"."ARTICULOS" MODIFY ("PRECIO_ARTICULO" NOT NULL ENABLE);
  ALTER TABLE "DBPOLICOMERCE"."ARTICULOS" MODIFY ("DESCRIPCION_ARTICULO" NOT NULL ENABLE);
  ALTER TABLE "DBPOLICOMERCE"."ARTICULOS" MODIFY ("ID_CATEGORIA_ARTICULO" NOT NULL ENABLE);
  ALTER TABLE "DBPOLICOMERCE"."ARTICULOS" ADD CONSTRAINT "PK_ARTICULOS" PRIMARY KEY ("ID_ARTICULO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
