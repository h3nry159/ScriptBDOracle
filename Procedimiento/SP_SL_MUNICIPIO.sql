create or replace PROCEDURE SP_SL_MUNICIPIO(IdDepartamento IN MUNICIPIOS.id_municipios%TYPE)
AS
municipio_cursor SYS_REFCURSOR;
respuesta EXCEPTION;
BEGIN
SAVEPOINT prev;
OPEN municipio_cursor FOR

SELECT MU.ID_MUNICIPIOS as codigo,MU.NOMBRE_MUNICIPIOS as nombre 
FROM MUNICIPIOS MU where MU.ID_DEPARTAMENTO_MUNICIPIO=IdDepartamento;

        APEX_JSON.write( municipio_cursor);
COMMIT;
EXCEPTION
WHEN respuesta then
    HTP.print(SQLERRM);
    WHEN OTHERS THEN
    HTP.print(SQLERRM);
END SP_SL_MUNICIPIO;