/*pruebas fallidas para el paquete*/



BEGIN
PC_ZonasComunes.Ad_ZonaComunes(700,'knsafks',5,'Canchas');
end; 

BEGIN
PC_Usuario.Ad_Usuario("sfa",'Ana Gabriela Silva','1192793547','CC');
end;

BEGIN
PC_Usuario.Ad_UsuariosEmail(TO_DATE('18/05/2019','DD/MM/YYYY'),'anagabriela1227gmailcom');
end;