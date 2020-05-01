create or replace PROCEDURE SP_IN_PEDIDOENCABEZADO(IDUSER IN PEDIDO.ID_USUARIO_PEDIDO%TYPE,
IDPAGO IN PEDIDO.ID_TIPOPAGO_PEDIDO%TYPE,IDDOC IN PEDIDO.ID_DOCUMENTO_PEDIDO%TYPE,TOTAL IN PEDIDO.MONTO_TOTAL%TYPE )
AS
 OPTION_NOT_FOUND EXCEPTION;
 cod varchar2(15);
BEGIN 
savepoint prev;
cod:= CONCAT('PD',MAXPPEDIDO);
INSERT INTO PEDIDO (FECHA_PEDIDO, MONTO_TOTAL, ID_ESTADO_PEDIDO, ID_USUARIO_PEDIDO, ID_TIPOPAGO_PEDIDO, ID_DOCUMENTO_PEDIDO, CODIGO_PEDIDO) 
VALUES (TO_DATE('2020-04-26 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), TOTAL, IdEstadoPedido, IDUSER, IDPAGO, IDDOC,cod);
 APEX_JSON.open_object;
 APEX_JSON.write('CodigoPedido',cod);
 APEX_JSON.close_object;
    COMMIT;
EXCEPTION 
    WHEN OPTION_NOT_FOUND THEN
         HTP.print(SQLERRM);
    WHEN OTHERS THEN
         HTP.print(SQLERRM);
END SP_IN_PEDIDOENCABEZADO;