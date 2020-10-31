----XCRUDI ACTIVIDAD----
create or replace PACKAGE BODY PC_ACTIVIDAD IS
    PROCEDURE Ad_Planeada(xfechaInicio IN DATE ,xhoraInicio IN NUMBER,xtiempoTotal IN NUMBER,xpulsacionesProm IN NUMBER)IS
        BEGIN
            INSERT INTO  Planeada(fechaInicio,horaInicio,tiempoTotal,pulsaciones) VALUES
                        (xfechaInicio,xhoraInicio,xtiempoTotal,xpulsacionesProm);
            COMMIT;
            EXCEPTION
            WHEN OTHERS THEN
                ROLLBACK;
                RAISE_APPLICATION_ERROR(-200001, 'Error al insertar actividad');
        END Ad_Planeada; 


    PROCEDURE Ad_Libre(xfechaInicio IN DATE ,xhoraInicio IN NUMBER,xtiempoTotal IN NUMBER,xpulsacionesProm IN NUMBER)IS
        BEGIN
            INSERT INTO Libre(fechaInicio,horaInicio,tiempoTotal,pulsaciones) VALUES
                        (xfechaInicio,xhoraInicio,xtiempoTotal,xpulsacionesProm);
            COMMIT;
            EXCEPTION
            WHEN OTHERS THEN
                ROLLBACK;
                RAISE_APPLICATION_ERROR(-200002, 'Error al insertar actividad');
        END Ad_Libre; 

    PROCEDURE Ad_Fotos(xfotos IN VARCHAR) IS
        BEGIN
            INSERT INTO Fotos(foto) VALUES (xfotos);
            COMMIT;
            EXCEPTION
            WHEN OTHERS THEN
                ROLLBACK;
                RAISE_APPLICATION_ERROR(-200004, 'Error al insertar foto');
        END Ad_Fotos;

    PROCEDURE Ad_Registros (xnumero IN NUMBER,xfecha IN DATE, xhora IN NUMBER, xsensor IN VARCHAR, xvalor INTEGER) IS
         BEGIN
            INSERT INTO Registro(fecha, hora, sensor, valor) VALUES (xfecha, xhora, xsensor, xvalor);
            COMMIT;
            EXCEPTION
            WHEN OTHERS THEN
                ROLLBACK;
                RAISE_APPLICATION_ERROR(-200004, 'Error al insertar registro');
        END Ad_Registros;

    FUNCTION Co_Registros(idRegistro IN INTEGER) RETURN SYS_REFCURSOR IS Co_Registros SYS_REFCURSOR;
        BEGIN
            OPEN Co_Registros FOR
                SELECT numero FROM Registro;
            RETURN Co_Registros;
        END Co_Registros;

     FUNCTION Co_Actividad(xnumero IN INTEGER) RETURN SYS_REFCURSOR IS Co_Actividad SYS_REFCURSOR;
        BEGIN
            OPEN Co_Actividad FOR
                SELECT numero FROM Actividad;
            RETURN Co_Actividad;
        END Co_Actividad;

    FUNCTION Co_Evaluacion(xtidEntrenador IN VARCHAR, xnidEntrenador IN VARCHAR, xnumero IN INTEGER, xpuntaje IN NUMBER,
                            xcomentarios IN VARCHAR) RETURN SYS_REFCURSOR IS Co_Evaluacion SYS_REFCURSOR;
        BEGIN
            OPEN Co_Evaluacion FOR
                SELECT tidE,nidE,numero,puntaje,comentarios FROM Evaluacion
                ORDER BY puntaje;
            RETURN Co_Evaluacion;
        END Co_Evaluacion;

    FUNCTION Co_Recomendaciones RETURN XMLTYPE IS Co_XML XMLTYPE;
        BEGIN
            Co_XML := dbms_xmlgen.getxmltype(
                'SELECT * FROM recomendaciones'
            );
            RETURN Co_Recomendaciones;
        END Co_Recomendaciones;
END PC_ACTIVIDAD;

----XCRUDI EVALUACION----

CREATE OR REPLACE PACKAGE BODY PC_EVALUACION IS
    PROCEDURE Ad_SimilarA(xPorcentaje IN NUMBER)IS
        BEGIN
            INSERT INTO  SimilarA(porcentaje) VALUES
                        (xPorcentaje);
            COMMIT;
            EXCEPTION
            WHEN OTHERS THEN
                ROLLBACK;
                RAISE_APPLICATION_ERROR(-200001, 'Error al insertar actividad');
        END Ad_SimilarA; 

    PROCEDURE Ad_Evaluacion(xPuntaje IN NUMBER , xComentarion IN VARCHAR, xRecomendacion IN XMLTYPE)IS
        BEGIN
            INSERT INTO  Evaluacion(puntaje,comentarios,recomendaciones ) VALUES
                        (xPuntaje,xComentarion,xRecomendacion);
            COMMIT;
            EXCEPTION
            WHEN OTHERS THEN
                ROLLBACK;
                RAISE_APPLICATION_ERROR(-200001, 'Error al insertar actividad');
        END Ad_Evaluacion;    

    FUNCTION Co_Evalucion(xNumeroE IN NUMBER) RETURN SYS_REFCURSOR IS Co_Evalucion SYS_REFCURSOR;
        BEGIN
            OPEN Co_Evalucion FOR
                SELECT numero FROM Evaluacion;
            RETURN Co_Evalucion;
        END Co_Evalucion;

    FUNCTION CO_Evalacion2(xtidEntrenador IN VARCHAR, xnidEntrenador IN VARCHAR, xPuntaje IN NUMBER, xComentario IN VARCHAR) RETURN SYS_REFCURSOR IS CO_Evalacion2 SYS_REFCURSOR;
        BEGIN
            OPEN CO_Evalacion2 FOR
                SELECT tidE,nidE,puntaje, comentarios , recomendaciones FROM Evaluacion;
            RETURN CO_Evalacion2;
        END CO_Evalacion2;
END PC_EVALUACION;