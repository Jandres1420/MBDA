------------------------------------------------------------
--Creacion de tablas

create table ZonasComunes(
    idZonaComun VARCHAR(5)  NOT NULL,
    horaInicio number NOT NULL,
    horaFinal number NOT NULL,
    capacidad number,
    tipo varchar(50)
);

create table Usuarios(
    idUsuario varchar(7) NOT NULL ,
    direccion varchar(50) NOT NULL,
    nombre varchar(50) NOT NULL,
    nDocumento varchar(10) NOT NULL,
    tDocumento varchar(2) NOT NULL
);

create table Registros(
    idRegistro varchar(7) NOT NULL,
    fecha date NOT NULL,
    idZonaComun varchar(5) NOT NULL ,
    duracion number NOT NULL,
    idUsuario varchar(7) NOT NULL 
);

create table Membresias(
    idMembresia INTEGER NOT NULL,
    fechaInicio DATE NOT NULL,
    fechaTermina DATE NOT NULL,
    duracion INTEGER NOT NULL,
    estado  varchar(10)
);

create table MElite(
    idMembresia INTEGER NOT NULL,
    cantPersonas number NOT NULL,
    precio number NOT NULL
);

create table MPrestige(
    idMembresia INTEGER NOT NULL,
    cantPersonas number NOT NULL,
    precio number NOT NULL
);

create table MPremium(
    idMembresia  INTEGER NOT NULL,
    cantPersonas number NOT NULL,
    precio number NOT NULL
);

create table Pagos(
    metodoPago varchar(12) NOT NULL ,
    referencia varchar(3) NOT NULL,
    estado varchar(12)  NOT NULL,
    idMembresia INTEGER  NOT NULL
);

create table PersonasElite(
    idPersonasE number NOT NULL,
    idMembresiaE number NOT NULL,
    nombre varchar(50) NOT NULL   
);

create table PersonasPremium(
    idPersonasE number NOT NULL,
    idMembresiaPm number NOT NULL,
    nombre varchar(50) NOT NULL
);

create table PersonasPrestige(
    idPersonasE number NOT NULL,
    idMembresiaPr number NOT NULL,
    nombre varchar(50) NOT NULl
);

create table UsuariosTelefonos(
    idTelefono number NOT NULL,
    idUsuario varchar(7) NOT NULL,      
    telefonos varchar(10) NOT NULL
);

create table UsuariosEmail(
    idEmail number NOT NULL,
    idUsuario varchar(7) NOT NULL,
    email varchar(50) NOT NULL 
);

create table UsuarioMembresia(
    idUsuario varchar(7) NOT NULL,
    idMembresia INTEGER NOT NULL
);
