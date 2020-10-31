-----ACTORESE-----

--PA_ENTRENADOR--

CREATE OR REPLACE  PACKAGE PA_ENTRENADOR IS 
    PROCEDURE Ad_Evaluacion(xPuntaje IN NUMBER , xComentarios IN VARCHAR, xRecomendacion IN XMLTYPE);
    PROCEDURE Up_Evaluacion(xPuntaje IN NUMBER , xComentarios IN VARCHAR);
    PROCEDURE Ad_Sesion(xDia IN DATE , xOrden IN INTEGER, xDuracion IN INTEGER, xDescripcion IN VARCHAR);
    PROCEDURE Up_Sesion(xDescripcion IN VARCHAR);
    FUNCTION Co_Registro(xnumero IN NUMBER,xfecha IN DATE, xhora IN NUMBER, xsensor IN VARCHAR, xvalor INTEGER) RETURN SYS_REFCURSOR;
    FUNCTION Co_Sesion(xDia IN INTEGER , xOrden IN INTEGER, xDuracion IN INTEGER, xDescripcion IN VARCHAR) RETURN SYS_REFCURSOR;
END PA_ENTRENADOR;

--PA ATLETA--

CREATE OR REPLACE PACKAGE PA_ATLETA IS 
    PROCEDURE Ad_Actividad(xfechaInicio IN DATE ,xhoraInicio IN NUMBER,xtiempoTotal IN NUMBER,xpulsacionesProm IN NUMBER);
    PROCEDURE Ad_Fotos(xfotos IN VARCHAR);
    PROCEDURE Up_Actividad(xfechaInicio IN DATE ,xhoraInicio IN NUMBER,xtiempoTotal IN NUMBER,xpulsacionesProm IN NUMBER);
    FUNCTION Co_Evaluacion(xtidEntrenador IN VARCHAR, xnidEntrenador IN VARCHAR, xnumero IN INTEGER, xpuntaje IN NUMBER,
                            xcomentarios IN VARCHAR)  RETURN SYS_REFCURSOR;
    FUNCTION Co_Actividad(xnumero IN INTEGER) RETURN SYS_REFCURSOR;

END PA_ATLETA;