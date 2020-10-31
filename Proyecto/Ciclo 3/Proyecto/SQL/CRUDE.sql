------CRUDE------

----CRUDE ZONA COMUN----

CREATE OR REPLACE PACKAGE PC_ZonasComunes IS
    PROCEDURE Ad_ZonaComunes(xhoraInicio IN NUMBER , xhoraFinal IN NUMBER, xcapacidad IN NUMBER, xtipo IN VARCHAR);
    FUNCTION  Co_ZonaComunes(xhoraInicio IN NUMBER , xhoraFinal IN NUMBER, xcapacidad IN NUMBER, xtipo IN VARCHAR) RETURN SYS_REFCURSOR;
END PC_ZonasComunes;

----CRUDE USUARIO----
create or replace PACKAGE PC_Usuario IS 
    PROCEDURE Ad_Usuario(xdireccion IN VARCHAR,xnombre IN VARCHAR, xnDocumento IN VARCHAR, xtDocumento IN VARCHAR);
    PROCEDURE Ad_UsuariosTelefonos(xidUsuario IN VARCHAR,xtelefonos IN VARCHAR);
    PROCEDURE Ad_UsuariosEmail(xidUsuario IN VARCHAR,xemail IN VARCHAR);
    PROCEDURE Ad_Registros(xfecha IN DATE, xduracion IN NUMBER);
    PROCEDURE Ad_MPrestige(xcantPersonas IN NUMBER);
    PROCEDURE Ad_MElite(xcantPersonas IN NUMBER);
    PROCEDURE Ad_MPremium(xcantPersonas IN NUMBER);
    PROCEDURE Ad_PersonasElite(xnombre IN VARCHAR);
    PROCEDURE Ad_PersonasPremium(xnombre IN VARCHAR);
    PROCEDURE Ad_PersonasPrestige(xnombre IN VARCHAR);
    PROCEDURE Ad_Pagos(xmetodoPago IN VARCHAR);
    PROCEDURE El_PersonasElite(xnombre IN VARCHAR);
    PROCEDURE El_PersonasPremium(xnombre IN VARCHAR);
    PROCEDURE El_PersonasPrestige(xnombre IN VARCHAR);
    FUNCTION Co_UsuariosTelefonos(xtelefonos IN VARCHAR) RETURN SYS_REFCURSOR;
    FUNCTION Co_UsuariosEmai(xemail IN VARCHAR) RETURN SYS_REFCURSOR;
    FUNCTION Co_Registros(xfecha IN DATE , xduracion IN NUMBER) RETURN SYS_REFCURSOR;
    FUNCTION Co_Membresias(xestado IN VARCHAR) RETURN SYS_REFCURSOR;
    FUNCTION Co_MPrestige(xcantPersonas IN NUMBER) RETURN SYS_REFCURSOR;
    FUNCTION Co_MElite(xcantPersonas IN NUMBER) RETURN SYS_REFCURSOR;
    FUNCTION Co_MPremium(xcantPersonas IN NUMBER) RETURN SYS_REFCURSOR; 
    FUNCTION Co_PersonasElite(xnombre IN VARCHAR) RETURN SYS_REFCURSOR;
    FUNCTION Co_PersonasPremium(xnombre IN VARCHAR) RETURN SYS_REFCURSOR;
    FUNCTION Co_PersonasPrestige(xnombre IN VARCHAR) RETURN SYS_REFCURSOR;
    FUNCTION Co_Pagos(estado IN VARCHAR) RETURN SYS_REFCURSOR; 
END PC_Usuario;