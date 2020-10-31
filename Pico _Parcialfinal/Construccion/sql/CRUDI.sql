------CRUDI------

----CRUDI OPINIONES----
create or replace PACKAGE BODY PC_OPINION IS 

    PROCEDURE Ad_Opinion(xopinion IN VARCHAR, xjustificacion IN VARCHAR) IS
        BEGIN
            INSERT INTO  OPINIONES(opinion,justificacion) VALUES
                        (xopinion,xjustificacion);
            COMMIT;
            EXCEPTION
            WHEN OTHERS THEN
                ROLLBACK;
                RAISE_APPLICATION_ERROR(-20001, 'Error al insertar opinion');
        END Ad_Opinion; 

  FUNCTION Co_Opinion(xfecha IN DATE , xopinion IN VARCHAR , xjustificacion IN VARCHAR) RETURN SYS_REFCURSOR;
        BEGIN
            OPEN Co_Opinion FOR
                SELECT fecha,opinion,justificacion FROM OPINIONES;
            RETURN Co_Opinion;
        END Co_Opinion;

END PC_OPINION;
