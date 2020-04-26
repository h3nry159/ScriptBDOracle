create or replace procedure SP_SL_TIPOPAGO

AS 
pedido_cursor SYS_REFCURSOR;
 OPTION_NOT_FOUND EXCEPTION;
begin 
  savepoint prev;

OPEN pedido_cursor FOR

SELECT TP.ID_TIPO_PAGO AS CODIGO,TP.TIPO_PAGO AS NOMBRE FROM TIPO_PAGO TP;

 APEX_JSON.write(pedido_cursor);

    COMMIT;
EXCEPTION 
    WHEN OPTION_NOT_FOUND THEN
         HTP.print(SQLERRM);
    WHEN OTHERS THEN
         HTP.print(SQLERRM);
end SP_SL_TIPOPAGO;