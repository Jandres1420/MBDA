
-- Ciclo 1: Atributos

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

--Ciclo 1 : Pruebas

insert into Participante(tid, nid ,email,pais,fRegistro,fRetiro) values('dcc','633912965812345','juliosm@gmail.com','Colombia',TO_DATE('2020-01-01','YYYY/MM/DD'), null);
insert into Participante(tid, nid ,email,pais,fRegistro,fRetiro) values('dcc','139246589842153','danielmed@hotmail.com','Colombia',TO_DATE('2020-01-01','YYYY/MM/DD'), null);
insert into Atleta(tid, nid ,email,pais,fRegistro,fRetiro,rh,Tsangre) values ('dcc','633912965812345','juliosm@gmail.com','Colombia',TO_DATE('2020-01-01','YYYY/MM/DD'), null,'+','A');
insert into Entrenador(tid, nid ,email,pais,fRegistro,fRetiro,seguro) values ('dcc','139246589842153','danielmed@hotmail.com','Colombia',TO_DATE('2020-01-01','YYYY/MM/DD'), null,'Coomeva');
insert into Evaluacion(numeroE,fecha ,puntaje,comentarios,recomendaciones,numero,tidE,nidE) values (14,TO_DATE('2020-01-15','YYYY/MM/DD'),3,"Actividad normal",3,'dcc','139246589842153');
insert into Actividad(numero,fechaInicio,horaInicio,timepoTotal,pulsacionesProm,fotos) values(8,TO_DATE('2020-01-15','YYYY/MM/DD'),900,120,2.5,'foto.jpg');
insert into Registro(numero,fecha,hora,sensor,valor) values (8,TO_DATE('2020-01-15','YYYY/MM/DD'),1400,'V',605);
insert into similarA (numero1, numero2, porcentaje) values (13,12,85);