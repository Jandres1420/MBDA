---Usuarios---
    insert into Usuarios (direccion, nombre, nDocumento, tDocumento) values ('cra 40 N° 485 - 27', 'Abner Christopherson', '55555555555', 'CC');
    insert into Usuarios (direccion, nombre, nDocumento, tDocumento) values ('cra 74 N° 462 - 53', 'Dyan Samson', '8040654917', 'lol');
    insert into Usuarios (direccion, nombre, nDocumento, tDocumento) values ('cra 32 N° 103 - 80', 'Theo Cicetti', '6266448324', 'xs');
    insert into Usuarios (direccion, nombre, nDocumento, tDocumento) values ('cra 55 N° 171 - 57', 'Aguste Harrill', '6686622159', 'yugh');
    insert into Usuarios (direccion, nombre, nDocumento, tDocumento) values ('cra 82 N° 558 - 32', 'Paton Pinney', 6, 'cédula');

---UsuariosTelefonos---

insert into UsuariosTelefonos ( idUsuario, telefonos) values (1, '53152456898');
insert into UsuariosTelefonos ( idUsuario, telefonos) values (2, '72865279685');
insert into UsuariosTelefonos ( idUsuario, telefonos) values (3, '56893558266');
insert into UsuariosTelefonos ( idUsuario, telefonos) values (4, '19235657347');
insert into UsuariosTelefonos ( idUsuario, telefonos) values (5, '17044835568');

---UsuariosEmail---

insert into UsuariosEmail (idUsuario, email) values ('1', 'btower0phocacz');
insert into UsuariosEmail (idUsuario, email) values ('2', 'kaire1reuterscom');
insert into UsuariosEmail (idUsuario, email) values ('3', 'tbraisher2nihgov');
insert into UsuariosEmail (idUsuario, email) values ('4', 'nrickman3censusgov');
insert into UsuariosEmail (idUsuario, email) values ('5', 'kdestoop4aturecom');

---Zonas Comunes---
insert into ZonasComunes (horaInicio, horaFinal, capacidad, tipo) values (700, 1830, 35, 'volleyball');
insert into ZonasComunes (horaInicio, horaFinal, capacidad, tipo) values (800, 1630, 27, 'Futbol');
insert into ZonasComunes (horaInicio, horaFinal, capacidad, tipo) values (830, 1730, 23, 'Piscina');

---Registros---
insert into Registros (idZonaComun, duracion, idUsuario) values (3, 1, '2222222222');
insert into Registros (idZonaComun, duracion, idUsuario) values (1, 3, '1515151515');
insert into Registros (idZonaComun, duracion, idUsuario) values (1, 1, '4646464646');
insert into Registros (idZonaComun, duracion, idUsuario) values (2, 1, '1010101010');
insert into Registros (idZonaComun, duracion, idUsuario) values (1, 2, '2222222222');

---Membresias---

insert into Membresias (fechaInicio, fechaTermina,duracion,estado) values (TO_DATE('18/05/2019','DD/MM/YYYY'), TO_DATE('20/01/2020',247,'DD/MM/YYYY'), 'Si');
insert into Membresias (fechaInicio, fechaTermina,duracion,estado)  values (TO_DATE('18/05/2019','DD/MM/YYYY'),TO_DATE('01/02/2020',259,'DD/MM/YYYY'), 'No');
insert into Membresias (fechaInicio, fechaTermina,duracion,estado)  values (TO_DATE('18/05/2019','DD/MM/YYYY'), TO_DATE('05/01/2020',232,'DD/MM/YYYY'), 'xd');

---Pagos---
insert into Pagos (metodoPago,estado,idMembresia) values ('dinero','Realizado',1);
insert into Pagos (metodoPago,estado,idMembresia) values ('tarjeta','Realizado',2);
insert into Pagos (metodoPago,estado,idMembresia) values ('trajeta de credito','Realizado',3);



