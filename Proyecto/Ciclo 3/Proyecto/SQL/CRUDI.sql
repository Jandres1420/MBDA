------CRUDI------

----CRUDI OPINIONES---
create or replace PACKAGE BODY PC_ZonasComunes IS 

    PROCEDURE Ad_ZonaComunes(xhoraInicio IN NUMBER , xhoraFinal IN NUMBER, xcapacidad IN NUMBER, xtipo IN VARCHAR) IS
        BEGIN
            INSERT INTO  ZonasComunes(horaInicio,horaFinal,capacidad,tipo) VALUES
                        (xhoraInicio,xhoraFinal,xcapacidad,xtipo);
            COMMIT;
            EXCEPTION
            WHEN OTHERS THEN
                ROLLBACK;
                RAISE_APPLICATION_ERROR(-20001, 'Error al insertar zona comun');
        END Ad_ZonaComunes; 


    FUNCTION Co_ZonaComunes(xhoraInicio IN NUMBER , xhoraFinal IN NUMBER, xcapacidad IN NUMBER, xtipo IN VARCHAR)RETURN SYS_REFCURSOR IS Co_ZonaComunes SYS_REFCURSOR;
        BEGIN
            OPEN Co_ZonaComunes FOR
                SELECT horaInicio,horaFinal,capacidad,tipo FROM ZonasComunes;
            RETURN Co_ZonaComunes;
        END Co_ZonaComunes;

END PC_ZonasComunes;

----CRUDI USUARIO----

create or replace PACKAGE BODY PC_Usuario IS 
    PROCEDURE Ad_Usuario(xdireccion IN VARCHAR,xnombre IN VARCHAR, xnDocumento IN VARCHAR, xtDocumento IN VARCHAR) IS
        BEGIN
            INSERT INTO Usuarios(direccion,nombre,nDocumento,tDocumento) VALUES
                        (xdireccion,xnombre,xnDocumento,xtDocumento);
            COMMIT;
            EXCEPTION
            WHEN OTHERS THEN
                ROLLBACK;
                RAISE_APPLICATION_ERROR(-20001, 'Error al insertar usuario');
        END Ad_Usuario; 

    PROCEDURE Ad_UsuariosTelefonos(xidUsuario IN VARCHAR,xtelefonos IN VARCHAR) IS
        BEGIN
            INSERT INTO UsuariosTelefonos(idUsuario,telefonos) VALUES
                        (xidUsuario,xtelefonos);
            COMMIT;
            EXCEPTION
            WHEN OTHERS THEN
                ROLLBACK;
                RAISE_APPLICATION_ERROR(-20001, 'Error al insertar telefono de usuario');
        END Ad_UsuariosTelefonos; 

    PROCEDURE Ad_UsuariosEmail(xidUsuario IN VARCHAR,xemail IN VARCHAR) IS
        BEGIN
            INSERT INTO UsuariosEmail(idUsuario,email) VALUES
                        (xidUsuario,xemail);
            COMMIT;
            EXCEPTION
            WHEN OTHERS THEN
                ROLLBACK;
                RAISE_APPLICATION_ERROR(-20001, 'Error al insertar email de usuario');
        END Ad_UsuariosEmail; 

    PROCEDURE Ad_Registros(xfecha IN DATE, xduracion IN NUMBER) IS
        BEGIN
            INSERT INTO Registros(fecha,duracion) VALUES
                        (xfecha,xduracion);
            COMMIT;
            EXCEPTION
            WHEN OTHERS THEN
                ROLLBACK;
                RAISE_APPLICATION_ERROR(-20001, 'Error al insertar registros');
        END Ad_Registros;     

    PROCEDURE Ad_MPrestige(xcantPersonas IN NUMBER) IS
        BEGIN
            INSERT INTO MPrestige(cantPersonas) VALUES
                        (xcantPersonas);
            COMMIT;
            EXCEPTION
            WHEN OTHERS THEN
                ROLLBACK;
                RAISE_APPLICATION_ERROR(-20001, 'Error al insertar Cantidad personas a membresia');
        END Ad_MPrestige;   

    PROCEDURE Ad_MElite(xcantPersonas IN NUMBER) IS
        BEGIN
            INSERT INTO MElite(cantPersonas) VALUES
                        (xcantPersonas);
            COMMIT;
            EXCEPTION
            WHEN OTHERS THEN
                ROLLBACK;
                RAISE_APPLICATION_ERROR(-20001, 'Error al insertar Cantidad personas a membresia');
        END Ad_MElite;      

    PROCEDURE Ad_MPremium(xcantPersonas IN NUMBER) IS
        BEGIN
            INSERT INTO MPremium(cantPersonas) VALUES
                        (xcantPersonas);
            COMMIT;
            EXCEPTION
            WHEN OTHERS THEN
                ROLLBACK;
                RAISE_APPLICATION_ERROR(-20001, 'Error al insertar Cantidad personas a membresia');
        END Ad_MPremium;        

    PROCEDURE Ad_PersonasElite(xnombre IN VARCHAR) IS
        BEGIN
            INSERT INTO PersonasElite(nombre) VALUES
                        (xnombre);
            COMMIT;
            EXCEPTION
            WHEN OTHERS THEN
                ROLLBACK;
                RAISE_APPLICATION_ERROR(-20001, 'Error al insertar persona');
        END Ad_PersonasElite; 

    PROCEDURE Ad_PersonasPremium(xnombre IN VARCHAR) IS
        BEGIN
            INSERT INTO PersonasPremium(nombre) VALUES
                        (xnombre);
            COMMIT;
            EXCEPTION
            WHEN OTHERS THEN
                ROLLBACK;
                RAISE_APPLICATION_ERROR(-20001, 'Error al insertar persona');
        END Ad_PersonasPremium;  

    PROCEDURE Ad_PersonasPrestige(xnombre IN VARCHAR) IS
        BEGIN
            INSERT INTO PersonasPrestige(nombre) VALUES
                        (xnombre);
            COMMIT;
            EXCEPTION
            WHEN OTHERS THEN
                ROLLBACK;
                RAISE_APPLICATION_ERROR(-20001, 'Error al insertar persona');
        END Ad_PersonasPrestige;  

    PROCEDURE Ad_Pagos(xmetodoPago IN VARCHAR) IS
        BEGIN
            INSERT INTO Pagos(metodoPago) VALUES
                        (xmetodoPago);
            COMMIT;
            EXCEPTION
            WHEN OTHERS THEN
                ROLLBACK;
                RAISE_APPLICATION_ERROR(-20001, 'Error al insertar pagos');
        END Ad_Pagos;  

    PROCEDURE El_PersonasElite(xnombre IN VARCHAR) IS
    BEGIN
        DELETE FROM PersonasElite WHERE nombre=xnombre;
    END El_PersonasElite; 

    PROCEDURE El_PersonasPremium(xnombre IN VARCHAR) IS
    BEGIN
        DELETE FROM PersonasPremium WHERE nombre=xnombre;
    END El_PersonasPremium; 

    PROCEDURE El_PersonasPrestige(xnombre IN VARCHAR) IS
    BEGIN
        DELETE FROM PersonasPremium WHERE nombre=xnombre;
    END El_PersonasPrestige; 

    FUNCTION  Co_UsuariosTelefonos(xtelefonos IN VARCHAR) RETURN SYS_REFCURSOR IS Co_UsuariosTelefonos SYS_REFCURSOR;
        BEGIN
            OPEN Co_UsuariosTelefonos FOR
                SELECT telefonos FROM UsuariosTelefonos;
            RETURN Co_UsuariosTelefonos;
        END Co_UsuariosTelefonos;

    FUNCTION Co_UsuariosEmai(xemail IN VARCHAR) RETURN SYS_REFCURSOR IS Co_UsuariosEmai SYS_REFCURSOR;
        BEGIN
            OPEN Co_UsuariosEmai FOR
                SELECT email FROM UsuariosEmail;
            RETURN Co_UsuariosEmai;
        END Co_UsuariosEmai;

    FUNCTION Co_Registros(xfecha IN DATE , xduracion IN NUMBER) RETURN SYS_REFCURSOR IS Co_Registros SYS_REFCURSOR;
        BEGIN
            OPEN Co_Registros FOR
                SELECT fecha,duracion FROM Registros;
            RETURN Co_Registros;
        END Co_Registros;

    FUNCTION Co_Membresias(xestado IN VARCHAR) RETURN SYS_REFCURSOR IS Co_Membresias SYS_REFCURSOR;
        BEGIN
            OPEN Co_Membresias FOR
                SELECT estado FROM Membresias;
            RETURN Co_Membresias;
        END Co_Membresias;    

    FUNCTION Co_MPrestige(xcantPersonas IN NUMBER) RETURN SYS_REFCURSOR IS Co_MPrestige SYS_REFCURSOR;
        BEGIN
            OPEN Co_MPrestige FOR
                SELECT cantPersonas FROM MPrestige;
            RETURN Co_MPrestige;
        END Co_MPrestige;    

    FUNCTION Co_MElite(xcantPersonas IN NUMBER) RETURN SYS_REFCURSOR IS Co_MElite SYS_REFCURSOR;
        BEGIN
            OPEN Co_MElite FOR
                SELECT cantPersonas FROM MElite;
            RETURN Co_MElite;
        END Co_MElite;   

    FUNCTION Co_MPremium(xcantPersonas IN NUMBER) RETURN SYS_REFCURSOR IS Co_MPremium SYS_REFCURSOR;
        BEGIN
            OPEN Co_MPremium FOR
                SELECT cantPersonas FROM MPremium;
            RETURN Co_MPremium;
        END Co_MPremium;       

    FUNCTION Co_PersonasElite(xnombre IN VARCHAR) RETURN SYS_REFCURSOR IS Co_PersonasElite SYS_REFCURSOR;
        BEGIN
            OPEN Co_PersonasElite FOR
                SELECT nombre FROM PersonasElite;
            RETURN Co_PersonasElite;
        END Co_PersonasElite;       

    FUNCTION Co_PersonasPremium(xnombre IN VARCHAR) RETURN SYS_REFCURSOR IS Co_PersonasPremium SYS_REFCURSOR;
        BEGIN
            OPEN Co_PersonasPremium FOR
                SELECT nombre FROM PersonasPremium;
            RETURN Co_PersonasPremium;
        END Co_PersonasPremium;    

    FUNCTION Co_PersonasPrestige(xnombre IN VARCHAR) RETURN SYS_REFCURSOR IS Co_PersonasPrestige SYS_REFCURSOR;
        BEGIN
            OPEN Co_PersonasPrestige FOR
                SELECT nombre FROM PersonasPrestige;
            RETURN Co_PersonasPrestige;
        END Co_PersonasPrestige;     

    FUNCTION Co_Pagos(estado IN VARCHAR) RETURN SYS_REFCURSOR IS Co_Pagos SYS_REFCURSOR;
        BEGIN
            OPEN Co_Pagos FOR
                SELECT estado FROM Pagos;
            RETURN Co_Pagos;
        END Co_Pagos;     

END PC_Usuario;