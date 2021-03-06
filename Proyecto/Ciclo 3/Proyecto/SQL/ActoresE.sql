
--ACTORES E--

--Tesorero
CREATE OR REPLACE PACKAGE PC_TESORERO IS
	PROCEDURE AD_Pagos(xmetodoPago IN VARCHAR, xestado IN VARCHAR);
	PROCEDURE UP_Pagos(xestado IN VARCHAR);
	FUNCTION CO_Pagos(xmetodoPago IN VARCHAR, xestado IN VARCHAR) 		RETURN SYS_REFCURSOR;
END PC_TESORERO;

--Cliente
CREATE OR REPLACE PACKAGE PC_CLIENTE IS
    FUNCTION CO_Membresia(xfechaInicio IN DATE, xfechaTermina IN DATE, xestado IN VARCHAR) RETURN SYS_REFCURSOR;
    PROCEDURE UP_Membresia(xestado IN VARCHAR);
    PROCEDURE AD_Membresia(xfechaInicio IN DATE, xfechaTermina IN DATE, xestado IN VARCHAR);
   
END PC_CLIENTE; 


	