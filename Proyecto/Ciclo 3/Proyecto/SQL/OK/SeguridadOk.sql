/*Pruebas para seguridad*/

SELECT PC_TESORERO.CO_Pagos('Efectivo','Activa') FROM DUAL;
SELECT PC_CLIENTE.CO_Membresia(TO_DATE('18/05/2019','DD/MM/YYYY'), TO_DATE('20/01/2020','DD/MM/YYYY'), 'Activa') FROM DUAL;  