----------------------------------------------------Registrar Evaluacion ---------------------------------------------------------------
/*El número y la fecha se asignan automáticamente*/
CREATE OR REPLACE TRIGGER T1_Evaluacion
BEFORE INSERT ON Evaluacion
FOR EACH ROW
DECLARE
valorNumero INTEGER;
nuevaFecha DATE;
BEGIN 
    SELECT COUNT(*)+1 INTO valorNumero FROM Evaluacion;
    SELECT CURRENT_DATE INTO nuevaFecha FROM DUAL;
    :new.numeroE := valorNumero;
    :new.fecha := nuevaFecha;
END;

/*Solo registra evaluaciones sobre actividades de atletas que estén entrenando.*/
CREATE OR REPLACE TRIGGER T2_Evaluacion
BEFORE INSERT ON Evaluacion
FOR EACH ROW
DECLARE 
valor BOOLEAN;
BEGIN 
    SELECT(WHEN EntrenadoPor.nidE=:new.nidE AND EntrenadorPor.tidE=:tidE)INTO valor
        FROM Evaluacion JOIN Libre ON Evaluacion.numeroE = Libre.numero
        JOIN Atleta ON Libre.tidA = Atleta.tidA AND Libre.nidA = Atleta.nidA
        JOIN EntrenadoPor ON EntrenadoPor.tidA = Atleta.tidA AND EntrenadoPor.nidA = Atleta.nidA;
    IF valor IS FALSE
    THEN raise_application_error(-202003131,'Usted no se escuentra entrenando al atleta solicitado');
    END IF;
END;
/*Solo puede realizar una evaluación sobre una misma actividad.*/


/*Sólo puede indicar 3 evaluaciones similares. Dichas evaluaciones deben corresponder al atleta evaluado.*/
CREATE OR REPLACE TRIGGER T3_Evaluacion
BEFORE INSERT ON Evaluacion
FOR EACH ROW
DECLARE 
valor INTEGER;
BEGIN   
    SELECT COUNT(CONCAT(nidA,tidA)) INTO valor
        FROM Libre JOIN Evaluacion ON Libre.numero = Evaluacion.numero
        WHERE Evaluacion.numero := new.numero1;
    IF valor=3
     THEN
        raise_application_error(-2000021,'No se pueden realizar más comparaciones');
    END IF;
    SELECT COUNT(CONCAT(nidA,tidA)) INTO valor
        FROM Libre JOIN Evaluacion ON Libre.numero = Evaluacion.numero
        WHERE Evaluacion.numero := new.numero2;
    IF valor=3
     THEN
        raise_application_error(-2000021,'No se pueden realizar más comparaciones');
    END IF;
END;

/*Solo se puede actualizar el puntaje y los comentarios.*/
CREATE OR REPLACE TRIGGER T4_Evaluacion
BEFORE UPDATE ON Evaluacion
FOR EACH ROW
BEGIN
    IF :new.numeroE <>:old.numeroE OR :new.fecha <>:old.fecha OR :new.recomendaciones <>:old.recomendaciones OR :new.numero <>:old.numero OR :new.tidE <>:old.tidE OR :new.numero <>:old.numero OR :new.nidE <>:old.nidE
    THEN
        raise_application_error(-2000021,'No se pueden actualizar');
    END IF;
END;

/*Las evaluaciones no se pueden eliminar.*/
CREATE OR REPLACE TRIGGER T5_Evaluacion
BEFORE DELETE ON Evaluacion
FOR EACH ROW
BEGIN
    raise_application_error(-2000021,'No se puede eliminar');
END;

------------------------------------------------------Registrar Actividad--------------------------------------------------------------
/* El orden se debe generar automáticamente.*/

CREATE OR REPLACE TRIGGER T1_Actividad
BEFORE INSERT ON Actividad
FOR EACH ROW
DECLARE
valor INTEGER;
BEGIN
    SELECT COUNT(*)+1 INTO valor FROM Actividad;
    :new.numero := valor;
END;

/*En caso que la actividad sea planeada, el dia y la duración deben corresponder a lo estipulado en la
sesión.*/

CREATE OR REPLACE TRIGGER T2_Actividad
BEFORE INSERT ON planeada
FOR EACH ROW
DECLARE
valor INTEGER;
valor2 INTEGER;
BEGIN 
    SELECT COUNT(*) INTO valor FROM Sesion
    WHERE EXISTS(SELECT (COUNT(*) INTO valor2 FROM Actividad y WHERE y.numero:=new.Numero AND x.numero:=new.IDsesion AND y.duracion=x.duracion AND x.FechaInicio:=y.Dia));
    IF valor2=0 THEN
        raise_application_error(-2000021,'El día y la fecha no corresponden a lo estipulado en la sesión');
        END IF;
END;

/*Las pulsaciones no deben superar los 200.*/
ALTER TABLE Actividad ADD CONSTRAINT CK_pulsaciones CHECK(tiempoTotal>=120 AND (pulsaciones<=200 OR PulsacionesProm IS NULL);

/*Las fotos nunca se deben repetir.*/
-- llave primaria--

/*Los números de los registros se generan automáticamente dentro de cada actividad.*/
CREATE OR REPLACE TRIGGER T3_Actividad
BEFORE INSERT ON Actividad
FOR EACH ROW
DECLARE
valor INTEGER;
BEGIN
  SELECT COUNT(*)+1 INTO valor FROM Registro;
  new.idRegistro:=valor;
END;

/*La fecha y hora de los registros deben ser posteriores a la actividad.*/


/* No deben existir más de dos registros del mismo sensor por actividad*/

-------------------------------------------------- Registra Sesion -----------------------------------------------------------
/*El día, el orden y la duracion se generan automaticamente.*/
CREATE OR REPLACE TRIGGER T1_Sesion
BEFORE INSERT ON Sesion
FOR EACH ROW
DECLARE
valorNuevo INTEGER;
valorNuevo2 DATE;
duracionNueva NUMBER;
BEGIN
    SELECT COUNT(*)+1 INTO valor FROM Sesion;
    :new.idSesion = valorNuevo;
    :new.orden = valorNuevo2;
    :new.duracion = duracionNueva;
END;

/*Solo se puede actualizar la descripcion.*/
CREATE OR REPLACE TRIGGER T2_Sesion 
BEFORE UPDATE ON Sesion
FOR EACH ROW
BEGIN
    IF :new.idSesion <>:old.idSesion OR :new.dia <>:old.dia OR :new.orden <>:old.orden OR :new.duracion <>:old.duracion OR :new.tidA <>:old.tidA OR :new.nidA <>:old.nidA 
    THEN
        raise_application_error(-2000021,'No se pueden actualizar');
    END IF;
END;

/* Las sesiones no se pueden eliminar.*/
CREATE OR REPLACE TRIGGER T3_Sesion
BEFORE DELETE ON Sesion
FOR EACH ROW
BEGIN
    raise_application_error(-2000021,'No se puede eliminar');
END;


