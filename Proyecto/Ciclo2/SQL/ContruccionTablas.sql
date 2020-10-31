------------------------------------------------------------
--Creacion de tablas

create table ZonasComunes(
    idZonaComun varchar(3) NOT NULL,
    horaInicio number NOT NULL,
    horaFinal number NOT NULL,
    capacidad number,
    tipo varchar(50)
);



create table Usuario(
    idUsuario varchar(7) NOT NULL ,
    direccion varchar(50),
    telefono varchar(10),
    idMembresia  INTEGER NOT NULL,
    email  varchar(50)
);

create table Registro(
    idRegistro varchar(7) NOT NULL,
    fecha date NOT NULL,
    idZonaComun varchar(3) NOT NULL ,
    duracion number,
    idUsuario varchar(7) NOT NULL 
);

create table Elite(
    idMembresia INTEGER NOT NULL,
    cantPersonas number NOT NULL,
    precio number
);

create table Prestige(
    idMembresia INTEGER NOT NULL,
    cantPersonas number NOT NULL,
    precio number
);

create table Membresia(
    idMembresia INTEGER NOT NULL,
    fechaInicio date NOT NULL,
    fechaTermina date NOT NULL,
    estado  varchar(8)
);

create table Premium(
    idMembresia  INTEGER NOT NULL,
    cantPersonas number NOT NULL ,
    precio number
);

create table Pagos(
    metodoPago varchar(10) NOT NULL ,
    referencia varchar(3) NOT NULL,
    estado varchar(8),
    tipoPago varchar(10) NOT NULL,
    idUsuario varchar(7)
);