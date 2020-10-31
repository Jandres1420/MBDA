
--Llaves

ALTER TABLE ZonasComunes
ADD CONSTRAINT PK_idZonaComun PRIMARY KEY (idZonaComun);
ALTER TABLE Usuarios
ADD CONSTRAINT PK_idUsuario PRIMARY KEY(idUsuario);
ALTER TABLE Registros
ADD CONSTRAINT PK_idRegistro PRIMARY KEY(idRegistro);
ALTER TABLE Membresias
ADD CONSTRAINT PK_idMembresia PRIMARY KEY(idMembresia);
ALTER TABLE MPremium
ADD CONSTRAINT PK_idPremium PRIMARY KEY(idMembresia);
ALTER TABLE MPrestige
ADD CONSTRAINT PK_idPrestige PRIMARY KEY(idMembresia);
ALTER TABLE MElite
ADD CONSTRAINT PK_idElite PRIMARY KEY(idMembresia);
ALTER TABLE Pagos
ADD CONSTRAINT PK_Pagos PRIMARY KEY(referencia);
ALTER TABLE PersonasElite 
ADD CONSTRAINT PK_PersonaELite PRIMARY KEY(idPersonasE);
ALTER TABLE PersonasPremium
ADD CONSTRAINT PK_PersonaPremium PRIMARY KEY(idPersonasE);
ALTER TABLE PersonasPrestige
ADD CONSTRAINT PK_PersonaPrestige PRIMARY KEY(idPersonasE);
ALTER TABLE UsuariosTelefonos
ADD CONSTRAINT PK_idUsuariosTelefonos PRIMARY KEY(idTelefono);
ALTER TABLE UsuariosEmail
ADD CONSTRAINT PK_UsuariosEmail PRIMARY KEY(idEmail);
ALTER TABLE UsuarioMembresia
ADD CONSTRAINT PK_UsuarioMembresia PRIMARY KEY(idUsuario,idMembresia);



ALTER TABLE Registros
ADD CONSTRAINT FK1_idUsuario FOREIGN KEY(idUsuario) REFERENCES Usuarios(idUsuario);
ALTER TABLE Registros
ADD CONSTRAINT FK1_idZonaComun FOREIGN KEY(idZonaComun) REFERENCES ZonasComunes(idZonaComun);
ALTER TABLE MElite
ADD CONSTRAINT FK2_idMembresia FOREIGN KEY(idMembresia) REFERENCES Membresias(idMembresia);
ALTER TABLE MPrestige
ADD CONSTRAINT FK3_idMembresia FOREIGN KEY(idMembresia) REFERENCES Membresias(idMembresia);
ALTER TABLE MPremium
ADD CONSTRAINT FK4_idMembresia FOREIGN KEY(idMembresia) REFERENCES Membresias(idMembresia);
ALTER TABLE Pagos
ADD CONSTRAINT FK1_Pagos FOREIGN KEY(idMembresia) REFERENCES Membresias(idMembresia);
ALTER TABLE UsuarioMembresia
ADD CONSTRAINT FK1_UsuarioMembresia FOREIGN KEY(idUsuario) REFERENCES Usuarios(idUsuario);
ALTER TABLE UsuarioMembresia
ADD CONSTRAINT FK2_UsuarioMembresia FOREIGN KEY(idMembresia) REFERENCES Membresias(idMembresia);
ALTER TABLE UsuariosEmail 
ADD CONSTRAINT FK1_Email FOREIGN KEY(idUsuario) REFERENCES Usuarios(idUsuario);
ALTER TABLE UsuariosTelefonos
ADD CONSTRAINT FK1_Telefonos FOREIGN KEY(idUsuario) REFERENCES Usuarios(idUsuario);
ALTER TABLE PersonasElite
ADD CONSTRAINT FK1_PersonaElite FOREIGN KEY(idMembresiaE) REFERENCES MElite(idMembresia);
ALTER TABLE PersonasPremium
ADD CONSTRAINT FK1_PersonaPremium FOREIGN KEY(idMembresiaPm) REFERENCES MPremium(idMembresia);
ALTER TABLE PersonasPrestige
ADD CONSTRAINT FK1_PersonaPrestige FOREIGN KEY(idMembresiaPr) REFERENCES MPrestige(idMembresia);