/*A. Adicionando restricciones delcarativas*/
/*Atributos, Tuplas*/

/*B. Adicionando acciones de referencia*/
/*Acciones*/
    
/*C. Accionando disparadores*/
INSERT INTO SalesOrderHeader (SalesOrderID, RevisionNumber, DueDate, ShipDate, Status, OnlineOrderFlag, PurchaseOrderNumber, AccountNumber, CustomerID, ShipMethod, CreditCardApprovalCode, Commnt)
VALUES (71774, 1, 'Sun, 13 Jun 2004 00:00:00 GMT', 'Tue, 08 Jun 2004 00:00:00 GMT', 5, 0, 'PO348186287', '10-4020-000609', 609, 'CARGO TRANSPORT 5', NULL, 972.7850);

CREATE TRIGGER Ad_HEADER
    BEFORE INSERT ON SalesOrderHeader
    FOR EACH ROW
BEGIN
    SELECT 'Tue, 01 Jun 2004 00:00:00 GMT' INTO:new.OrderDate
    FROM SalesOrderHeader;
    SELECT 'SO'||SalesOrderID INTO:new.SalesOrderNumber
    FROM SalesOrderHeader;
    SELECT AddressID INTO:new.ShipToAddressID
    FROM Address;
    SELECT AddressID INTO:new.BillToAddressID
    FROM Address;
    SELECT 0.125 INTO:new.TaxAmt
    FROM SalesOrderHeader
    END;
END;

CREATE TRIGGER Mo_HEADER
    INSTEAD OF UPDATE ON SalesOrderHeader
BEGIN
    SET ShipDate= new.ShipDate
    WHERE ShipDate = old.shipDate
    SET Freight = new.Freight
    WHERE Freight = old.Freight
    END;
END;

CREATE TRIGGER El_HEADER
    INSTEAD OF DELETE ON SalesOrderHeader
BEGIN
    RAISE_APPLICATION_ERROR(-20777,'NO SE PERMITE ESTA ACCIÓN')
    END;
END;

CREATE TRIGGER Ad_DETAIL
    BEFORE INSERT ON SalesOrderDetail
    FOR EACH ROW
BEGIN
    SELECT new.SalesOrderDetailID
    FROM SalesOrderDetail
    SELECT ListPrice INTO new.UnitPrice
    FROM Product
    SELECT new.UnitPriceDiscount
    FROM SalesOrderDetail
    WHERE new.UnitPriceDiscount >=0 AND new.UnitPriceDiscount <= 10
    END;
END;

CREATE TRIEGGER Mo_DETAIL
END;

CREATE TRIEGGER El_DETAIL
    INSTEAD OF DELETE ON SalesOrderDetail
BEGIN
        RAISE_APPLICATION_ERROR(-20778,'Se modificó el código del producto')
        ON UPDATE CASCADE SET NULL
    END;
END;