insert into OPINIONES   VALUES(52540,TO_DATE('18/05/2019','DD/MM/YYYY'),'B','esta muy bien',1125684);
insert into OPINIONES   VALUES(52540,TO_DATE('18/05/2019','DD/MM/YYYY'),'M','falta mejorar',1425684);
insert into OPINIONES   VALUES(52540,TO_DATE('18/05/2019','DD/MM/YYYY'),'R','esta normal',1325684);


--consulta

SELECT BIENES.codigo,BIENES.nombre,OPINIONES.opinion FROM BIENES
JOIN OPINIONES ON OPINIONES.numero LIKE BIENES.numeroO
WHERE (OPINIONES.opinion == 'E');