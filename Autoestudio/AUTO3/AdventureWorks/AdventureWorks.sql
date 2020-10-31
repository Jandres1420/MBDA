CREATE Product (
		ProductID int(11),
		Name varchar(50),
		ProductNumber varchar(25),
		Color varchar(15),
		StandardCost decimal(10,2),
		ListPrice decimal(10,2),
		Sze varchar(5),
		Weight ddecimal(8,2),
		ProductCategoryID int(11),
		ProductModelID int(11),
		SellStartDate date,
		SellEndDate date,
		DiscontinuedDate date,
		ThumbnailPhotoFileName varchar (50))
		
CREATE ProductDescription (
		ProductDescriptionID int(11),
		Description varchar(250))
		
CREATE ProductModelProductDescription(
		ProductModelID int(11),
		ProductDescriptionID int(11),
		Culture char(6))

CREATE ProductModel (
		ProductModelID int(11),
		Name varchar(50),
		CatalogDescription varchar(255))

CREATE ProductCategory(
		ProductCategoryID int(11),
		ParentProductCategoryID int(11),
		Name varchar(50))
		
CREATE SalesOrderDetail(
		SalesOrderID int(11),
		SalesOrderDetailID int(11),
		OrderQty int(11),
		ProductID int(11),
		UnitPrice decimal(10,2),
		UnitPriceDiscount(10,2))

CREATE SalesOrderHeader(
		SalesOrderID int(11),
		RevisionNumber int(11),
		OrderDate date,
		DueDate date,
		ShipDate date,
		Status int(11),
		OnlineOrderFlag char(1),
		SalessOrderNumber varchar(15),
		PurchaseOrderNumber varchar(15),
		AccountNumber varchar(25),
		CustomerID int(11),
		ShipToAddressID int(11),
		BillToAddressID INT(11),
		ShipMethod varchar(50),
		CreditCardApprovalCode varchar(15),
		SubTotal decimal (10,2),
		TexAmt decimal(10,2),
		Freight decimal(10,2),
		Commnt varchar(255))

CREATE Customer (
		CustomerID int(11),
		NameStyle varchar(50),
		Title varchar(8),
		FirstName varchar(50),
		MiddleName varchar(50),
		LastName varchar(50),
		Suffix varchar(10),
		CompanyName varchar(128),
		SalesPerson varchar(256),
		EmailAddress varchar(50),
		Phone varchar(25),
		PasswordHash varchar(128),
		PasswordSalt varchar(10))

CREATE CustomerAddress (
		CustomerID int(11),
		AddressID int(11),
		AddressType varchar(50))

CREATE Address(
		AddressID int(11),
		AddressLine1 varchar(60),
		AddressLine2 varchar(60),
		City varchar(60),
		StateProvince varchar(60),
		CountryRegion varchar(50),
		PostalCode varchar(15))
		

		

		
		
		
		
		
		
		
		
		

		
	
