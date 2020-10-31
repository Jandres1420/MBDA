--Tesorero
CREATE OR REPLACE PACKAGE BODY PC_TESORERO IS
	PROCEDURE AD_Pagos (xmetodoPago IN VARCHAR, xestado IN VARCHAR) IS 
    BEGIN
        INSERT INTO Pagos(metodoPago,estado) VALUES (xmetodoPago,xestado);
        COMMIT;
	EXCEPTION
        WHEN OTHERS THEN
            ROLLBACK;
            RAISE_APPLICATION_ERROR(-20001, 'Error al insertar pagos');
        END AD_Pagos;
    
    PROCEDURE UP_Pagos (xestado IN VARCHAR) IS
    BEGIN   
        UPDATE Pagos SET estado = xestado;
        COMMIT;
        EXCEPTION
        WHEN OTHERS THEN
            ROLLBACK;
            RAISE_APPLICATION_ERROR(-20001, 'Error al actualizar pagos');

        END UP_Pagos;

    FUNCTION CO_Pagos(xmetodoPago IN VARCHAR, xestado IN VARCHAR)  RETURN SYS_REFCURSOR IS CO_Pagos SYS_REFCURSOR;
        BEGIN
            OPEN CO_Pagos FOR
                SELECT metodoPago,estado FROM Pagos;
            RETURN CO_Pagos;
        END CO_Pagos;
END PC_TESORERO;

--Cliente
create or replace PACKAGE BODY PC_CLIENTE IS
FUNCTION CO_Membresia(xfechaInicio IN DATE, xfechaTermina IN DATE, xestado IN VARCHAR) RETURN SYS_REFCURSOR IS CO_Membresia SYS_REFCURSOR;
    BEGIN 
        OPEN CO_Membresia FOR
            SELECT fechaInicio, fechaTermina,estado FROM Membresias;
        RETURN CO_Membresia;
    END CO_Membresia;

PROCEDURE UP_Membresia(xestado IN VARCHAR) IS
    BEGIN 
        UPDATE Membresias SET estado = xestado;
        COMMIT;
        EXCEPTION
        WHEN OTHERS THEN
            ROLLBACK;
            RAISE_APPLICATION_ERROR(-20001, 'Error al actualizar membresia');

    END UP_Membresia;

PROCEDURE AD_Membresia(xfechaInicio IN DATE, xfechaTermina IN DATE, xestado IN VARCHAR) IS
    BEGIN
        INSERT INTO Membresias(fechaInicio, fechaTermina,estado) VALUES (xfechaInicio, xfechaTermina,xestado);
        COMMIT;
        EXCEPTION
        WHEN OTHERS THEN
            ROLLBACK;
            RAISE_APPLICATION_ERROR(-20001, 'Error al insertar Membresias');
    END AD_Membresia;
END PC_CLIENTE; 





    
