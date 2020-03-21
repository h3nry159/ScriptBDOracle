create or replace procedure SP_SL_DEPARTAMENTO
AS 
departamento_cursor SYS_REFCURSOR;
 OPTION_NOT_FOUND EXCEPTION;
begin 
  savepoint prev;
OPEN departamento_cursor FOR

SELECT * FROM VW_DEPARTAMENTOS;

        APEX_JSON.write( departamento_cursor);
 
    COMMIT;
EXCEPTION 
    WHEN OPTION_NOT_FOUND THEN
         HTP.print(SQLERRM);
    WHEN OTHERS THEN
         HTP.print(SQLERRM);
end SP_SL_DEPARTAMENTO;