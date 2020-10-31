
-- Tipos 

ALTER TABLE ZonasComunes ADD CONSTRAINT CK1_THora CHECK (horaInicio BETWEEN 700 AND 1900);
ALTER TABLE ZonasComunes ADD CONSTRAINT CK2_THora CHECK (horaFinal BETWEEN 700 AND 1900);
ALTER TABLE Registros ADD CONSTRAINT CK_TDuracion CHECK (duracion between 1 AND 3);
ALTER TABLE UsuariosEmail ADD CONSTRAINT CK_TEmail CHECK (REGEXP_LIKE (email, '^(\S+)\@(\S+)\.(\S+)$'));
ALTER TABLE Membresias ADD CONSTRAINT CK_Membresia CHECk(estado IN ('Activa','No activa'));
ALTER TABLE MPremium ADD CONSTRAINT CK1_TPrecio CHECK (precio LIKE 100000);
ALTER TABLE MPremium ADD CONSTRAINT CK1_CantPersonas CHECK (cantPersonas LIKE 1);
ALTER TABLE MPrestige ADD CONSTRAINT CK2_TPrecio CHECK (precio LIKE 270000);
ALTER TABLE MPrestige ADD CONSTRAINT CK2_CantPersonas CHECK (cantPersonas BETWEEN 1 AND 3);
ALTER TABLE MElite ADD CONSTRAINT CK3_TPrecio CHECK (precio LIKE 350000);
ALTER TABLE MElite ADD CONSTRAINT CK3_CantPersonas CHECK (cantPersonas BETWEEN 1 AND  5);
ALTER TABLE Pagos ADD CONSTRAINT CK1_Pagos CHECK(metodoPago IN ('Efectivo','TCredito','TDebito'));
ALTER TABLE Pagos ADD CONSTRAINT CK2_Pagos CHECK (estado IN ('Realizado','No realizado'));
ALTER TABLE Usuarios ADD CONSTRAINT CK1_Usuarios CHECK (tDocumento IN ('CC','TI'));
ALTER TABLE ZonasComunes ADD CONSTRAINT CK1_Tipo CHECK (tipo IN ('Zonas humedas','Canchas','Gimnasio'));
