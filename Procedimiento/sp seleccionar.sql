
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

create or replace procedure SL_ARTICULOS_TODOS
AS 
articulos_cursor SYS_REFCURSOR;
 OPTION_NOT_FOUND EXCEPTION;
begin 
  savepoint prev;
OPEN articulos_cursor FOR
SELECT A.ID_ARTICULO AS CODIGO,BASE64ENCODE(A.IMAGEN_ARTICULO) AS IMAGEN,A.NOMBRE_ARTICULO AS NOMBRE,A.PRECIO_ARTICULO AS PRECIO,
A.DESCRIPCION_ARTICULO AS DESCRIPCION,C.NOMBRE_CATEGORIA AS CATEGORIA
FROM ARTICULOS A INNER JOIN CATEGORIA C ON A.ID_CATEGORIA_ARTICULO=C.ID_CATEGORIA;
 
        APEX_JSON.open_object;
        APEX_JSON.write('departamentos',articulos_cursor);
    APEX_JSON.close_object;
    COMMIT;
EXCEPTION 
    WHEN OPTION_NOT_FOUND THEN
         HTP.print(SQLERRM);
    WHEN OTHERS THEN
         HTP.print(SQLERRM);
end SL_ARTICULOS_TODOS;

create or replace procedure SL_SERVICIO_TODOS
AS 
servicios_cursor SYS_REFCURSOR;
 OPTION_NOT_FOUND EXCEPTION;
begin 
  savepoint prev;
OPEN servicios_cursor FOR

select s.ID_SERVICIO as codigo,BASE64ENCODE(s.IMAGEN_SERVICIO) as imagen,s.NOMBRE_SERVICIO as nombre,
s.PRECIO_SERVICIO as precio,s.DESCRIPCION_SERVICIO as descripcion, c.NOMBRE_CATEGORIA as categoria 
from SERVICIOS s inner join CATEGORIA c on c.ID_CATEGORIA=s.ID_CATEGORIA_SERVICIO;
 
      APEX_JSON.open_object;
      APEX_JSON.write('departamentos',servicios_cursor);
    APEX_JSON.close_object;
    COMMIT;
EXCEPTION 
    WHEN OPTION_NOT_FOUND THEN
         HTP.print(SQLERRM);
    WHEN OTHERS THEN
         HTP.print(SQLERRM);
end SL_SERVICIO_TODOS;