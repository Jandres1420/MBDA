--------MODELO RELACIONES INTEGRIDAD PROCEDIMENTAL---------
---Registrar Servicio---
---Adicionar---
---La adicion se debe realizar con datos minimos.(Indique los datos a automatizar)---
--Los datos a automatizar sera en codigo de servicio y su fecha--

CREATE OR REPLACE TRIGGER T1_Servicion
BEFORE INSERT ON Servicio
FOR EACH ROW
DECLARE
valorNumero INTEGER;
nuevaFecha DATE;
BEGIN 
    SELECT COUNT(*)+1 INTO valorNumero FROM Servicio;
    SELECT CURRENT_DATE INTO nuevaFecha FROM DUAL;
    :new.codigo := valorNumero;
    :new.fecha := nuevaFecha;
END;


---EL codigo de cada servicio esta definido por el prefijo SRx, donde x es un numero de 5 digitos---

ALTER TABLE Servicio ADD CONSTRAINT CK_SRx CHECK(codigo IS 5)

---

