/* Consultas */
/* Los modelos de un tipo de tela dado */
SELECT EXTRACT (detalle,'/detalle/tipo_de_tela') FROM ProductModel;
/*Los modelos que vienen en el mayor número de colores*/
SELECT EXTRACT(detalle,'') FROM ProductModel;
/*Los modelos rosados para mujeres descritos como sensacionales */
SELECT  EXTRACT(detalle,'/detalle/colores_disponibles')AS color  WHERE (color == 'rosado')