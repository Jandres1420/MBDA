
--Tablas
create table BIENES (
	codigo VARCHAR(7) NOT NULL,
	nombre VARCHAR(30) NOT NULL,
	medida VARCHAR(2) NOT NULL,
	unitario NUMBER(5) NOT NULL,
	retirado CHAR(1) NOT NULL,
    numeroO NUMBER(5)
);

create table FAMILIAS (
	numero NUMBER(5) NOT NULL,
    representante NUMBER(5) NOT NULL
);

--PoblarOK
create table PERSONAS (
	codigo NUMBER(7) NOT NULL,
	nombre VARCHAR(50) NOT NULL,
	numeroF NUMBER(5) NOT NULL,
    numero NUMBER(5) NOT NULL
);

create table ASIGNACIONES (
	numero NUMBER(9) NOT NULL,
	fecha DATE NOT NULL,
	aceptado CHAR(1),
	numeroF NUMBER(5) NOT NULL
);

create table BIENESASIGNADOS(
	numero NUMBER(9) NOT NULL,
    bien VARCHAR(7) NOT NULL
);

create table BIENESFAMILIAS(
    numero NUMBER(5) NOT NULL,
    codigo VARCHAR(7) NOT NULL
);

create table OPINIONES(
	numero NUMBER(5) NOT NULL,
    fecha date NOT NULL,
    opinion VARCHAR(1) NOT NULL,
    justificacion VARCHAR(20) NOT NULL,
    codigoP NUMBER(7) NOT NULL
);

create table OPINIONESGRUPALES(
    numero NUMBER(5) NOT NULL,
    detalle VARCHAR(10) NOT NULL,
    estrellas NUMBER(1) NOT NULL
);