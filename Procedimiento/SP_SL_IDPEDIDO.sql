create or replace procedure SP_SL_IDPEDIDO
(cod IN VARCHAR2)
AS 
id_cursor SYS_REFCURSOR;
 OPTION_NOT_FOUND EXCEPTION;
begin 
  savepoint prev;

OPEN id_cursor FOR

select id_pedido AS CodigoPedido from PEDIDO where CODIGO_PEDIDO=cod ;

 APEX_JSON.write(id_cursor);

    COMMIT;
EXCEPTION 
    WHEN OPTION_NOT_FOUND THEN
         HTP.print(SQLERRM);
    WHEN OTHERS THEN
         HTP.print(SQLERRM);
end SP_SL_IDPEDIDO;