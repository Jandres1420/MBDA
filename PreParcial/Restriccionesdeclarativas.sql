--restriccion declarativas--

ALTER TABLE Servicio
ADD CONSTRAINT PK_Servicio PRIMARY KEY (codigo);
ALTER TABLE Huerta 
ADD CONSTRAINT PK_Huerta PRIMARY KEY (codigoServicio);
ALTER TABLE Empleo 
ADD CONSTRAINT PK_Empleo PRIMARY KEY (codigoServicio);
ALTER TABLE Capacitacion
ADD CONSTRAINT PK_Capacitacion PRIMARY KEY (codigoServicio);
ALTER TABLE ValoracionMedica
ADD CONSTRAINT PK_ValoracionMedica PRIMARY KEY (codigoServicio);
ALTER TABLE TratamientoMicroNutriente
ADD CONSTRAINT PK_TratamientoMN PRIMARY KEY (idTM);
ALTER TABLE Auditorio 
ADD CONSTRAINT PK_Auditorio PRIMARY KEY (codigo);
ALTER TABLE Facilidades
ADD CONSTRAINT PK_Facilidades PRIMARY KEY (codigoAuditorio);
ALTER TABLE Municipio
ADD CONSTRAINT PK_Municipio PRIMARY KEY (codigo);
ALTER TABLE Familia
ADD CONSTRAINT PK_Familia PRIMARY KEY (idFamilia);
ALTER TABLE Programa
ADD CONSTRAINT PK_Programa PRIMARY KEY(codigo);
ALTER TABLE Beneficiario
ADD CONSTRAINT PK_Beneficiario PRIMARY KEY (tid,nid);
ALTER TABLE LiderSocial
ADD CONSTRAINT PK_LiderSocial PRIMARY KEY (tid,nid);
ALTER TABLE Asiste
ADD CONSTRAINT PK_Asiste PRIMARY KEY(idAsiste);

ALTER TABLE Huerta
ADD CONSTRAINT UK_Huerta UNIQUE(idFamilia);
ALTER TABLE Empleo
ADD CONSTRAINT UK_Empleo UNIQUE(tid,nid);
ALTER TABLE Programa
ADD CONSTRAINT UK_Programa UNIQUE(nombre);

ALTER TABLE Servicio
ADD CONSTRAINT FK_Servicio FOREIGN KEY (codigoPrograma) REFERENCES Programa(codigo);
ALTER TABLE Huerta
ADD CONSTRAINT FK1_Huerta FOREIGN KEY (codigoServicio) REFERENCES Servicio(codigo);
ALTER TABLE Huerta
ADD CONSTRAINT FK2_Huerta FOREIGN KEY (idFamilia) REFERENCES Familia(idFamilia);
ALTER TABLE Empleo
ADD CONSTRAINT FK1_Empleo FOREIGN KEY (codigoServicio) REFERENCES Servicio(codigo);
ALTER TABLE Empleo
ADD CONSTRAINT FK2_Empleo FOREIGN KEY (tid,nid) REFERENCES Beneficiario(tid,nid);
ALTER TABLE Capacitacion
ADD CONSTRAINT FK1_Capacitacion FOREIGN KEY (codigoServicio) REFERENCES Servicio(codigo);
ALTER TABLE Capacitacion
ADD CONSTRAINT FK2_Capacitacion FOREIGN KEY (codigoAuditoria) REFERENCES Auditorio(codigo);
ALTER TABLE ValoracionMedica 
ADD CONSTRAINT FK1_ValoracionMedica FOREIGN KEY (codigoServicio) REFERENCES Servicio(codigo);
ALTER TABLE ValoracionMedica
ADD CONSTRAINT FK2_ValoracionMedica FOREIGN KEY (tidBeneficiario,nidBeneficiario) REFERENCES Beneficiario(tid,nid);
ALTER TABLE TratamientoMicroNutriente
ADD CONSTRAINT FK1_Tratamiento FOREIGN KEY(codigoServicio) REFERENCES ValoracionMedica(codigoServicio);
ALTER TABLE Auditorio 
ADD CONSTRAINT FK1_Auditorio FOREIGN KEY(codigoMunicipio) REFERENCES Municipio(codigo);
ALTER TABLE Facilidades
ADD CONSTRAINT FK1_Facilidades FOREIGN KEY(codigoAuditorio) REFERENCES Auditorio(codigo);
ALTER TABLE Familia
ADD CONSTRAINT FK1_Famila FOREIGN KEY(codigoMunicipio)  REFERENCES Municipio(codigo);
ALTER TABLE Familia
ADD CONSTRAINT FK2_Familia FOREIGN KEY(codigoPrograma) REFERENCES Programa(codigo);
ALTER TABLE Beneficiario
ADD CONSTRAINT FK1_Beneficiario FOREIGN KEY(idFamilia) REFERENCES Familia(idFamilia);
ALTER TABLE Asiste
ADD CONSTRAINT FK1_Asiste FOREIGN KEY(tid,nid) REFERENCES Beneficiario(tid,nid);
ALTER TABLE Asiste
ADD CONSTRAINT FK2_Asiste FOREIGN KEY(codigo) REFERENCES Capacitacion(codigoServicio);
ALTER TABLE LiderSocial
ADD CONSTRAINT FK1_LiderSocial FOREIGN KEY (tid,nid) REFERENCES Beneficiario(tid,nid);