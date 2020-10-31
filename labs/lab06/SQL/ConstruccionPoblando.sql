
--CICLO 1: PoblarOK (1)


insert into Participante(tid, nid ,email,pais,fRegistro,fRetiro) values ('cc','119279324454698','anagabriela2700@gmail.com','COLOMBIA',TO_DATE('2020-01-01','YYYY/MM/DD'), null);
insert into Participante(tid, nid ,email,pais,fRegistro,fRetiro) values ('cc','112364562454687','julian.rodriguez@hotmail.com','COLOMBIA',TO_DATE('2020-01-01','YYYY/MM/DD'), null);
insert into Participante(tid, nid ,email,pais,fRegistro,fRetiro) values ('cc','119412487123651','diegomurcia20221@yahoo.com','COLOMBIA',TO_DATE('2020-01-01','YYYY/MM/DD'), null);
insert into Participante(tid, nid ,email,pais,fRegistro,fRetiro) values ('cc','102212487123601','david.agudelo@yahoo.com','COLOMBIA',TO_DATE('2020-01-01','YYYY/MM/DD'), null);
insert into Participante(tid, nid ,email,pais,fRegistro,fRetiro) values ('cc','101012448163552','lucero.silva@yahoo.com','COLOMBIA',TO_DATE('2020-01-01','YYYY/MM/DD'), null);
insert into Participante(tid, nid ,email,pais,fRegistro,fRetiro) values ('cc','115912487123693','gabrielsilvamunoz@hotmail.com','COLOMBIA',TO_DATE('2020-01-01','YYYY/MM/DD'), null);

insert into Atleta(tidA, nidA ,email,pais,fRegistro,fRetiro,rh,Tsangre) values ('cc','119279324454698','anagabriela2700@gmail.com','COLOMBIA',TO_DATE('2020-01-01','YYYY/MM/DD'), null,'+','A');
insert into Atleta(tidA, nidA ,email,pais,fRegistro,fRetiro,rh,Tsangre) values ('cc','112364562454687','julian.rodriguez@hotmail.com','COLOMBIA',TO_DATE('2020-01-01','YYYY/MM/DD'), null,'-','AB');
insert into Atleta(tidA, nidA ,email,pais,fRegistro,fRetiro,rh,Tsangre) values ('cc','119412487123651','diegomurcia20221@yahoo.com','COLOMBIA',TO_DATE('2020-01-01','YYYY/MM/DD'), null,'+','O');

insert into Entrenador(tidE, nidE ,email,pais,fRegistro,fRetiro,seguro) values ('cc','102212487123601','david.agudelo@yahoo.com','COLOMBIA',TO_DATE('2020-01-01','YYYY/MM/DD'), null,'Compensar');
insert into Entrenador(tidE, nidE ,email,pais,fRegistro,fRetiro,seguro) values ('cc','101012448163552','lucero.silva@yahoo.com','COLOMBIA',TO_DATE('2020-01-01','YYYY/MM/DD'), null, 'Sanitas');
insert into Entrenador(tidE, nidE ,email,pais,fRegistro,fRetiro,seguro) values ('cc','115912487123693','gabrielsilvamunoz@hotmail.com','COLOMBIA',TO_DATE('2020-01-01','YYYY/MM/DD'), null,'Coomeva');

insert into EntrenadoPor (tidA, nidA, tidE, nidE) values ('cc','119279324454698','cc','102212487123601');
insert into EntrenadoPor (tidA, nidA, tidE, nidE) values ('cc','112364562454687','cc','101012448163552');
insert into EntrenadoPor (tidA, nidA, tidE, nidE) values ('cc','119412487123651','cc','115912487123693');

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

insert into Actividad(numero,fechaInicio,horaInicio,tiempoTotal,pulsacionesProm,fotos) values(1,TO_DATE('2020-01-15','YYYY/MM/DD'),900,150,2.5,'foto.jpg');
insert into Actividad(numero,fechaInicio,horaInicio,tiempoTotal,pulsacionesProm,fotos) values(2,TO_DATE('2020-01-15','YYYY/MM/DD'),1000,120,2.5,'foto.jpg');
insert into Actividad(numero,fechaInicio,horaInicio,tiempoTotal,pulsacionesProm,fotos) values(3,TO_DATE('2020-01-15','YYYY/MM/DD'),1500,180,2.5,'foto.jpg');
insert into Actividad(numero,fechaInicio,horaInicio,tiempoTotal,pulsacionesProm,fotos) values(4,TO_DATE('2020-01-15','YYYY/MM/DD'),1400,120,2.5,'foto.jpg');
insert into Actividad(numero,fechaInicio,horaInicio,tiempoTotal,pulsacionesProm,fotos) values(5,TO_DATE('2020-01-15','YYYY/MM/DD'),1600,120,2.5,'foto.jpg');
insert into Actividad(numero,fechaInicio,horaInicio,tiempoTotal,pulsacionesProm,fotos) values(6,TO_DATE('2020-01-15','YYYY/MM/DD'),1900,120,2.5,'foto.jpg');

insert into Fotos(idFotos,foto,numero) values ('1A','foto.jpg',5);
insert into Fotos(idFotos,foto,numero) values ('2A','foto.jpg',2);
insert into Fotos(idFotos,foto,numero) values ('3A','foto.jpg',1);

insert into Libre(numero,fechaInicio,horaInicio,tiempoTotal,pulsacionesProm,fotos) values(1,TO_DATE('2020-01-15','YYYY/MM/DD'),900,150,2.5,'foto.jpg');
insert into Libre(numero,fechaInicio,horaInicio,tiempoTotal,pulsacionesProm,fotos) values(2,TO_DATE('2020-01-15','YYYY/MM/DD'),1000,120,2.5,'foto.jpg');
insert into Libre(numero,fechaInicio,horaInicio,tiempoTotal,pulsacionesProm,fotos) values(3,TO_DATE('2020-01-15','YYYY/MM/DD'),1500,180,2.5,'foto.jpg');

insert into Planeada(numero,fechaInicio,horaInicio,tiempoTotal,pulsacionesProm,fotos) values(4,TO_DATE('2020-01-15','YYYY/MM/DD'),1400,120,2.5,'foto.jpg');
insert into planeada(numero,fechaInicio,horaInicio,tiempoTotal,pulsacionesProm,fotos) values(5,TO_DATE('2020-01-15','YYYY/MM/DD'),1600,120,2.5,'foto.jpg');
insert into Planeada(numero,fechaInicio,horaInicio,tiempoTotal,pulsacionesProm,fotos) values(6,TO_DATE('2020-01-15','YYYY/MM/DD'),1900,120,2.5,'foto.jpg');

insert into Registro(numero,fecha,hora,sensor,valor) values (1,TO_DATE('2020-01-15','YYYY/MM/DD'),900,'C',500);
insert into Registro(numero,fecha,hora,sensor,valor) values (5,TO_DATE('2020-01-15','YYYY/MM/DD'),1600,'V',200);
insert into Registro(numero,fecha,hora,sensor,valor) values (4,TO_DATE('2020-01-15','YYYY/MM/DD'),1400,'P',605);


---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
insert into Evaluacion(numeroE,fecha ,puntaje,comentarios,recomendaciones,numero,tidE,nidE) values (12,TO_DATE('2020-01-15','YYYY/MM/DD'),5,'Muy buena actividad',1,5,'dcc','102212487123601');
insert into Evaluacion(numeroE,fecha ,puntaje,comentarios,recomendaciones,numero,tidE,nidE) values (13,TO_DATE('2020-01-15','YYYY/MM/DD'),1,'Falta de organización',2,4,'dcc','101012448163552');
insert into Evaluacion(numeroE,fecha ,puntaje,comentarios,recomendaciones,numero,tidE,nidE) values (14,TO_DATE('2020-01-15','YYYY/MM/DD'),3,'Actividad normal',3,1,'dcc','115912487123693');

insert into similarA (numeroE1, numeroE2, porcentaje) values (12,13,100);
insert into similarA (numeroE1, numeroE2, porcentaje) values (13,14,60);
insert into similarA (numeroE1, numeroE2, porcentaje) values (12,14,50);

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
insert into Sesion(dia,orden,duracion,description,tidA,nidA) values(1,2,2,'Muy larga','cc','119279324454698');
insert into Sesion(dia,orden,duracion,description,tidA,nidA) values(2,6,2,'Buena duracion','cc','112364562454687');
insert into Sesion(dia,orden,duracion,description,tidA,nidA) values(3,8,2, 'Muy Corta','cc','119412487123651');

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--CICLO 1: PoblarNoOK (2)

insert into Participante(tid, nid ,email,pais,fRegistro,fRetiro) values (3,'119279324454698','anagabriela2700@gmail.com','COLOMBIA',TO_DATE('2020-01-15','YYYY/MM/DD'), null);
insert into Actividad(numero,fechaInicio,horaInicio,tiempoTotal,pulsacionesProm,fotos) values(1,TO_DATE('2020-01-15','YYYY/MM/DD'),900,2,2.5,'foto.jpg');
insert into Evaluacion(numeroE,fecha ,puntaje,comentarios,recomendaciones,numero,tidE,nidE) values ('catorce','2020-01-15',3,'Actividad normal',3,'dcc','115912487123651');
insert into Sesion(dia,orden,duracion,description,tidA,nidA) values('tres','ocho','dos','más pues','dcc','115912487123651');
insert into Fotos (numero) values (cinco);



--CICLO 1: PoblarNoOK (3)

insert into Participante (tid, nid ,email,pais,fRegistro,fRetiro) values ('cc','102212412345671','johan.pico@yahoo.com','COLOMBIA',TO_DATE('2020-01-01','YYYY/MM/DD'),null);
insert into Participante (tid, nid ,email,pais,fRegistro,fRetiro) values  ('cc','112345324454622','juanitaperez@gmail.com','COLOMBIA',TO_DATE('2020-01-01','YYYY/MM/DD'), null);
insert into Actividad (numero,fechaInicio,horaInicio,tiempoTotal,pulsacionesProm,fotos) values (7, TO_DATE('2020-01-15','YYYY/MM/DD'),1460,120,2.5,'foto.jpg');

insert into Atleta (tid, nid ,email,pais,fRegistro,fRetiro,rh,Tsangre) values ('cc','112345324454622','juanitaperez@gmail.com','COLOMBIA',TO_DATE('2020-01-01','YYYY/MM/DD'), null, '*','HS');
insert into Registro(numero,fecha,hora,sensor,valor) values (6,TO_DATE('2020-01-15','YYYY/MM/DD'),900,'J',500);
insert into similarA (numero1, numero2, porcentaje) values (14,13,101);
insert into similarA (numero1, numero2, porcentaje) values (14,12,150);
insert into Planeada(numero,fechaInicio,horaInicio,tiempoTotal,pulsacionesProm,fotos) values(7,TO_DATE('2020-01-15','YYYY/MM/DD'),1460,120,2.5,'foto.jpg');

 /*
 * Las inserciones aquí son permitidas ya que cumplen con las condiciones que se les ha puesto en el varchar.
 * Por ejemplo, el tipo de rh y tipo de sangre, fueron permitidos ya que el rh es solo un caracter y el tipo de sangre puede ser uno o dos caracteres y así lo cumple.
 * Tambien, en la tabla de similarA, el porcentaje es un numero entero aun sin rango por eso permite cualquiera.
 * Finalmente, en registro, el sensor puede ser cualquier cadena de un caracter, por eso lo permite.
 */


--CICLO 1: XPoblar(Eliminar los datos)

drop table FechaRetiro;
drop table Participante;
drop table Atleta;
drop table Entrenador;
drop table EntrenadoPor;
drop table Evaluacion;
drop table SimilarA;
drop table Actividad;
drop table Fotos;
drop table Libre;
drop table Planeada;
drop table Registro;
drop table Sesion;

