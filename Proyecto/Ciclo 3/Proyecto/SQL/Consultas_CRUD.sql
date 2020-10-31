//consultas del crud de usuario

// consulta el tipo de zona com
SELECT idUsuario,ZonaComun.tipo, ZonaComun.horaInicio, ZonaComun.horaFinal FROM Usuario
JOIN Registro ON Usuario.idUsuario LIKE Registro.idUsuario
JOIN ZonaComun ON Usuario.idUsuario LIKE ZonaComun.idUsuario

//consultar el tipo de membresia

SELECT idUsuario,Membresia.estado, Membresia.cantDePersonas,Membresia.presio FROM Usuario
JOIN Membresia ON Usuario.idUsuario LIKE Membresia.idUsuario

//consultar el pago realizado

SELECT idUsuario , Pago.estado, Pago.metodoDePago FROM Usuario
JOIN Pago ON  Usuario.idUsuario LIKE  Pago.idUsuario
WHERE(Pago.estado == 


