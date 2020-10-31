ALTER TABLE ProductDescription ADD CONSTRAINT PK_ProductDescription
	PRIMARY KEY (ProductDescriptionID);
	
ALTER TABLE ProductModel ADD CONSTRAINT PK_ProductModel
	PRIMARY KEY (ProductModelID);
	
ALTER TABLE ProductCategory ADD CONSTRAINT PK ProductCategory
	PRIMARY KEY (ProductCategoryID);
	
ALTER TABLE Product ADD CONSTRAINT PK_Product
	PRIMARY KEY (ProductID);
	
ALTER TABLE SalesOrderDetail ADD CONSTRAINT PK_SalesOrderDetail
	PRIMARY KEY (SalesOrderDetailID);
	
ALTER TABLE Customer ADD CONSTRAINT PK_Customer
	PRIMARY KEY (CustomerID);
	
ALTER TABLE SalesOrderHeader ADD CONSTRAINT PK_SalesOrderHeader
	PRIMARY KEY (SalesOrderID);

ALTER TABLE Address ADD CONSTRAINT PK_Address
	PRIMARY KEY (AddressID);
	
ALTER TABLE CustomerAddress ADD CONSTRAINT PK_CustomerAddress
	PRIMARY KEY (AddressType);
	
ALTER TABLE ProductCategory ADD CONSTRAINT FK ProductCategory
	FOREIGN KEY (ParentProductCategoryID)

ALTER TABLE Product ADD CONSTRAINT FK_Product
	FOREIGN KEY (ProductModelID);
	
ALTER TABLE  Product ADD CONSTRAINT FK_Product
	FOREIGN KEY (ProductCategoryID);
		
ALTER TABLE SalesOrderDetail ADD CONSTRAINT FK_SalesOrderDetail
	FOREIGN KEY (SalesOrderID);
	
ALTER TABLE SalesOrderDetail ADD CONSTRAINT FK_SalesOrderDetail
	FOREIGN KEY (ProductID);
		
ALTER TABLE SalesOrderHeader ADD CONSTRAINT FK_SalesOrderHeader
	FOREIGN KEY (CustomerID);

ALTER TABLE SalesOrderHeader ADD CONSTRAINT FK_SalesOrderHeader
	FOREIGN KEY (BillToAddressID);

ALTER TABLE SalesOrderHeader ADD CONSTRAINT FK_SalesOrderHeader
	FOREIGN KEY (ShipToAddressID);
	
ALTER TABLE CustomerAddress ADD CONSTRAINT FK_CustomerAddress
	FOREIGN KEY (AddressID);