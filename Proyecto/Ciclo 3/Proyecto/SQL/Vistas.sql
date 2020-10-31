----Vista creada para la consulta frecuente, saber en que estado esta mi membresia----

CREATE VIEW RevisarMembresia AS SELECT Usuarios.idUsuario, Usuarios.nombre, Membresias.idMembresia,Membresias.estado FROM Membresias JOIN UsuarioMembresia ON  UsuarioMembresia.idMembresia = Membresias.idMembresia JOIN Usuarios ON Usuarios.idUsuario = Usuarios.idUsuario;


----Vista creada para la consulta frecuente,conocer los registros que he realizado hoy----

CREATE OR REPLACE VIEW ConsultaRegistro AS SELECT Usuarios.idUsuario, Usuarios.nombre, ZonasComunes.idZonaComun, Registros.idRegistro, Registros.fecha FROM Usuarios JOIN Registros ON Usuarios.idUsuario = Registros.idUsuario JOIN ZonasComunes ON Registros.idZonaComun = ZonasComunes.idZonaComun 
WHERE Registros.fecha = SYSDATE;