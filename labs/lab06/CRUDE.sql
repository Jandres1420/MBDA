---------CRUDE ACTIVIDAD---------

CREATE OR REPLACE PACKAGE PC_ACTIVIDAD IS 
    PROCEDURE Ad_Planeada(xfechaInicio IN DATE ,xhoraInicio IN NUMBER,xtiempoTotal IN NUMBER,xpulsacionesProm IN NUMBER);
    PROCEDURE Ad_Libre(xfechaInicio IN DATE ,xhoraInicio IN NUMBER,xtiempoTotal IN NUMBER,xpulsacionesProm IN NUMBER);
    PROCEDURE Ad_Fotos(xfotos IN VARCHAR);
    PROCEDURE Ad_Registros (xnumero IN NUMBER,xfecha IN DATE, xhora IN NUMBER, xsensor IN VARCHAR, xvalor INTEGER);
    FUNCTION Co_Registros (idRegistro IN INTEGER) RETURN SYS_REFCURSOR;
    FUNCTION Co_Actividad(xnumero IN INTEGER) RETURN SYS_REFCURSOR;
    FUNCTION Co_Evaluacion(xtidEntrenador IN VARCHAR, xnidEntrenador IN VARCHAR, xnumero IN INTEGER, xpuntaje IN NUMBER,
                            xcomentarios IN VARCHAR)  RETURN SYS_REFCURSOR;
    FUNCTION Co_Recomendaciones RETURN XMLTYPE;
END PC_ACTIVIDAD;

---------CRUDE EVALUACION ---------
CREATE OR REPLACE PACKAGE PC_EVALUACION IS 
    PROCEDURE Ad_SimilarA(xPorcentaje IN NUMBER);
    PROCEDURE Ad_Evaluacion(xPuntaje IN NUMBER , xComentarion IN VARCHAR, xRecomendacion IN XMLTYPE);
    FUNCTION Co_Evalucion(xNumeroE IN NUMBER) RETURN SYS_REFCURSOR;
    FUNCTION CO_Evalacion2(xtidEntrenador IN VARCHAR, xnidEntrenador IN VARCHAR, xPuntaje IN NUMBER, xComentario IN VARCHAR) RETURN SYS_REFCURSOR; 

END PC_EVALUACION; 