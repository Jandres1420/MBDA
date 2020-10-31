/*Consulta de la informacion que tiene la tabla mbda.MIEMBROS*/

SELECT * FROM MBDA.MIEMBROS;

/*Incluyendonos como atletas*/

INSERT INTO mbda.MIEMBROS VALUES (1515151,1,1193156116,'juan.pico-m@mail.escuelaing.edu.co','Male','Colombia','2020-05-4',null,1,1,null,null);
INSERT INTO mbda.MIEMBROS VALUES (1515152,2,1192193544,'ana.silva-b@mail.escuelaing.edu.co','Female','Colombia','2020-05-4',null,1,1,null,null);

/*Traten de modificarse */

UPDATE mbda.MIEMBROS SET RH = 1 
WHERE RH = 2;

/* Permiso */
GRANT INSERT, SELECT
ON MBDA.MIEMBROS
TO BD2159518;

/* Instrucciones para importar datos */
CREATE SEQUENCE SecuenciaPS START WITH 1 INCREMENT BY 1 ORDER;

INSERT INTO Participante(tid, nid ,email,pais,fRegistro,fRetiro) SELECT ( CASE WHEN TID  = 1 THEN 'ti',NID,EMAIL,PAIS,FREGISTRO,FRETIRO) FROM MBDA.MIEMBROS;

/*INSERT INTO Atleta(tid, nid ,email,pais,fRegistro,fRetiro,rh,Tsangre) SELECT TID,NID, EMAIL, PAIS,FREGISTRO,FRETIRO,RH,TSANGRE*/