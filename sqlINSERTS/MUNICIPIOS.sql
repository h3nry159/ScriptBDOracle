--------------------------------------------------------
-- Archivo creado  - viernes-mayo-01-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table MUNICIPIOS
--------------------------------------------------------

  CREATE TABLE "DBPOLICOMERCE"."MUNICIPIOS" 
   (	"ID_MUNICIPIOS" NUMBER(*,0), 
	"NOMBRE_MUNICIPIOS" VARCHAR2(200 BYTE), 
	"ID_DEPARTAMENTO_MUNICIPIO" NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into DBPOLICOMERCE.MUNICIPIOS
SET DEFINE OFF;
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('133','San Francisco Gotera','8');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('134','Arambala','8');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('135','Cacaopera','8');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('136','Chilanga','8');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('137','Corinto','8');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('138','Delicias de Concepci�n','8');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('139','El Divisadero','8');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('140','El Rosario','8');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('141','Gualococti','8');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('142','Guatajiagua','8');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('143','Joateca','8');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('144','Jocoaitique','8');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('145','Jocoro','8');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('146','Lolotiquillo','8');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('147','Meanguera','8');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('148','Osicala','8');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('149','Perqu�n','8');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('150','San Carlos','8');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('151','San Fernando','8');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('152','San Isidro','8');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('153','San Sim�n','8');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('154','Sensembra','8');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('155','Sociedad','8');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('156','Torola','8');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('157','Yamabal','8');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('158','Yoloaiqu�n','8');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('159','San Miguel','9');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('160','Carolina','9');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('161','Chapeltique','9');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('162','Chinameca','9');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('163','Chirilagua','9');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('164','Ciudad Barrios','9');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('165','Comacar�n','9');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('166','El Tr�nsito','9');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('167','Lolotique','9');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('168','Moncagua','9');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('169','Nueva Guadalupe','9');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('170','Nuevo Ed�n de San Juan','9');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('171','Quelepa','9');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('172','San Antonio del Mosco','9');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('173','San Gerardo','9');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('174','San Jorge','9');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('175','San Luis de La Reina','9');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('176','San Rafael Oriente','9');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('177','Sesori','9');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('178','Uluazapa','9');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('179','San Salvador','10');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('180','Aguilares','10');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('181','Apopa','10');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('182','Ayutuxtepeque','10');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('183','Ciudad Delgado','10');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('184','Cuscatancingo','10');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('185','El Paisnal','10');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('186','Guazapa','10');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('187','Ilopango','10');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('188','Mejicanos','10');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('189','Nejapa','10');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('190','Panchimalco','10');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('191','Rosario de Mora','10');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('192','San Marcos','10');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('193','San Mart�n','10');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('194','Santiago Texacuangos','10');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('195','Santo Tom�s','10');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('196','Soyapango','10');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('197','Tonacatepeque','10');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('198','San Vicente','11');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('199','Apastepeque','11');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('200','Guadalupe','11');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('201','San Cayetano Istepeque','11');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('202','San Esteban Catarina','11');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('203','San Ildefonso','11');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('204','San Lorenzo','11');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('205','San Sebasti�n','11');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('206','Santa Clara','11');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('207','Santo Domingo','11');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('208','Tecoluca','11');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('209','Tepetit�n','11');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('210','Verapaz','11');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('211','Santa Ana','12');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('212','Candelaria de la Frontera','12');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('213','Chalchuapa','12');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('214','Coatepeque','12');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('215','El Congo','12');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('216','El Porvenir','12');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('217','Masahuat','12');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('218','Metap�n','12');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('219','San Antonio Pajonal','12');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('220','San Sebasti�n Salitrillo','12');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('221','Santa Rosa Guachipil�n','12');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('222','Santiago de la Frontera','12');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('223','Texistepeque','12');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('224','Sonsonate','13');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('225','Acajutla','13');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('226','Armenia','13');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('227','Caluco','13');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('228','Cuisnahuat','13');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('229','Izalco','13');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('230','Juay�a','13');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('231','Nahulingo','13');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('232','Nahuizalco','13');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('233','Salcoatit�n','13');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('234','San Antonio del Monte','13');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('235','San Juli�n','13');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('236','Santa Catarina Masahuat','13');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('237','Santa Isabel Ishuat�n','13');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('238','Santo Domingo de Guzm�n','13');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('239','Sonzacate','13');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('240','Usulut�n','14');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('241','Alegr�a','14');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('242','Berl�n','14');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('243','California','14');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('244','Concepci�n Batres','14');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('245','El Triunfo','14');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('246','Ereguayqu�n','14');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('247','Estanzuelas','14');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('248','Jiquilisco','14');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('249','Jucuapa','14');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('250','Jucuar�n','14');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('251','Mercedes Uma�a','14');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('252','Nueva Granada','14');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('253','Ozatl�n','14');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('254','Puerto El Triunfo','14');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('255','San Agust�n','14');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('256','San Buenaventura','14');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('257','San Dionisio','14');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('258','San Francisco Javier','14');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('259','Santa Elena','14');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('260','Santa Mar�a','14');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('261','Santiago de Mar�a','14');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('262','Tecap�n','14');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('1','Ahuachap�n','1');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('2','Apaneca','1');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('3','Atiquizaya','1');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('4','Concepci�n de Ataco','1');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('5','El Refugio','1');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('6','Guaymango','1');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('7','Jujutla','1');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('8','San Francisco Men�ndez','1');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('9','San Lorenzo','1');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('10','San Pedro Puxtla','1');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('11','Tacuba','1');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('12','Tur�n','1');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('13','Sensuntepeque','2');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('14','Cinquera','2');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('15','Dolores','2');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('16','Guacotecti','2');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('17','Ilobasco','2');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('18','Jutiapa','2');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('19','San Isidro','2');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('20','Tejutepeque','2');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('21','Victoria','2');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('22','Chalatenango','3');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('23','Agua Caliente','3');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('24','Arcatao','3');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('25','Azacualpa','3');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('26','Cital�','3');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('27','Comalapa','3');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('28','Concepci�n Quezaltepeque','3');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('29','Dulce Nombre de Mar�a','3');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('30','El Carrizal','3');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('31','El Para�so','3');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('32','La Laguna','3');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('33','La Palma','3');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('34','La Reina','3');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('35','Las Vueltas','3');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('36','Nombre de Jes�s','3');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('37','Nueva Concepci�n','3');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('38','Nueva Trinidad','3');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('39','Ojos de Agua','3');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('40','Potonico','3');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('41','San Antonio de La Cruz','3');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('42','San Antonio Los Ranchos','3');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('43','San Fernando','3');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('44','San Francisco Lempa','3');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('45','San Francisco Moraz�n','3');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('46','San Ignacio','3');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('47','San Isidro Labrador','3');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('48','San Jos� Cancasque','3');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('49','San Jos� Las Flores','3');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('50','San Luis del Carmen','3');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('51','San Miguel de Mercedes','3');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('52','San Rafael','3');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('53','Santa Rita','3');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('54','Tejutla','3');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('55','Cojutepeque','4');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('56','Candelaria','4');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('57','El Carmen','4');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('58','El Rosario','4');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('59','Monte San Juan','4');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('60','Oratorio de Concepci�n','4');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('61','San Bartolom� Perulap�a','4');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('62','San Crist�bal','4');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('63','San Jos� Guayabal','4');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('64','San Pedro Perulap�n','4');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('65','San Rafael Cedros','4');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('66','San Ram�n','4');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('67','Santa Cruz Analquito','4');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('68','Santa Cruz Michapa','4');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('69','Suchitoto','4');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('70','Tenancingo','4');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('71','Santa Tecla','5');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('72','Antiguo Cuscatl�n','5');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('73','Chiltiup�n','5');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('74','Ciudad Arce','5');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('75','Col�n','5');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('76','Comasagua','5');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('77','Huiz�car','5');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('78','Jayaque','5');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('79','Jicalapa','5');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('80','Nuevo Cuscatl�n','5');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('81','Puerto de la Libertad','5');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('82','Quezaltepeque','5');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('83','Sacacoyo','5');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('84','San Jos� Villanueva','5');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('85','San Juan Opico','5');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('86','San Mat�as','5');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('87','San Pablo Tacachico','5');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('88','Talnique','5');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('89','Tamanique','5');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('90','Teotepeque','5');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('91','Tepecoyo','5');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('92','Zaragoza','5');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('93','Zacatecoluca','6');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('94','Cuyultit�n','6');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('95','El Rosario','6');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('96','Jerusal�n','6');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('97','Mercedes La Ceiba','6');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('98','Olocuilta','6');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('99','Para�so de Osorio','6');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('100','San Antonio Masahuat','6');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('101','San Emigdio','6');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('102','San Francisco Chinameca','6');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('103','San Juan Nonualco','6');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('104','San Juan Talpa','6');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('105','San Juan Tepezontes','6');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('106','San Luis La Herradura','6');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('107','San Luis Talpa','6');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('108','San Miguel Tepezontes','6');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('109','San Pedro Masahuat','6');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('110','San Pedro Nonualco','6');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('111','San Rafael Obrajuelo','6');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('112','Santa Mar�a Ostuma','6');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('113','Santiago Nonualco','6');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('114','Tapalhauca','6');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('115','La Uni�n','7');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('116','Anamor�s','7');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('117','Bol�var','7');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('118','Concepci�n de Oriente','7');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('119','Conchagua','7');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('120','El Carmen','7');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('121','El Sauce','7');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('122','Intipuc�','7');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('123','Lislique','7');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('124','Meanguera del Golfo','7');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('125','Nueva Esparta','7');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('126','Pasaquina','7');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('127','Polor�s','7');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('128','San Alejo','7');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('129','San Jos� La Fuente','7');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('130','Santa Rosa de Lima','7');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('131','Yayantique','7');
Insert into DBPOLICOMERCE.MUNICIPIOS (ID_MUNICIPIOS,NOMBRE_MUNICIPIOS,ID_DEPARTAMENTO_MUNICIPIO) values ('132','Yucuaiqu�n','7');
--------------------------------------------------------
--  DDL for Index PK_MUNICIPIO
--------------------------------------------------------

  CREATE UNIQUE INDEX "DBPOLICOMERCE"."PK_MUNICIPIO" ON "DBPOLICOMERCE"."MUNICIPIOS" ("ID_MUNICIPIOS") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Trigger TT_MUNICIPIO
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "DBPOLICOMERCE"."TT_MUNICIPIO" 
BEFORE INSERT ON MUNICIPIOS
FOR EACH ROW
BEGIN 
SELECT SE_MUNICIPIO.NEXTVAL INTO :NEW.id_municipios FROM DUAL;
END;
/
ALTER TRIGGER "DBPOLICOMERCE"."TT_MUNICIPIO" ENABLE;
--------------------------------------------------------
--  Constraints for Table MUNICIPIOS
--------------------------------------------------------

  ALTER TABLE "DBPOLICOMERCE"."MUNICIPIOS" MODIFY ("ID_MUNICIPIOS" NOT NULL ENABLE);
  ALTER TABLE "DBPOLICOMERCE"."MUNICIPIOS" MODIFY ("NOMBRE_MUNICIPIOS" NOT NULL ENABLE);
  ALTER TABLE "DBPOLICOMERCE"."MUNICIPIOS" MODIFY ("ID_DEPARTAMENTO_MUNICIPIO" NOT NULL ENABLE);
  ALTER TABLE "DBPOLICOMERCE"."MUNICIPIOS" ADD CONSTRAINT "PK_MUNICIPIO" PRIMARY KEY ("ID_MUNICIPIOS")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
