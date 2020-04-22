


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