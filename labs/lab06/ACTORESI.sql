-----ACTORESI-----

--PA_ENTRENADOR--

CREATE OR REPLACE PACKAGE BODY PA_ENTRENADOR IS 
    PROCEDURE Ad_Evaluacion(xPuntaje IN NUMBER , xComentarios IN VARCHAR, xRecomendacion IN XMLTYPE) IS
        BEGIN
            INSERT INTO  Evaluacion(puntaje,comentarios,recomendaciones) VALUES
                        (xPuntaje,xComentarios,xRecomendacion);
            COMMIT;
            EXCEPTION
            WHEN OTHERS THEN
                ROLLBACK;
                RAISE_APPLICATION_ERROR(-200001, 'Error al insertar actividad');
        END Ad_Evaluacion;

    PROCEDURE Up_Evaluacion(xPuntaje IN NUMBER , xComentarios IN VARCHAR) IS 

        BEGIN
            UPDATE Evaluacion SET puntaje = xPuntaje WHERE comentarios = xComentarios;
            COMMIT;
            EXCEPTION
            WHEN OTHERS THEN
                ROLLBACK;
                RAISE_APPLICATION_ERROR(-200001, 'Error al insertar actividad');
        END Up_Evaluacion;

    PROCEDURE Ad_Sesion(xDia IN DATE , xOrden IN INTEGER, xDuracion IN INTEGER, xDescripcion IN VARCHAR) IS
        BEGIN
                INSERT INTO  Sesion(dia,orden ,duracion ,description ) VALUES
                            (xDia,xOrden,xDuracion,xDescripcion);
                COMMIT;
                EXCEPTION
                WHEN OTHERS THEN
                    ROLLBACK;
                    RAISE_APPLICATION_ERROR(-200001, 'Error al insertar actividad');
            END Ad_Sesion;
    
    PROCEDURE Up_Sesion(xDescripcion IN VARCHAR) IS
    BEGIN
            UPDATE Sesion SET description = xDescripcion;
            COMMIT;
            EXCEPTION
            WHEN OTHERS THEN
                ROLLBACK;
                RAISE_APPLICATION_ERROR(-200001, 'Error al insertar actividad');
        END Up_Sesion;

    FUNCTION Co_Registros(xnumero IN NUMBER,xfecha IN DATE, xhora IN NUMBER, xsensor IN VARCHAR, xvalor INTEGER) RETURN SYS_REFCURSOR IS Co_Registros SYS_REFCURSOR;
        BEGIN
            OPEN Co_Registros FOR
                SELECT numero,fecha ,hora ,sensor ,valor FROM Registro;
            RETURN Co_Registros;
        END Co_Registros;

    FUNCTION Co_Sesion(xDia IN INTEGER , xOrden IN INTEGER, xDuracion IN INTEGER, xDescripcion IN VARCHAR) RETURN SYS_REFCURSOR IS Co_Sesion SYS_REFCURSOR;
        BEGIN
            OPEN Co_Sesion FOR 
                SELECT dia, orden , duracion , description  FROM Sesion;
            RETURN Co_Sesion;
        END Co_Sesion;
END PA_ENTRENADOR;

--PA_ACTORES--

CREATE OR REPLACE PACKAGE BODY PA_ATLETA IS
    PROCEDURE Ad_Actividad(xfechaInicio IN DATE ,xhoraInicio IN NUMBER,xtiempoTotal IN NUMBER,xpulsacionesProm IN NUMBER)IS
        BEGIN
            INSERT INTO Actividad(fechaInicio,horaInicio,tiempoTotal,pulsaciones ) VALUES
                        (xfechaInicio,xhoraInicio,xtiempoTotal,xpulsacionesProm);
            COMMIT;
            EXCEPTION
            WHEN OTHERS THEN
                ROLLBACK;
                RAISE_APPLICATION_ERROR(-200002, 'Error al insertar actividad');
        END Ad_Actividad;     
    PROCEDURE Ad_Fotos(xfotos IN VARCHAR) IS
        BEGIN
            INSERT INTO Fotos(foto) VALUES (xfotos);
            COMMIT;
            EXCEPTION
            WHEN OTHERS THEN
                ROLLBACK;
                RAISE_APPLICATION_ERROR(-200004, 'Error al insertar foto');
        END Ad_Fotos;
    
    PROCEDURE Up_Actividad(xfechaInicio IN DATE ,xhoraInicio IN NUMBER,xtiempoTotal IN NUMBER,xpulsacionesProm IN NUMBER) IS
         BEGIN
            UPDATE Actividad SET fechaInicio= xfechaInicio WHERE horaInicio= xhoraInicio AND tiempoTotal = xtiempoTotal AND pulsaciones = xpulsacionesProm;
            COMMIT;
            EXCEPTION
            WHEN OTHERS THEN 
                ROLLBACK;
                RAISE_APPLICATION_ERROR(-20000,'Error al modificar evaluacion.');
        END Up_Actividad;

    FUNCTION Co_Evaluacion(xtidEntrenador IN VARCHAR, xnidEntrenador IN VARCHAR, xnumero IN INTEGER, xpuntaje IN NUMBER,
                                xcomentarios IN VARCHAR) RETURN SYS_REFCURSOR IS Co_Evaluacion SYS_REFCURSOR;
            BEGIN                    
                OPEN Co_Evaluacion FOR
                    SELECT tidE,nidE,numero,puntaje,comentarios FROM Evaluacion
                    ORDER BY puntaje;
                RETURN Co_Evaluacion;
            END Co_Evaluacion;
    FUNCTION Co_Actividad(xnumero IN INTEGER) RETURN SYS_REFCURSOR IS Co_Actividad SYS_REFCURSOR;
            BEGIN
                OPEN Co_Actividad FOR
                    SELECT numero FROM Actividad;
                RETURN Co_Actividad;
            END Co_Actividad;
END PA_ATLETA;

