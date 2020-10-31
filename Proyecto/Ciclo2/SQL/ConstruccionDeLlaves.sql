------------------------------------------------------------
-- Drops
drop table ZonasComunes;
drop table Usuario;
drop table Registro;
drop table Elite;
drop table Prestige;
drop table Membresia;
drop table Premium;
drop table Pagos;
------------------------------------------------------------
--Llaves

ALTER TABLE ZonasComunes
ADD CONSTRAINT PK_idZonaComun PRIMARY KEY (idZonaComun);
ALTER TABLE Usuario
ADD CONSTRAINT PK_idUsuario PRIMARY KEY(idUsuario);
ALTER TABLE Registro
ADD CONSTRAINT PK_idRegistro PRIMARY KEY(idRegistro);
ALTER TABLE Membresia 
ADD CONSTRAINT PK_idMembresia PRIMARY KEY(idMembresia);
ALTER TABLE Premium
ADD CONSTRAINT PK_idPremium PRIMARY KEY(idMembresia);
ALTER TABLE Prestige
ADD CONSTRAINT PK_idPrestige PRIMARY KEY(idMembresia);
ALTER TABLE Elite
ADD CONSTRAINT PK_idElite PRIMARY KEY(idMembresia);
ALTER TABLE Pagos
ADD CONSTRAINT PK_Pagos PRIMARY KEY(referencia);


ALTER TABLE Usuario
ADD CONSTRAINT UK_idMembresia UNIQUE (idMembresia);
ALTER TABLE Registro
ADD CONSTRAINT UK_idUsuario UNIQUE (idUsuario);
ALTER TABLE Pagos
ADD CONSTRAINT UK_Pagos UNIQUE(idUsuario);



ALTER TABLE Usuario
ADD CONSTRAINT FK1_idMembresia FOREIGN KEY(idMembresia) REFERENCES Membresia(idMembresia);
ALTER TABLE Registro
ADD CONSTRAINT FK1_idUsuario FOREIGN KEY(idUsuario) REFERENCES Usuario(idUsuario);
ALTER TABLE Registro
ADD CONSTRAINT FK1_idZonaComun FOREIGN KEY(idZonaComun) REFERENCES ZonasComunes(idZonaComun);
ALTER TABLE Elite
ADD CONSTRAINT FK2_idMembresia FOREIGN KEY(idMembresia) REFERENCES Membresia(idMembresia);
ALTER TABLE Prestige
ADD CONSTRAINT FK3_idMembresia FOREIGN KEY(idMembresia) REFERENCES Membresia(idMembresia);
ALTER TABLE Premium
ADD CONSTRAINT FK4_idMembresia FOREIGN KEY(idMembresia) REFERENCES Membresia(idMembresia);
ALTER TABLE Pagos
ADD CONSTRAINT FK1_Pagos FOREIGN KEY(idUsuario) REFERENCES Usuario(idUsuario);