------Seguridad------
--Entrenador
CREATE ROLE Entrenador;
GRANT Entrenador TO bd2159581;--Andres
GRANT Entrenador TO bd2159445;--Gaby
GRANT EXECUTE ON PA_Entrenador TO Entrenador;
--Atleta
CREATE ROLE Atleta;
 GRANT Atleta TO bd2159581;
GRANT Atleta2 TO bd2159445;
 GRANT EXECUTE ON PA_Atleta TO Atleta;