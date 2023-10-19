Create DATABASE BlueJacket
Use BlueJacket

Create table Staff(
StaffID char (5) PRIMARY KEY Check (StaffID like 'MS[0-9][0-9][0-9]'),
StaffName varchar (30) NOT NULL, 
StaffGender VARCHAR(6),
	Constraint StaffGender Check (StaffGender LIKE 'Male' or StaffGender LIKE 'Female'),
StaffEmail varchar (25) NOT NULL,
StaffPhone varchar (13),
Constraint StaffPhone Check (StaffPhone LIKE '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'  ),
StaffSalary INT 
Constraint StaffSalary Check (StaffSalary between 4000000 and 100000000   ),
)
Select * From Staff

Create table Customer(
CustomerID char (5) PRIMARY KEY Check (CustomerID like 'MC[0-9][0-9][0-9]'),
CustomerName varchar (30) NOT NULL, 
CustomerGender VARCHAR(6),
	Constraint CustomerGender Check (CustomerGender LIKE 'Male' or CustomerGender LIKE 'Female'),
CustomerAddress varchar (255)
Constraint CustomerAddress Check (CustomerAddress LIKE '% Street'),
CustomerPhone varchar (13),
Constraint CustomerPhone Check (CustomerPhone LIKE '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'  ),
)
Select * From Customer

Create Table Vendor(
VendorID char (5) PRIMARY KEY Check (VendorID like 'MV[0-9][0-9][0-9]'),
VendorName varchar (30) NOT NULL, 
VendorEmail varchar (25) NOT NULL,
VendorPhone varchar (13),
Constraint VendorPhone Check (VendorPhone LIKE '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'  ),
VendorAddress varchar (255)
)
Select * From Vendor

Create Table JacketBrand(
BrandID char (5) PRIMARY KEY Check (BrandID like 'JB[0-9][0-9][0-9]'),
BrandName varchar (30) NOT NULL, 
)
Select * From JacketBrand

Create Table JacketType(
TypeID char (5) PRIMARY KEY Check (TypeID like 'JT[0-9][0-9][0-9]'),
TypeName varchar (30) NOT NULL, 
)
Select * From JacketType

Create table JacketDetail (
JacketID Char (5) Primary Key Check (JacketID like 'MJ[0-9][0-9][0-9]'),
BrandID char (5) FOREIGN KEY REFERENCES JacketBrand (BrandID),
TypeID char (5)FOREIGN KEY REFERENCES JacketType (TypeID),
PurchasePrice INT,
Constraint PurchasePrice Check (PurchasePrice between 0 and 500000000),
SalesPrice INT,
Constraint SalesPrice Check (SalesPrice between 0 and 500000000),
Stock INT,
Constraint Stock Check (Stock between 0 and 1000),
)
SELECT * FROM JacketDetail

Create Table PurchaseTransaction (
PurchaseID Char (5) Primary Key Check (PurchaseID like 'PH[0-9][0-9][0-9]'),
StaffID char (5) FOREIGN KEY REFERENCES Staff (StaffID),
VendorID char (5) FOREIGN KEY REFERENCES Vendor (VendorID),
JacketID char (5) FOREIGN KEY REFERENCES JacketDetail (JacketID),
PurchaseDate Date Not Null,
Constraint PurchaseDate Check (DATENAME(WeekDay,PurchaseDate) NOT IN ('Sunday')), 
PurchaseQuantity int NOT NULL,
Constraint Quantity Check (PurchaseQuantity between 0 and 100),
)
Select * From PurchaseTransaction

Create Table SalesTransaction (
SalesID Char (5) Primary Key Check (SalesID like 'SH[0-9][0-9][0-9]'),
StaffID char (5) FOREIGN KEY REFERENCES Staff (StaffID),
CustomerID char (5) FOREIGN KEY REFERENCES Customer (CustomerID),
JacketID char (5) FOREIGN KEY REFERENCES JacketDetail (JacketID),
SalesDate Date Not Null,
Constraint SalesDate Check (DATENAME(WeekDay,SalesDate) NOT IN ('Sunday')), 
SalesQuantity int NOT NULL,
Constraint SalesQuantity Check (SalesQuantity between 0 and 100),
)
Select * from SalesTransaction