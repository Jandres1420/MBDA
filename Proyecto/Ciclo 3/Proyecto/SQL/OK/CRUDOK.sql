/*PRUEBAS PARA COMPROBAR LOS PAQUETES*/
BEGIN
PC_ZonasComunes.Ad_ZonaComunes(700,1830,20,'Canchas');
end; 

BEGIN
PC_Usuario.Ad_Usuario('cra 70 N° 2 - 20','Ana Gabriela Silva','1192793547','CC');
end;

BEGIN 
PC_Usuario.Ad_UsuariosTelefonos('1','5312456898');
end;

BEGIN
PC_Usuario.Ad_UsuariosEmail('1','anagabriela1227@gmail.com');
end;

SELECT PC_Usuario.Co_UsuariosTelefonos('5312456898') FROM DUAL;
SELECT PC_Usuario.Co_UsuariosEmai('anagabriela1227@gmail.com') FROM DUAL;

BEGIN
PC_Usuario.Ad_Usuario('KR 65 57B 35 ','RODRIGO GUALTERO MARTINEZ','1024530883','CC');
PC_Usuario.Ad_UsuariosTelefonos('1','3103408490');
end;
