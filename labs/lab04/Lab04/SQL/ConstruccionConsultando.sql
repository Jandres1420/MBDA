
-- Consultar las evaluaciones con menor puntaje de cada entrenador 
SELECT Entrenador.tidE, Entrenador.nidE, Evaluacion.numeroE, Evaluacion.puntaje, Evaluacion.comentarios from Entrenador
INNER 
    JOIN  Evaluacion ON (Evaluacion.tidE LIKE Entrenador.tidE AND Evaluacion.nidE LIKE Entrenador.nidE)
GROUP BY Evaluacion.puntaje;

--Consultar los registros de una actividad 

SELECT  Evaluacion.numero, Evaluacion.valor, Registro.hora , Registro.valor FROM Evaluacion
INNER 
    JOIN Actividad ON (Actividad.numero LIKE Evaluacion.numero)
INNER
    JOIN Registro ON (Registro.numero LIKE Actividad.numero)
GROUP BY Evaluacion.numero;