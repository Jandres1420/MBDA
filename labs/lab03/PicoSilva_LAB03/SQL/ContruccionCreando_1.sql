--CICLO 1: Tablas



create table FechaRetiro(
    tid varchar(3),
    nid varchar(15)
    );
create table Participante(
    tid varchar(3),
    nid varchar(15),
    email varchar(100),
    pais varchar(30),
    fRegistro date, 
    fRetiro date
	);
create table Atleta(
    tidA varchar(3),
    nidA varchar(15),
    email varchar(100),
    pais varchar(30),
    fRegistro date,
    fRetiro date,
    rh varchar(1),
    tSangre varchar(2)
	); 
create table EntrenadoPor(
    tidA varchar(3),
	nidA varchar(15),
	tidE varchar(3),
    nidE varchar(15)
	);
create table Entrenador(
    tidE varchar(3),
    nidE varchar(15),
    email varchar(100),
    pais varchar(30),
    fRegistro date,
    fRetiro date,
    seguro varchar(40)
	);
	
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------	
	
	
create table Evaluacion(
    numeroE number,
    fecha date,
    puntaje  number(5,0),
    comentarios varchar(500),
    recomendaciones varchar(100),
    numero number,
    tidE varchar(3),
    nidE varchar(15)
	);	
create table SimitarA(
    numeroE1 number,
    numeroE2 number,
    porcentaje number
	);



---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------



create table Actividad (
	numero number,
	fechaInicio date,
	horaInicio number,
	timepoTOtal number,
	pulsacionesProm float,
	fotos varchar(150)
);
create table Fotos(
	numero number
);
create table Libre(
	numero number,
	fechaInicio date,
	horaInicio number,
	timepoTOtal number,
	pulsacionesProm float,
	fotos varchar(150)
);
create table planeada(
	numero number,
	fechaInicio date,
	horaInicio number,
	timepoTOtal number,
	pulsacionesProm float,
	fotos varchar(150)
);
create table Registro(
	numero number,
	fecha date,
	hora number,
	sensor varchar(1),
	valor number
);

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

create table Sesion(
	dia number,
	orden number,
	duracion number,
	description varchar(100),
	tidA varchar(3),
	nidA varchar(15)
);
