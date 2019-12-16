--------------------------------------------------------
-- Archivo creado  - domingo-diciembre-15-2019   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table ARTICULOS
--------------------------------------------------------

  CREATE TABLE "VENTAS"."ARTICULOS" 
   (	"ID_ARTICULO" NUMBER(*,0), 
	"NOMBRE_ARTICULO" VARCHAR2(200 BYTE), 
	"PRECIO_ARTICULO" NUMBER(10,2), 
	"ID_CATEGORIA_ARTICULO" NUMBER(*,0), 
	"ID_PROVEEDOR_ARITUCLO" NUMBER(*,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table CATEGORIA
--------------------------------------------------------

  CREATE TABLE "VENTAS"."CATEGORIA" 
   (	"ID_CATEGORIA" NUMBER(*,0), 
	"NOMBRE_CATEGORIA" VARCHAR2(200 BYTE), 
	"DESCRIPCION" VARCHAR2(200 BYTE), 
	"CODIGO_CATEGORIA" VARCHAR2(3 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table DEPARTAMENTO
--------------------------------------------------------

  CREATE TABLE "VENTAS"."DEPARTAMENTO" 
   (	"ID_DEPARTAMENTO" NUMBER(*,0), 
	"NOMBRE_DEPARTAMENTO" VARCHAR2(200 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table DETALLE_PEDIDO
--------------------------------------------------------

  CREATE TABLE "VENTAS"."DETALLE_PEDIDO" 
   (	"ID_PEDIDO_DETALLE" NUMBER(*,0), 
	"ID_ARTICULO_DETALLE" NUMBER(*,0), 
	"CANTIDAD" NUMBER(*,0), 
	"TOTAL_ARTICULO" NUMBER(10,2)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table DIRECCIONES
--------------------------------------------------------

  CREATE TABLE "VENTAS"."DIRECCIONES" 
   (	"ID_DIRECCION" NUMBER(*,0), 
	"DIRECCION" VARCHAR2(200 BYTE), 
	"ID_MUNICIPIO_DIRECCION" NUMBER(*,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table ESTADO
--------------------------------------------------------

  CREATE TABLE "VENTAS"."ESTADO" 
   (	"ID_ESTADO" NUMBER(*,0), 
	"ESTADO" CHAR(1 BYTE), 
	"DESCRIPCION_ESTADO" VARCHAR2(200 BYTE), 
	"COD_ESTADO" VARCHAR2(5 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table MUNICIPIOS
--------------------------------------------------------

  CREATE TABLE "VENTAS"."MUNICIPIOS" 
   (	"ID_MUNICIPIOS" NUMBER(*,0), 
	"NOMBRE_MUNICIPIOS" VARCHAR2(200 BYTE), 
	"ID_DEPARTAMENTO_MUNICIPIO" NUMBER(*,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table PEDIDO
--------------------------------------------------------

  CREATE TABLE "VENTAS"."PEDIDO" 
   (	"ID_PEDIDO" NUMBER(*,0), 
	"FECHA_PEDIDO" DATE, 
	"FECHA_ENVIO" DATE, 
	"MONTO_TOTAL" NUMBER(10,2), 
	"ID_ESTADO_PEDIDO" NUMBER(*,0), 
	"ID_USUARIO_PEDIDO" NUMBER(*,0), 
	"ID_TIPOPAGO_PEDIDO" NUMBER(*,0), 
	"ID_DOCUMENTO_PEDIDO" NUMBER(*,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table PERSONA
--------------------------------------------------------

  CREATE TABLE "VENTAS"."PERSONA" 
   (	"ID_PERSONA" NUMBER(*,0), 
	"PRIMER_NOMBRE" VARCHAR2(150 BYTE), 
	"SEGUNDO_NOMBRE" VARCHAR2(150 BYTE), 
	"PRIMER_APELLIDO" VARCHAR2(150 BYTE), 
	"SEGUNDO_APELLIDO" VARCHAR2(150 BYTE), 
	"EMAIL" VARCHAR2(100 BYTE), 
	"EDAD" NUMBER(*,0), 
	"GENERO" CHAR(1 BYTE), 
	"ID_TELEFONO_PERSONA" NUMBER(*,0), 
	"ID_DIRECCION_PERSONA" NUMBER(*,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table PROVEEDOR
--------------------------------------------------------

  CREATE TABLE "VENTAS"."PROVEEDOR" 
   (	"ID_PROVEEDOR" NUMBER(*,0), 
	"NOMBRE_PROVEEDOR" VARCHAR2(200 BYTE), 
	"NIT_PROVEEDOR" VARCHAR2(200 BYTE), 
	"ID_TELEFONO_PROVEEDOR" NUMBER(*,0), 
	"ID_CATEGORIA_PROVEEDOR" NUMBER(*,0), 
	"ID_ESTADO_PROVEEDOR" NUMBER(*,0), 
	"ID_DIRECCION_PROVEEDOR" NUMBER(*,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table ROL
--------------------------------------------------------

  CREATE TABLE "VENTAS"."ROL" 
   (	"ID_ROL" NUMBER(*,0), 
	"TIPO_ROL" VARCHAR2(50 BYTE), 
	"DESCRIPCION_ROL" VARCHAR2(200 BYTE), 
	"COD_ROL" VARCHAR2(5 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table TELEFONO
--------------------------------------------------------

  CREATE TABLE "VENTAS"."TELEFONO" 
   (	"ID_TELEFONO" NUMBER(*,0), 
	"TELEFONO" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table TIPO_DOCUMENTO
--------------------------------------------------------

  CREATE TABLE "VENTAS"."TIPO_DOCUMENTO" 
   (	"ID_DOCUMENTO" NUMBER(*,0), 
	"NOMBRE_DOCUMENTO" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table TIPO_PAGO
--------------------------------------------------------

  CREATE TABLE "VENTAS"."TIPO_PAGO" 
   (	"ID_TIPO_PAGO" NUMBER(*,0), 
	"TIPO_PAGO" VARCHAR2(200 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table USUARIOS
--------------------------------------------------------

  CREATE TABLE "VENTAS"."USUARIOS" 
   (	"ID_USUARIO" NUMBER(*,0), 
	"NOMBRE_USUARIO" VARCHAR2(50 BYTE), 
	"CLAVE_USUARIO" VARCHAR2(25 BYTE), 
	"ID_ESTADO_USUARIO" NUMBER(*,0), 
	"ID_PERSONA_USUARIO" NUMBER(*,0), 
	"ID_ROL_USUARIO" NUMBER(*,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "SYSTEM" ;
REM INSERTING into VENTAS.ARTICULOS
SET DEFINE OFF;
REM INSERTING into VENTAS.CATEGORIA
SET DEFINE OFF;
REM INSERTING into VENTAS.DEPARTAMENTO
SET DEFINE OFF;
REM INSERTING into VENTAS.DETALLE_PEDIDO
SET DEFINE OFF;
REM INSERTING into VENTAS.DIRECCIONES
SET DEFINE OFF;
REM INSERTING into VENTAS.ESTADO
SET DEFINE OFF;
REM INSERTING into VENTAS.MUNICIPIOS
SET DEFINE OFF;
REM INSERTING into VENTAS.PEDIDO
SET DEFINE OFF;
REM INSERTING into VENTAS.PERSONA
SET DEFINE OFF;
REM INSERTING into VENTAS.PROVEEDOR
SET DEFINE OFF;
REM INSERTING into VENTAS.ROL
SET DEFINE OFF;
REM INSERTING into VENTAS.TELEFONO
SET DEFINE OFF;
REM INSERTING into VENTAS.TIPO_DOCUMENTO
SET DEFINE OFF;
REM INSERTING into VENTAS.TIPO_PAGO
SET DEFINE OFF;
REM INSERTING into VENTAS.USUARIOS
SET DEFINE OFF;
--------------------------------------------------------
--  DDL for Index PK_MUNICIPIO
--------------------------------------------------------

  CREATE UNIQUE INDEX "VENTAS"."PK_MUNICIPIO" ON "VENTAS"."MUNICIPIOS" ("ID_MUNICIPIOS") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_DEPARTAMENTO
--------------------------------------------------------

  CREATE UNIQUE INDEX "VENTAS"."PK_DEPARTAMENTO" ON "VENTAS"."DEPARTAMENTO" ("ID_DEPARTAMENTO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_ARTICULOS
--------------------------------------------------------

  CREATE UNIQUE INDEX "VENTAS"."PK_ARTICULOS" ON "VENTAS"."ARTICULOS" ("ID_ARTICULO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_TIPODOCUMENTO
--------------------------------------------------------

  CREATE UNIQUE INDEX "VENTAS"."PK_TIPODOCUMENTO" ON "VENTAS"."TIPO_DOCUMENTO" ("ID_DOCUMENTO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_PEDIDO
--------------------------------------------------------

  CREATE UNIQUE INDEX "VENTAS"."PK_PEDIDO" ON "VENTAS"."PEDIDO" ("ID_PEDIDO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_ESTADO
--------------------------------------------------------

  CREATE UNIQUE INDEX "VENTAS"."PK_ESTADO" ON "VENTAS"."ESTADO" ("ID_ESTADO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_ROL
--------------------------------------------------------

  CREATE UNIQUE INDEX "VENTAS"."PK_ROL" ON "VENTAS"."ROL" ("ID_ROL") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_CATEGORIA
--------------------------------------------------------

  CREATE UNIQUE INDEX "VENTAS"."PK_CATEGORIA" ON "VENTAS"."CATEGORIA" ("ID_CATEGORIA") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index ID_TELEFONO
--------------------------------------------------------

  CREATE UNIQUE INDEX "VENTAS"."ID_TELEFONO" ON "VENTAS"."TELEFONO" ("ID_TELEFONO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_TIPO_PAGO
--------------------------------------------------------

  CREATE UNIQUE INDEX "VENTAS"."PK_TIPO_PAGO" ON "VENTAS"."TIPO_PAGO" ("ID_TIPO_PAGO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_PERSONA
--------------------------------------------------------

  CREATE UNIQUE INDEX "VENTAS"."PK_PERSONA" ON "VENTAS"."PERSONA" ("ID_PERSONA") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_USUARIO
--------------------------------------------------------

  CREATE UNIQUE INDEX "VENTAS"."PK_USUARIO" ON "VENTAS"."USUARIOS" ("ID_USUARIO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_PROVEEDOR
--------------------------------------------------------

  CREATE UNIQUE INDEX "VENTAS"."PK_PROVEEDOR" ON "VENTAS"."PROVEEDOR" ("ID_PROVEEDOR") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_DIRECCION
--------------------------------------------------------

  CREATE UNIQUE INDEX "VENTAS"."PK_DIRECCION" ON "VENTAS"."DIRECCIONES" ("ID_DIRECCION") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table USUARIOS
--------------------------------------------------------

  ALTER TABLE "VENTAS"."USUARIOS" MODIFY ("ID_USUARIO" NOT NULL ENABLE);
  ALTER TABLE "VENTAS"."USUARIOS" MODIFY ("NOMBRE_USUARIO" NOT NULL ENABLE);
  ALTER TABLE "VENTAS"."USUARIOS" MODIFY ("CLAVE_USUARIO" NOT NULL ENABLE);
  ALTER TABLE "VENTAS"."USUARIOS" MODIFY ("ID_ESTADO_USUARIO" NOT NULL ENABLE);
  ALTER TABLE "VENTAS"."USUARIOS" MODIFY ("ID_PERSONA_USUARIO" NOT NULL ENABLE);
  ALTER TABLE "VENTAS"."USUARIOS" MODIFY ("ID_ROL_USUARIO" NOT NULL ENABLE);
  ALTER TABLE "VENTAS"."USUARIOS" ADD CONSTRAINT "PK_USUARIO" PRIMARY KEY ("ID_USUARIO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "VENTAS"."USUARIOS" ADD UNIQUE ("NOMBRE_USUARIO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table CATEGORIA
--------------------------------------------------------

  ALTER TABLE "VENTAS"."CATEGORIA" MODIFY ("ID_CATEGORIA" NOT NULL ENABLE);
  ALTER TABLE "VENTAS"."CATEGORIA" MODIFY ("NOMBRE_CATEGORIA" NOT NULL ENABLE);
  ALTER TABLE "VENTAS"."CATEGORIA" MODIFY ("DESCRIPCION" NOT NULL ENABLE);
  ALTER TABLE "VENTAS"."CATEGORIA" MODIFY ("CODIGO_CATEGORIA" NOT NULL ENABLE);
  ALTER TABLE "VENTAS"."CATEGORIA" ADD CONSTRAINT "PK_CATEGORIA" PRIMARY KEY ("ID_CATEGORIA")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table DEPARTAMENTO
--------------------------------------------------------

  ALTER TABLE "VENTAS"."DEPARTAMENTO" MODIFY ("ID_DEPARTAMENTO" NOT NULL ENABLE);
  ALTER TABLE "VENTAS"."DEPARTAMENTO" MODIFY ("NOMBRE_DEPARTAMENTO" NOT NULL ENABLE);
  ALTER TABLE "VENTAS"."DEPARTAMENTO" ADD CONSTRAINT "PK_DEPARTAMENTO" PRIMARY KEY ("ID_DEPARTAMENTO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table DIRECCIONES
--------------------------------------------------------

  ALTER TABLE "VENTAS"."DIRECCIONES" MODIFY ("ID_DIRECCION" NOT NULL ENABLE);
  ALTER TABLE "VENTAS"."DIRECCIONES" MODIFY ("DIRECCION" NOT NULL ENABLE);
  ALTER TABLE "VENTAS"."DIRECCIONES" MODIFY ("ID_MUNICIPIO_DIRECCION" NOT NULL ENABLE);
  ALTER TABLE "VENTAS"."DIRECCIONES" ADD CONSTRAINT "PK_DIRECCION" PRIMARY KEY ("ID_DIRECCION")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PROVEEDOR
--------------------------------------------------------

  ALTER TABLE "VENTAS"."PROVEEDOR" MODIFY ("ID_PROVEEDOR" NOT NULL ENABLE);
  ALTER TABLE "VENTAS"."PROVEEDOR" MODIFY ("NOMBRE_PROVEEDOR" NOT NULL ENABLE);
  ALTER TABLE "VENTAS"."PROVEEDOR" MODIFY ("NIT_PROVEEDOR" NOT NULL ENABLE);
  ALTER TABLE "VENTAS"."PROVEEDOR" MODIFY ("ID_TELEFONO_PROVEEDOR" NOT NULL ENABLE);
  ALTER TABLE "VENTAS"."PROVEEDOR" MODIFY ("ID_CATEGORIA_PROVEEDOR" NOT NULL ENABLE);
  ALTER TABLE "VENTAS"."PROVEEDOR" MODIFY ("ID_ESTADO_PROVEEDOR" NOT NULL ENABLE);
  ALTER TABLE "VENTAS"."PROVEEDOR" MODIFY ("ID_DIRECCION_PROVEEDOR" NOT NULL ENABLE);
  ALTER TABLE "VENTAS"."PROVEEDOR" ADD CONSTRAINT "PK_PROVEEDOR" PRIMARY KEY ("ID_PROVEEDOR")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table TIPO_DOCUMENTO
--------------------------------------------------------

  ALTER TABLE "VENTAS"."TIPO_DOCUMENTO" MODIFY ("ID_DOCUMENTO" NOT NULL ENABLE);
  ALTER TABLE "VENTAS"."TIPO_DOCUMENTO" MODIFY ("NOMBRE_DOCUMENTO" NOT NULL ENABLE);
  ALTER TABLE "VENTAS"."TIPO_DOCUMENTO" ADD CONSTRAINT "PK_TIPODOCUMENTO" PRIMARY KEY ("ID_DOCUMENTO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PEDIDO
--------------------------------------------------------

  ALTER TABLE "VENTAS"."PEDIDO" MODIFY ("ID_PEDIDO" NOT NULL ENABLE);
  ALTER TABLE "VENTAS"."PEDIDO" MODIFY ("MONTO_TOTAL" NOT NULL ENABLE);
  ALTER TABLE "VENTAS"."PEDIDO" MODIFY ("ID_ESTADO_PEDIDO" NOT NULL ENABLE);
  ALTER TABLE "VENTAS"."PEDIDO" MODIFY ("ID_USUARIO_PEDIDO" NOT NULL ENABLE);
  ALTER TABLE "VENTAS"."PEDIDO" MODIFY ("ID_TIPOPAGO_PEDIDO" NOT NULL ENABLE);
  ALTER TABLE "VENTAS"."PEDIDO" MODIFY ("ID_DOCUMENTO_PEDIDO" NOT NULL ENABLE);
  ALTER TABLE "VENTAS"."PEDIDO" ADD CONSTRAINT "PK_PEDIDO" PRIMARY KEY ("ID_PEDIDO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table TELEFONO
--------------------------------------------------------

  ALTER TABLE "VENTAS"."TELEFONO" MODIFY ("ID_TELEFONO" NOT NULL ENABLE);
  ALTER TABLE "VENTAS"."TELEFONO" MODIFY ("TELEFONO" NOT NULL ENABLE);
  ALTER TABLE "VENTAS"."TELEFONO" ADD CONSTRAINT "ID_TELEFONO" PRIMARY KEY ("ID_TELEFONO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table TIPO_PAGO
--------------------------------------------------------

  ALTER TABLE "VENTAS"."TIPO_PAGO" MODIFY ("ID_TIPO_PAGO" NOT NULL ENABLE);
  ALTER TABLE "VENTAS"."TIPO_PAGO" MODIFY ("TIPO_PAGO" NOT NULL ENABLE);
  ALTER TABLE "VENTAS"."TIPO_PAGO" ADD CONSTRAINT "PK_TIPO_PAGO" PRIMARY KEY ("ID_TIPO_PAGO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table ESTADO
--------------------------------------------------------

  ALTER TABLE "VENTAS"."ESTADO" MODIFY ("ID_ESTADO" NOT NULL ENABLE);
  ALTER TABLE "VENTAS"."ESTADO" MODIFY ("ESTADO" NOT NULL ENABLE);
  ALTER TABLE "VENTAS"."ESTADO" MODIFY ("DESCRIPCION_ESTADO" NOT NULL ENABLE);
  ALTER TABLE "VENTAS"."ESTADO" MODIFY ("COD_ESTADO" NOT NULL ENABLE);
  ALTER TABLE "VENTAS"."ESTADO" ADD CONSTRAINT "PK_ESTADO" PRIMARY KEY ("ID_ESTADO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PERSONA
--------------------------------------------------------

  ALTER TABLE "VENTAS"."PERSONA" MODIFY ("ID_PERSONA" NOT NULL ENABLE);
  ALTER TABLE "VENTAS"."PERSONA" MODIFY ("PRIMER_NOMBRE" NOT NULL ENABLE);
  ALTER TABLE "VENTAS"."PERSONA" MODIFY ("PRIMER_APELLIDO" NOT NULL ENABLE);
  ALTER TABLE "VENTAS"."PERSONA" MODIFY ("SEGUNDO_APELLIDO" NOT NULL ENABLE);
  ALTER TABLE "VENTAS"."PERSONA" MODIFY ("EMAIL" NOT NULL ENABLE);
  ALTER TABLE "VENTAS"."PERSONA" MODIFY ("EDAD" NOT NULL ENABLE);
  ALTER TABLE "VENTAS"."PERSONA" MODIFY ("GENERO" NOT NULL ENABLE);
  ALTER TABLE "VENTAS"."PERSONA" MODIFY ("ID_TELEFONO_PERSONA" NOT NULL ENABLE);
  ALTER TABLE "VENTAS"."PERSONA" MODIFY ("ID_DIRECCION_PERSONA" NOT NULL ENABLE);
  ALTER TABLE "VENTAS"."PERSONA" ADD CONSTRAINT "PK_PERSONA" PRIMARY KEY ("ID_PERSONA")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table ROL
--------------------------------------------------------

  ALTER TABLE "VENTAS"."ROL" MODIFY ("ID_ROL" NOT NULL ENABLE);
  ALTER TABLE "VENTAS"."ROL" MODIFY ("TIPO_ROL" NOT NULL ENABLE);
  ALTER TABLE "VENTAS"."ROL" MODIFY ("DESCRIPCION_ROL" NOT NULL ENABLE);
  ALTER TABLE "VENTAS"."ROL" MODIFY ("COD_ROL" NOT NULL ENABLE);
  ALTER TABLE "VENTAS"."ROL" ADD CONSTRAINT "PK_ROL" PRIMARY KEY ("ID_ROL")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table DETALLE_PEDIDO
--------------------------------------------------------

  ALTER TABLE "VENTAS"."DETALLE_PEDIDO" MODIFY ("ID_PEDIDO_DETALLE" NOT NULL ENABLE);
  ALTER TABLE "VENTAS"."DETALLE_PEDIDO" MODIFY ("ID_ARTICULO_DETALLE" NOT NULL ENABLE);
  ALTER TABLE "VENTAS"."DETALLE_PEDIDO" MODIFY ("CANTIDAD" NOT NULL ENABLE);
  ALTER TABLE "VENTAS"."DETALLE_PEDIDO" MODIFY ("TOTAL_ARTICULO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MUNICIPIOS
--------------------------------------------------------

  ALTER TABLE "VENTAS"."MUNICIPIOS" MODIFY ("ID_MUNICIPIOS" NOT NULL ENABLE);
  ALTER TABLE "VENTAS"."MUNICIPIOS" MODIFY ("NOMBRE_MUNICIPIOS" NOT NULL ENABLE);
  ALTER TABLE "VENTAS"."MUNICIPIOS" MODIFY ("ID_DEPARTAMENTO_MUNICIPIO" NOT NULL ENABLE);
  ALTER TABLE "VENTAS"."MUNICIPIOS" ADD CONSTRAINT "PK_MUNICIPIO" PRIMARY KEY ("ID_MUNICIPIOS")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table ARTICULOS
--------------------------------------------------------

  ALTER TABLE "VENTAS"."ARTICULOS" MODIFY ("ID_ARTICULO" NOT NULL ENABLE);
  ALTER TABLE "VENTAS"."ARTICULOS" MODIFY ("NOMBRE_ARTICULO" NOT NULL ENABLE);
  ALTER TABLE "VENTAS"."ARTICULOS" MODIFY ("PRECIO_ARTICULO" NOT NULL ENABLE);
  ALTER TABLE "VENTAS"."ARTICULOS" MODIFY ("ID_CATEGORIA_ARTICULO" NOT NULL ENABLE);
  ALTER TABLE "VENTAS"."ARTICULOS" MODIFY ("ID_PROVEEDOR_ARITUCLO" NOT NULL ENABLE);
  ALTER TABLE "VENTAS"."ARTICULOS" ADD CONSTRAINT "PK_ARTICULOS" PRIMARY KEY ("ID_ARTICULO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ARTICULOS
--------------------------------------------------------

  ALTER TABLE "VENTAS"."ARTICULOS" ADD CONSTRAINT "FK_CATEGORIA_ARTICULOS" FOREIGN KEY ("ID_CATEGORIA_ARTICULO")
	  REFERENCES "VENTAS"."CATEGORIA" ("ID_CATEGORIA") ENABLE;
  ALTER TABLE "VENTAS"."ARTICULOS" ADD CONSTRAINT "FK_ID_PROVEEDOR_ARTICULOS" FOREIGN KEY ("ID_PROVEEDOR_ARITUCLO")
	  REFERENCES "VENTAS"."PROVEEDOR" ("ID_PROVEEDOR") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table DETALLE_PEDIDO
--------------------------------------------------------

  ALTER TABLE "VENTAS"."DETALLE_PEDIDO" ADD CONSTRAINT "FK_IDENCABEZADO_PEDIDO" FOREIGN KEY ("ID_PEDIDO_DETALLE")
	  REFERENCES "VENTAS"."PEDIDO" ("ID_PEDIDO") ENABLE;
  ALTER TABLE "VENTAS"."DETALLE_PEDIDO" ADD CONSTRAINT "FK_IDEARTICULO_PEDIDO" FOREIGN KEY ("ID_ARTICULO_DETALLE")
	  REFERENCES "VENTAS"."ARTICULOS" ("ID_ARTICULO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table DIRECCIONES
--------------------------------------------------------

  ALTER TABLE "VENTAS"."DIRECCIONES" ADD CONSTRAINT "FK_DIREECION_MUNICIPIO" FOREIGN KEY ("ID_MUNICIPIO_DIRECCION")
	  REFERENCES "VENTAS"."MUNICIPIOS" ("ID_MUNICIPIOS") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MUNICIPIOS
--------------------------------------------------------

  ALTER TABLE "VENTAS"."MUNICIPIOS" ADD CONSTRAINT "FK_DEPARTAMENTO" FOREIGN KEY ("ID_DEPARTAMENTO_MUNICIPIO")
	  REFERENCES "VENTAS"."DEPARTAMENTO" ("ID_DEPARTAMENTO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PEDIDO
--------------------------------------------------------

  ALTER TABLE "VENTAS"."PEDIDO" ADD CONSTRAINT "FK_ESTADO_PEDIDO" FOREIGN KEY ("ID_ESTADO_PEDIDO")
	  REFERENCES "VENTAS"."ESTADO" ("ID_ESTADO") ENABLE;
  ALTER TABLE "VENTAS"."PEDIDO" ADD CONSTRAINT "FK_USUARIO_PEDIDO" FOREIGN KEY ("ID_USUARIO_PEDIDO")
	  REFERENCES "VENTAS"."USUARIOS" ("ID_USUARIO") ENABLE;
  ALTER TABLE "VENTAS"."PEDIDO" ADD CONSTRAINT "FK_TIPOPAGO_PEDIDO" FOREIGN KEY ("ID_TIPOPAGO_PEDIDO")
	  REFERENCES "VENTAS"."TIPO_PAGO" ("ID_TIPO_PAGO") ENABLE;
  ALTER TABLE "VENTAS"."PEDIDO" ADD CONSTRAINT "FK_TIPODOCUMETO_PEDIDO" FOREIGN KEY ("ID_DOCUMENTO_PEDIDO")
	  REFERENCES "VENTAS"."TIPO_DOCUMENTO" ("ID_DOCUMENTO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PERSONA
--------------------------------------------------------

  ALTER TABLE "VENTAS"."PERSONA" ADD CONSTRAINT "FK_PERSONA_TELEFONO" FOREIGN KEY ("ID_TELEFONO_PERSONA")
	  REFERENCES "VENTAS"."TELEFONO" ("ID_TELEFONO") ENABLE;
  ALTER TABLE "VENTAS"."PERSONA" ADD CONSTRAINT "FK_PERSONA_DIRECCION" FOREIGN KEY ("ID_DIRECCION_PERSONA")
	  REFERENCES "VENTAS"."DIRECCIONES" ("ID_DIRECCION") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PROVEEDOR
--------------------------------------------------------

  ALTER TABLE "VENTAS"."PROVEEDOR" ADD CONSTRAINT "FK_PROVEEDOR_TELEFONO" FOREIGN KEY ("ID_TELEFONO_PROVEEDOR")
	  REFERENCES "VENTAS"."TELEFONO" ("ID_TELEFONO") ENABLE;
  ALTER TABLE "VENTAS"."PROVEEDOR" ADD CONSTRAINT "FK_PROVEEDOR_CATEGORIA" FOREIGN KEY ("ID_CATEGORIA_PROVEEDOR")
	  REFERENCES "VENTAS"."CATEGORIA" ("ID_CATEGORIA") ENABLE;
  ALTER TABLE "VENTAS"."PROVEEDOR" ADD CONSTRAINT "FK_PROVEEDOR_ESTADO" FOREIGN KEY ("ID_ESTADO_PROVEEDOR")
	  REFERENCES "VENTAS"."ESTADO" ("ID_ESTADO") ENABLE;
  ALTER TABLE "VENTAS"."PROVEEDOR" ADD CONSTRAINT "FK_PROVEEDOR_DIRECCION" FOREIGN KEY ("ID_DIRECCION_PROVEEDOR")
	  REFERENCES "VENTAS"."DIRECCIONES" ("ID_DIRECCION") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table USUARIOS
--------------------------------------------------------

  ALTER TABLE "VENTAS"."USUARIOS" ADD CONSTRAINT "FK_USUARIO_ESTADO" FOREIGN KEY ("ID_ESTADO_USUARIO")
	  REFERENCES "VENTAS"."ESTADO" ("ID_ESTADO") ENABLE;
  ALTER TABLE "VENTAS"."USUARIOS" ADD CONSTRAINT "FK_USUARIO_PERSONA" FOREIGN KEY ("ID_PERSONA_USUARIO")
	  REFERENCES "VENTAS"."PERSONA" ("ID_PERSONA") ENABLE;
  ALTER TABLE "VENTAS"."USUARIOS" ADD CONSTRAINT "FK_USUARIO_ROL" FOREIGN KEY ("ID_ROL_USUARIO")
	  REFERENCES "VENTAS"."ROL" ("ID_ROL") ENABLE;
