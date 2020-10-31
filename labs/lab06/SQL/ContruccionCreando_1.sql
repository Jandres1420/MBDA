--CICLO 1: Tablas


-- esta no se sabe 

create table Participante(
    tid varchar(3)  NOT NULL,
    nid varchar(15)  NOT NULL,
    email varchar(100)  NOT NULL,
    pais varchar(30)  NOT NULL,
    fRegistro date  NOT NULL,  
    fRetiro date
	);
create table Atleta(
    tidA varchar(3)  NOT NULL,
    nidA varchar(15)  NOT NULL,
    email varchar(100)  NOT NULL,
    pais varchar(30)  NOT NULL,
    fRegistro date  NOT NULL,
    fRetiro date,
    rh varchar(1)  NOT NULL,
    tSangre varchar(2)  NOT NULL
	); 
create table EntrenadoPor(
    tidA varchar(3)  NOT NULL,
	nidA varchar(15)  NOT NULL,
	tidE varchar(3)  NOT NULL,
    nidE varchar(15)  NOT NULL
	);
create table Entrenador(
    tidE varchar(3)  NOT NULL,
    nidE varchar(15)  NOT NULL,
    email varchar(100)  NOT NULL,
    pais varchar(30)  NOT NULL,
    fRegistro date  NOT NULL,
    fRetiro date,
    seguro varchar(40)  NOT NULL
	);
	
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------	
	
	
create table Evaluacion(
    numeroE number  NOT NULL,
    fecha date  NOT NULL, 
    puntaje  number(5,0)  NOT NULL,
    comentarios varchar(500),
    recomendaciones varchar(100)  NOT NULL,
    numero number  NOT NULL,
    tidE varchar(3)  NOT NULL,
    nidE varchar(15)  NOT NULL
	);	
create table SimilarA(
    numeroE1 number  NOT NULL,
    numeroE2 number  NOT NULL,
    porcentaje number  NOT NULL
	);



---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------



create table Actividad (
	numero number  NOT NULL,
	fechaInicio date  NOT NULL,
	horaInicio number  NOT NULL,
	tiempoTotal number  NOT NULL,
	pulsaciones INTEGER  NOT NULL,
	fotos varchar(150)  NOT NULL
);
create table Fotos(
	idFotos varchar(2)  NOT NULL,
	foto varchar(150)  NOT NULL,
	numero number  NOT NULL	
);
create table Libre(
	numero number  NOT NULL ,
	fechaInicio date  NOT NULL ,
	horaInicio number  NOT NULL,
	tiempoTotal number  NOT NULL,
	pulsaciones INTEGER  NOT NULL
);
create table planeada(
	numero number  NOT NULL,
	fechaInicio date  NOT NULL,
	horaInicio number  NOT NULL,
	tiempoTotal number  NOT NULL ,
	pulsaciones INTEGER  NOT NULL 
);

create table Registro(
	idRegistro INTEGER NOT NULL,
	numero number  NOT NULL,
	fecha date  NOT NULL,
	hora number  NOT NULL,
	sensor varchar(1)  NOT NULL,
	valor number  NOT NULL,
	idSesion Integer NOT NULL,
);

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

create table Sesion(
	idSesion Integer NOT NULL,
	dia date  NOT NULL,
	orden number  NOT NULL,
	duracion number  NOT NULL,
	description varchar(100)  NOT NULL,
	tidA varchar(3)  NOT NULL,
	nidA varchar(15)  NOT NULL
);