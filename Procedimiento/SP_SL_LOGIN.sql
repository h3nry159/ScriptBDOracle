create or replace procedure SP_SL_LOGIN
(CLAVE IN USUARIOS.clave_usuario%type,USUARIO IN USUARIOS.nombre_usuario%type)
AS 
login_cursor SYS_REFCURSOR;
 OPTION_NOT_FOUND EXCEPTION;
begin 
  savepoint prev;

OPEN login_cursor FOR

SELECT U.ID_USUARIO AS Codigo,U.NOMBRE_USUARIO AS Nombre from USUARIOS U 
where U.NOMBRE_USUARIO=USUARIO AND U.CLAVE_USUARIO=CLAVE and U.ID_ESTADO_USUARIO=1;


 APEX_JSON.write(login_cursor);
 
    COMMIT;
EXCEPTION 
    WHEN OPTION_NOT_FOUND THEN
         HTP.print(SQLERRM);
    WHEN OTHERS THEN
         HTP.print(SQLERRM);
end SP_SL_LOGIN;