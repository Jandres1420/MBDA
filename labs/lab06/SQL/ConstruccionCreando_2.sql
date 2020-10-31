drop table Evaluacion;
drop table Actividad;
drop table Participante;
drop table Atleta;
drop table Entrenador;
drop table SimilarA;
drop table EntrenadoPor;
drop table Fotos;
drop table Libre;
drop table Planeada;
drop table Registro;
drop table Sesion;


ALTER TABLE Participante
ADD CONSTRAINT PK_Participante PRIMARY KEY (tid,nid);
ALTER TABLE Atleta
ADD CONSTRAINT PK_Atleta PRIMARY KEY (tidA,nidA);
ALTER TABLE Entrenador
ADD CONSTRAINT PK_Entrenador PRIMARY KEY (tidE,nidE);
ALTER TABLE Evaluacion
ADD CONSTRAINT PK_Evaluacion PRIMARY KEY (numeroE);
ALTER TABLE Actividad
ADD CONSTRAINT PK_Actividad PRIMARY KEY (numero);
ALTER TABLE Fotos
ADD CONSTRAINT PK_Fotos PRIMARY KEY (idFotos);
ALTER TABLE Sesion
ADD CONSTRAINT PK_Sesion PRIMARY KEY (idSesion);
ALTER TABLE Registro
ADD CONSTRAINT PK_Registro PRIMARY KEY (idRegistro);


ALTER TABLE Evaluacion
ADD CONSTRAINT UK1_Evaluacion1 UNIQUE (comentarios);
ALTER TABLE Evaluacion
ADD CONSTRAINT UK2_Evaluacion2 UNIQUE (numero);


ALTER TABLE Atleta
ADD CONSTRAINT FK_Atleta FOREIGN KEY (tidA,nidA) REFERENCES Participante(tid,nid);
ALTER TABLE Entrenador
ADD CONSTRAINT FK_Entrenador FOREIGN KEY (tidE,nidE) REFERENCES Participante(tid,nid);
ALTER TABLE EntrenadoPor
ADD CONSTRAINT FK1_EntrenadoPor FOREIGN KEY (tidA,nidA) REFERENCES Atleta(tidA,nidA);
ALTER TABLE EntrenadoPor
ADD CONSTRAINT FK2_EntrenadoPor FOREIGN KEY (tidE,nidE) REFERENCES Entrenador(tidE,nidE);
ALTER TABLE Evaluacion
ADD CONSTRAINT FK1_EVALUACION FOREIGN KEY (numero) REFERENCES Actividad(numero);
ALTER TABLE Evaluacion
ADD CONSTRAINT FK2_Evaluacion FOREIGN KEY (tidE,nidE) REFERENCES Entrenador(tidE,nidE);
ALTER TABLE SimilarA
ADD CONSTRAINT FK_SimilarA1 FOREIGN KEY (numeroE1) REFERENCES Evaluacion(numeroE);
ALTER TABLE SimilarA
ADD CONSTRAINT FK_SimilarA2 FOREIGN KEY (numeroE2)REFERENCES Evaluacion(numeroE);
ALTER TABLE Libre
ADD CONSTRAINT FK_Libre FOREIGN KEY (numero) REFERENCES Actividad(numero);
ALTER TABLE Planeada 
ADD CONSTRAINT FK_Planeada FOREIGN KEY (numero)REFERENCES Actividad(numero);
ALTER TABLE Registro
ADD CONSTRAINT FK_Registro FOREIGN KEY (numero)REFERENCES Actividad(numero);
ALTER TABLE Sesion
ADD CONSTRAINT FK_Sesion FOREIGN KEY (tidA, nidA) REFERENCES Atleta(tidA,nidA);
ALTER TABLE Fotos
ADD CONSTRAINT FK_Fotos FOREIGN KEY (numero)REFERENCES Actividad(numero);
ALTER TABLE Registro
ADD CONSTRAINT FK_Registro2 FOREIGN KEY (idSesion)REFERENCES Sesion(idSesion);


