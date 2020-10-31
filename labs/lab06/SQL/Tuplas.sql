------------------------------------Tuplas------------------------------------

ALTER TABLE Atleta ADD CONSTRAINT CK_TipoSangre CHECK (TSangre IN('A','B','O','AB'));
ALTER TABLE Evaluacion ADD CONSTRAINT CK_Puntaje CHECK (puntaje between 0 and 5);
ALTER TABLE Actividad ADD CONSTRAINT CK_TipoFoto CHECK (REGEXP_LIKE(fotos, '^(\S+)\.(\S+)$'));
ALTER TABLE Atleta ADD CONSTRAINT CK_rh CHECK (rh IN ('+','-'));
ALTER TABLE Actividad  ADD CONSTRAINT CK_Thora1 CHECK (horaInicio between 0 AND 2359);
ALTER TABLE Actividad  ADD CONSTRAINT CK_Thora2 CHECK (MOD(horaInicio,100) between 0 AND 59);
ALTER TABLE Registro  ADD CONSTRAINT CK_Thora3 CHECK (hora between 0 AND 2359);
ALTER TABLE Registro  ADD CONSTRAINT CK_Thora4 CHECK (MOD(hora,100) between 0 AND 59);
ALTER TABLE Registro ADD CONSTRAINT CK_Tsensor CHECK (sensor IN ('C','V','P'));
ALTER TABLE Actividad ADD CONSTRAINT CK_TDuracion CHECK (tiempoTotal between 0 AND 1440);
ALTER TABLE SimilarA ADD CONSTRAINT CK_TPorcentaje CHECK (porcentaje between 1 AND 100);
