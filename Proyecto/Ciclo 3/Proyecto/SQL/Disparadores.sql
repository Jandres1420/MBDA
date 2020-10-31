
/*El id de la zona común se asignan automáticamente*/

CREATE OR REPLACE TRIGGER T1_ZCOMUN
BEFORE INSERT ON ZonasComunes
FOR EACH ROW
DECLARE
valorNumero INTEGER;
BEGIN 
    SELECT COUNT(*)+1 INTO valorNumero FROM ZonasComunes;
    :new.idZonaComun := valorNumero;
END;

/*Solo le puede actualizar cantidad */
CREATE OR REPLACE TRIGGER T2_ZCOMUN
BEFORE UPDATE ON ZonasComunes
FOR EACH ROW
BEGIN
    IF :new.idZonaComun <>:old.idZonaComun OR :new.horaInicio <>:old.horaInicio OR :new.horaFinal <>:old.horaFinal OR :new.tipo <>:old.tipo
    THEN
        raise_application_error(-2000021,'No se pueden actualizar');
    END IF;
END;

/*Las zonas comunes no se pueden eliminar.*/
CREATE OR REPLACE TRIGGER T3_ZCOMUN
BEFORE DELETE ON ZonasComunes
FOR EACH ROW
BEGIN
    raise_application_error(-2000021,'No se puede eliminar');
END;

/*El id de cada membresia se asigna automáticamente*/

CREATE OR REPLACE TRIGGER T1_MEMBRESIA
BEFORE INSERT ON Membresias
FOR EACH ROW
DECLARE
valorNumero INTEGER;
BEGIN 
    SELECT COUNT(*)+1 INTO valorNumero FROM Membresias;
    :new.idMembresia := valorNumero;
END;

/*El id de cada usuario se genera automáticamente*/
CREATE OR REPLACE TRIGGER T1_USUARIOS
BEFORE INSERT ON Usuarios
FOR EACH ROW
DECLARE
valorNumero INTEGER;
BEGIN 
    SELECT COUNT(*)+1 INTO valorNumero FROM Usuarios;
    :new.idUsuario := valorNumero;
END;

/*El id de cada registro se genera automáticamente*/
CREATE OR REPLACE TRIGGER T2_REGISTROS
BEFORE INSERT ON Registros
FOR EACH ROW
DECLARE
valorNumero INTEGER;
BEGIN 
    SELECT COUNT(*)+1 INTO valorNumero FROM Registros;
    :new.idRegistro := valorNumero;
END;



/*Referencia de pago*/

CREATE OR REPLACE TRIGGER T1_PAGOS
BEFORE INSERT ON Pagos
FOR EACH ROW
DECLARE
valorNumero INTEGER;
BEGIN 
    SELECT COUNT(*)+1 INTO valorNumero FROM Pagos;
    :new.referencia:= valorNumero;
END;


 Duracion Membresia 

create or replace TRIGGER T2_Membresias
BEFORE INSERT ON Membresias
FOR EACH ROW 
DECLARE
valorDias INTEGER;
BEGIN
    SELECT (fechaTermina - fechaInicio) INTO valorDias
    FROM Membresias;      
    :new.duracion := valorDias;
END;



/* Fecha Registro */ 

CREATE OR REPLACE TRIGGER T1_REGISTROS
BEFORE INSERT ON Registros
FOR EACH ROW 
BEGIN  
    :new.fecha:=SYSDATE;
END;

/*El id de cada email se genera automáticamente*/
CREATE OR REPLACE TRIGGER T1_EMAIL
BEFORE INSERT ON UsuariosEmail
FOR EACH ROW
DECLARE
valorNumero INTEGER;
BEGIN 
    SELECT COUNT(*)+1 INTO valorNumero FROM UsuariosEmail;
    :new.idEmail:= valorNumero;
END;

/*El id de cada telefono de ususario se genera automáticamente*/
CREATE OR REPLACE TRIGGER T1_TELEFONOS
BEFORE INSERT ON UsuariosTelefonos
FOR EACH ROW
DECLARE
valorNumero INTEGER;
BEGIN 
    SELECT COUNT(*)+1 INTO valorNumero FROM UsuariosTelefonos;
    :new.idTelefono:= valorNumero;
END;

/*El id de una persona perteneciente a una membresia se genera automáticamente*/
CREATE OR REPLACE TRIGGER T1_MELITE
BEFORE INSERT ON PersonasElite
FOR EACH ROW
DECLARE
valorNumero INTEGER;
BEGIN 
    SELECT COUNT(*)+1 INTO valorNumero FROM PersonasElite;
    :new.idPersonasE:= valorNumero;
END;

CREATE OR REPLACE TRIGGER T1_MPremium
BEFORE INSERT ON PersonasPremium
FOR EACH ROW
DECLARE
valorNumero INTEGER;
BEGIN 
    SELECT COUNT(*)+1 INTO valorNumero FROM PersonasPremium;
    :new.idPersonasE:= valorNumero;
END;


CREATE OR REPLACE TRIGGER T1_MPrestige
BEFORE INSERT ON PersonasPrestige
FOR EACH ROW
DECLARE
valorNumero INTEGER;
BEGIN 
    SELECT COUNT(*)+1 INTO valorNumero FROM PersonasPrestige;
    :new.idPersonasE:= valorNumero;
END;



	








