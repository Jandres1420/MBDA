
--Implementen la estructura de las tablas diseñadas en el punto 1 (sin restricciones externas)--
CREATE TABLE Servicio(
    codigo varchar(8) NOT NULL,
    fecha date,
    tid varchar(2) NOT NULL,
    nid varchar(10) NOT NULL,
    codigoPrograma varchar(7) NOT NULL
);

CREATE TABLE Huerta(
    codigoServicio varchar(8) NOT NULL,
    ubicacion varchar(50),
    areaTotal varchar(50),
    idFamilia varchar(7) NOT NULL
);

CREATE TABLE Empleo(
    codigoServicio varchar(8) NOT NULL,
    NITEmpleador number(15) NOT NULL,/* aca toca decir que es integer */
    cargo varchar(20),
    tid varchar(2) NOT NULL,
    nid varchar(10) NOT NULL
);

CREATE TABLE Capacitacion(
    codigoServicio varchar(8) NOT NULL,
    hora number,
    duracion number,
    cupos INTEGER,
    asistentes INTEGER,
    codigoAuditoria varchar(7)
);

CREATE TABLE ValoracionMedica(
    codigoServicio varchar(8) NOT NULL,
    hora number,    
    peso INTEGER,
    talla INTEGER,
    tratamientoMicroNutriente varchar(50),
    tratamientoDesparacitacion varchar(50),
    tidBeneficiario varchar(2) NOT NULL,
    nidBeneficiario varchar(15) NOT NULL
);

CREATE TABLE TratamientoMicroNutriente(
    idTM varchar(5),
    tratamientoMicroNutriente varchar(50),
    codigoServicio varchar(8) NOT NULL
);


CREATE TABLE Auditorio(
    codigo varchar(7) NOT NULL,
    direccion varchar(50),
    facilidades varchar(50),
    codigoMunicipio varchar(7)  
);

CREATE TABLE Facilidades(
    codigoAuditorio varchar(7) NOT NULL,
    nombre varchar(50)
);

CREATE TABLE Municipio(
    codigo varchar(7) NOT NULL,
    nombre varchar(50)
);

CREATE TABLE Familia(
    idFamilia varchar(7) NOT NULL,
    codigoMunicipio varchar(7) NOT NULL,
    fechaRetiro date,
    telefono varchar(10),
    codigoPrograma varchar(7) NOT NULL
);

CREATE TABLE Programa(    
    codigo  varchar(7) NOT NULL,
    nombre varchar(50) NOT NULL,
    objetivo varchar(200),
    costoEstimado number
);

CREATE TABLE Beneficiario(
    tid varchar(2) NOT NULL,
    nid varchar(10) NOT NULL,
    nombre varchar(50),
    fechaNacimiento date,
    responsable varchar(2),
    idFamilia varchar(7) NOT NULL
);

CREATE TABLE LiderSocial(
    tid varchar(2) NOT NULL,
    nid varchar(10) NOT NULL,
    nombre varchar(50),
    fechaNacimiento date,
    responsable varchar(2),
    nivelFormacion varchar(20)
);

CREATE TABLE Asiste(
    idAsiste varchar(2),
    tid varchar(2) NOT NULL,
    nid varchar(10) NOT NULL,
    codigo varchar(8) NOT NULL 
);


