------------------------------------DisparadoresOK------------------------------------

/*Solo se puede actualizar el puntaje y los comentarios.*/

Update Evaluacion
Set puntaje = 5 AND  comentarios = 'Perfecto';

/*Las evaluaciones no se pueden eliminar.*/
Delete Evaluacion;

/*En caso que la actividad sea planeada, el dia y la duración deben corresponder a lo estipulado en la
sesión.*/
insert into Sesion (idSesion,dia,order,duracion,desscription,tidA,nidA) values(25,TO_DATE('2020-03-14','YYYY/MM/DD'),5,100,"Atletismo",'cc','119375324454698');
insert into planeada(numero,fechaInicio,horaInicio,tiempoTotal,pulsaciones,fotos) values(7,TO_DATE('2020-03-14','YYYY/MM/DD'),24,100,140,'foto.jpg');

/*Las pulsaciones no deben superar los 200.*/
insert into planeada(numero,fechaInicio,horaInicio,tiempoTotal,pulsaciones,fotos) values(7,TO_DATE('2020-03-17','YYYY/MM/DD'),24,110,180,'foto.jpg');

/* Las sesiones no se pueden eliminar.*/
Delete Sesion;