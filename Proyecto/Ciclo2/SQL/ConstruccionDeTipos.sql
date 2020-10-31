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
-- Tipos

ALTER TABLE ZonasComunes ADD CONSTRAINT CK1_THora CHECK (horaInicio BETWEEN 700 AND 1900);
ALTER TABLE ZonasComunes ADD CONSTRAINT CK2_THora CHECK (horaFinal BETWEEN 700 AND 1900);
ALTER TABLE Registro ADD CONSTRAINT CK_TDuracion CHECK (duracion between 0 AND 2);
ALTER TABLE Usuario ADD CONSTRAINT CK_TEmail CHECK (REGEXP_LIKE (email, '^(\S+)\@(\S+)\.(\S+)$'));
ALTER TABLE Premium ADD CONSTRAINT CK1_TPrecio CHECK (precio LIKE 100000);
ALTER TABLE Premium ADD CONSTRAINT CK1_CantPersonas CHECK (cantPersonas LIKE 1);
ALTER TABLE Prestige ADD CONSTRAINT CK2_TPrecio CHECK (precio LIKE 270000);
ALTER TABLE Prestige ADD CONSTRAINT CK2_CantPersonas CHECK (cantPersonas LIKE 3);
ALTER TABLE Elite ADD CONSTRAINT CK3_TPrecio CHECK (precio LIKE 350000);
ALTER TABLE Elite ADD CONSTRAINT CK3_CantPersonas CHECK (cantPersonas LIKE 5);
ALTER TABLE Pagos ADD CONSTRAINT CK1_Pagos CHECK(metodoPago IN ('Efectivo','TCredito','TDebito'));
ALTER TABLE Pagos ADD CONSTRAINT CK2_Pagos CHECK (estado IN ('Activa','No activa','Realizado','No realizado'));
ALTER TABLE Pagos ADD CONSTRAINT CK3_Pagos CHECK (tipoPago IN ('diario','Membresia'))
