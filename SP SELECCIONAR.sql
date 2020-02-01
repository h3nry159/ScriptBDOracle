create or replace procedure SL_DEPARTAMENTO
AS 
departamento_cursor SYS_REFCURSOR;
 OPTION_NOT_FOUND EXCEPTION;
begin 
  savepoint prev;
OPEN departamento_cursor FOR
SELECT DP.ID_DEPARTAMENTO AS CODIGO,DP.NOMBRE_DEPARTAMENTO AS NOMBRE FROM DEPARTAMENTO DP;
  APEX_JSON.open_object;
        APEX_JSON.write('departamentos', departamento_cursor);
    APEX_JSON.close_object;
    COMMIT;
EXCEPTION 
    WHEN OPTION_NOT_FOUND THEN
         HTP.print(SQLERRM);
    WHEN OTHERS THEN
         HTP.print(SQLERRM);
end SL_DEPARTAMENTO;

CREATE OR REPLACE PROCEDURE SL_MUNICIPIO(IdDepartamento IN MUNICIPIOS.id_municipios%TYPE)
AS
municipio_cursor SYS_REFCURSOR;
respuesta EXCEPTION;
BEGIN
SAVEPOINT prev;
OPEN municipio_cursor FOR
SELECT MU.ID_MUNICIPIOS as codigo,MU.NOMBRE_MUNICIPIOS as nombre 
FROM MUNICIPIOS MU where MU.ID_DEPARTAMENTO_MUNICIPIO=IdDepartamento; 
 APEX_JSON.open_object;
        APEX_JSON.write('municipios', municipio_cursor);
    APEX_JSON.close_object;
COMMIT;
EXCEPTION
WHEN respuesta then
    HTP.print(SQLERRM);
    WHEN OTHERS THEN
    HTP.print(SQLERRM);
END SL_MUNICIPIO;

create or replace PROCEDURE SL_ARTICULOS(idcategori IN ARTICULOS.id_articulo%type)
AS 
articulos_cursor SYS_REFCURSOR;
respuesta EXCEPTION;
BEGIN
SAVEPOINT prev;
OPEN articulos_cursor FOR
SELECT AR.ID_ARTICULO AS CODIGO,AR.NOMBRE_ARTICULO AS NOMBRE,AR.PRECIO_ARTICULO AS PRECIO,
BASE64ENCODE(AR.IMAGEN_ARTICULO) AS imagen,AR.DESCRIPCION_ARTICULO as descripcion FROM  ARTICULOS AR  
WHERE AR.ID_CATEGORIA_ARTICULO =idcategori;

 APEX_JSON.open_object;
        APEX_JSON.write('ARTICULOS', articulos_cursor);
    APEX_JSON.close_object;
COMMIT;
EXCEPTION
WHEN respuesta then
    HTP.print(SQLERRM);
    WHEN OTHERS THEN
    HTP.print(SQLERRM);
END SL_ARTICULOS;

create or replace PROCEDURE SL_SERVICIOS(idcategoria IN SERVICIOS.ID_CATEGORIA_SERVICIO%type)
AS
servicios_cursor SYS_REFCURSOR;
respuesta EXCEPTION;
BEGIN
SAVEPOINT prev;
OPEN servicios_cursor FOR

select se.ID_SERVICIO as codigo,se.NOMBRE_SERVICIO as nombre,se.PRECIO_SERVICIO as precio,
se.DESCRIPCION_SERVICIO as descripcion,BASE64ENCODE(se.IMAGEN_SERVICIO) as imagen from  SERVICIOS se
where se.ID_CATEGORIA_SERVICIO=idcategoria;

 APEX_JSON.open_object;
        APEX_JSON.write('servicios', servicios_cursor);
    APEX_JSON.close_object;
COMMIT;
EXCEPTION
WHEN respuesta then
    HTP.print(SQLERRM);
    WHEN OTHERS THEN
    HTP.print(SQLERRM);
END SL_SERVICIOS;

create or replace procedure SL_CATEGORIAS_ARTICULOS
AS 
categorias_cursor SYS_REFCURSOR;
 OPTION_NOT_FOUND EXCEPTION;
begin 
  savepoint prev;
OPEN categorias_cursor FOR
select * FROM VW_CATE_ARTICULOS;
  APEX_JSON.open_object;
        APEX_JSON.write('categorias', categorias_cursor);
    APEX_JSON.close_object;
    COMMIT;
EXCEPTION 
    WHEN OPTION_NOT_FOUND THEN
         HTP.print(SQLERRM);
    WHEN OTHERS THEN
         HTP.print(SQLERRM);
end SL_CATEGORIAS_ARTICULOS;

create or replace procedure SL_CATEGORIAS_SERVICIOS
AS 
categorias_cursor SYS_REFCURSOR;
 OPTION_NOT_FOUND EXCEPTION;
begin 
  savepoint prev;
OPEN categorias_cursor FOR
select * FROM VW_CATE_SERVICIOS;
  APEX_JSON.open_object;
        APEX_JSON.write('categorias', categorias_cursor);
    APEX_JSON.close_object;
    COMMIT;
EXCEPTION 
    WHEN OPTION_NOT_FOUND THEN
         HTP.print(SQLERRM);
    WHEN OTHERS THEN
         HTP.print(SQLERRM);
end SL_CATEGORIAS_SERVICIOS;

create or replace procedure SL_LOGIN(USUARIO IN USUARIOS.nombre_usuario%type,CLAVE IN USUARIOS.clave_usuario%type)
AS 
login_cursor SYS_REFCURSOR;
 OPTION_NOT_FOUND EXCEPTION;
begin 
  savepoint prev;
  
OPEN login_cursor FOR

SELECT U.ID_USUARIO AS CODIGO,U.NOMBRE_USUARIO AS nombre from USUARIOS U 
where U.NOMBRE_USUARIO=USUARIO AND U.CLAVE_USUARIO=CLAVE;

  APEX_JSON.open_object;
        APEX_JSON.write('login', login_cursor);
    APEX_JSON.close_object;
    COMMIT;
EXCEPTION 
    WHEN OPTION_NOT_FOUND THEN
         HTP.print(SQLERRM);
    WHEN OTHERS THEN
         HTP.print(SQLERRM);
end SL_LOGIN;