Use BlueJacket

INSERT INTO JacketBrand (BrandID,BrandName) Values
('JB001','Guccy'),
('JB002','Balencyaga'),
('JB003','Uniqla'),
('JB004','Niku'),
('JB005','Adidus'),
('JB006','H&N'),
('JB007','Versauce'),
('JB008','Hermas'),
('JB009','Prady'),
('JB010','Suprene')
SELECT * FROM JacketBrand

INSERT INTO JacketType (TypeID,TypeName) Values
('JT001','Bomber'),
('JT002','Trucker'),
('JT003','Denim'),
('JT004','Hoodie'),
('JT005','Parka'),
('JT006','Pea Coat'),
('JT007','Trench Coat'),
('JT008','Raincoat'),
('JT009','Crombie Coat'),
('JT010','Varsity')
Select * from JacketType

Insert INTO Vendor (VendorID,VendorName,VendorEmail,VendorPhone,VendorAddress) Values
('MV001', 'Kevin Hendrawan', 'kevinhendr4@gmail.com', '0813997487453', 'Makaliwe Street'),
('MV002', 'John Mayer', 'j0hnisgood@gmail.com', '0813887745893', 'Sudirman Street'),
('MV003', 'Jessica Gunawan', 'jess0y@gmail.com', '0813783480001', 'Jelambar Street'),
('MV004', 'Roy Vandi', 'roypr4m4dhika@gmail.com', '0813666999222', 'Tomang Street'),
('MV005', 'Felicia Lim', 'felicia2004@gmail.com', '0813994487954', 'Makaliwe Street'),
('MV006', 'Felix Bernardus', 'b3rnardfelix@gmail.com', '0813575890435', 'Nurdin Street'),
('MV007', 'Cicilia Agnes', 'cicilcut333@gmail.com', '0813578323752', 'Thalib Street'),
('MV008', 'Yanti Kurniawan', 'yantiyanti555@gmail.com', '0813789346782', 'Tomang Street'),
('MV009', 'Benny Setianto', 'benny4christ@gmail.com', '0813777745893', 'Jelambar Street'),
('MV010', 'Ari Kusnanto', 'arikusnannn@gmail.com', '0813890032456', 'Thamrin Street')
SELECT * FROM Vendor

INSERT INTO Customer (CustomerID,CustomerName,CustomerGender,CustomerAddress,CustomerPhone) Values
('MC001', 'Michael John', 'Male', 'Purnama Street', '0819109240211'),
('MC002', 'Jane Dia', 'Female', 'Gajah Mada Street', '0892657482973'),
('MC003', 'Veta Lie', 'Female', 'Anggrek Street', '0808364758764'),
('MC004', 'Kevin Gourge', 'Male', 'Kebun Ijo Street', '0826473892011'),
('MC005', 'Priscilia', 'Female', 'Ayani Street', '0829988336666'),
('MC006', 'Fernanda Betra', 'Male', 'Sumatra Street', '0812319478297'),
('MC007', 'Kiana Curt', 'Male', 'Tengah Street', '0819264488832'),
('MC008', 'Yayan Graces', 'Male', 'Lowong Street', '0839462883749'),
('MC009', 'Jason Alberto', 'Male', 'Seram Street', '0854566728910'),
('MC010', 'Diana Rossa', 'Female', 'Jeruk Street', '0893745799230')
Select * from Customer

INSERT INTO STAFF (StaffID, StaffName, StaffGender, StaffEmail, StaffPhone, StaffSalary) VALUES
('MS001', 'Jonathan Setiawan', 'Male', 'jonathansetiwn@gmail.com' , '0813378976457', 7500000),
('MS002', 'Eriko Javer', 'Male', 'erikjaver293@gmail.com' , '0819192749201', 8000000),
('MS003', 'Pricillia Clara', 'Female', 'pricilclara012@gmail.com' , '0812032957392', 12500000),
('MS004', 'Michael David', 'Male', 'michael@gmail.com' , '0815204837429', 10500000),
('MS005', 'Kenneth Orlando', 'Male', 'kennethlando22@gmail.com' , '0829257284291', 9500000),
('MS006', 'Clarissa Feng', 'Female', 'Clarissaf01@gmail.com' , '0813298510122', 8500000),
('MS007', 'Jasmine Sisca', 'Female', 'jasminesis732@gmail.com' , '0812095037255', 7500000),
('MS008', 'Nicholas Semarta', 'Male', 'nicholassem92@gmail.com' , '0812264959235', 9500000),
('MS009', 'Gabriella Jeanet', 'Female', 'gabyjeanet55@gmail.com' , '0815702743244', 8000000),
('MS010', 'Rose Hilliary', 'Female', 'rosehill29@gmail.com' , '0812849234235', 10000000)
SELECT * FROM Staff

Insert Into JacketDetail (JacketID, BrandID, TypeID, PurchasePrice, SalesPrice, Stock) Values
('MJ001', 'JB001', 'JT001', 10000000, 12000000, 50),
('MJ002', 'JB001', 'JT004', 15000000, 15500000, 60),
('MJ003', 'JB002', 'JT002', 5000000, 5500000, 100),
('MJ004', 'JB002', 'JT010', 100000, 200000, 80),
('MJ005', 'JB003', 'JT003', 3500000, 4000000, 10),
('MJ006', 'JB004', 'JT002', 500000, 700000, 220),
('MJ007', 'JB004', 'JT009', 1000000, 1200000, 30),
('MJ008', 'JB005', 'JT004', 2000000, 2100000, 70),
('MJ009', 'JB005', 'JT007', 2900000, 3100000, 40),
('MJ010', 'JB006', 'JT005', 1900000, 2000000, 130),
('MJ011', 'JB007', 'JT001', 1000000, 1500000, 50),
('MJ012', 'JB008', 'JT006', 9900000, 10000000, 120),
('MJ013', 'JB009', 'JT008', 800000, 1100000, 100),
('MJ014', 'JB010', 'JT002', 800000, 1000000, 330),
('MJ015', 'JB010', 'JT003', 300000, 320000, 150)
Select * from JacketDetail

INSERT INTO PurchaseTransaction(PurchaseID, StaffID, VendorID, JacketID, PurchaseDate,PurchaseQuantity) VALUES
('PH001', 'MS001', 'MV001', 'MJ001', '2021-02-05', 2),
('PH002', 'MS002', 'MV002', 'MJ002', '2021-04-05', 4),
('PH003', 'MS003', 'MV003', 'MJ003', '2021-04-15', 7),
('PH004', 'MS004', 'MV004', 'MJ004', '2021-03-05', 5),
('PH005', 'MS005', 'MV005', 'MJ005', '2021-06-02', 3),
('PH006', 'MS006', 'MV006', 'MJ006', '2021-07-17', 8),
('PH007', 'MS007', 'MV007', 'MJ007', '2021-07-08', 1),
('PH008', 'MS008', 'MV008', 'MJ008', '2021-07-09', 2),
('PH009', 'MS009', 'MV009', 'MJ009', '2021-02-18', 3),
('PH010', 'MS010', 'MV008', 'MJ007', '2021-07-24', 6),
('PH011', 'MS001', 'MV001', 'MJ001', '2021-07-27', 1),
('PH012', 'MS002', 'MV002', 'MJ002', '2021-07-01', 2),
('PH013', 'MS003', 'MV003', 'MJ003', '2021-07-09', 2),
('PH014', 'MS004', 'MV004', 'MJ004', '2021-06-09', 3),
('PH015', 'MS005', 'MV005', 'MJ005', '2021-06-05', 6),
('PH016', 'MS006', 'MV006', 'MJ006', '2021-03-17', 8),
('PH017', 'MS007', 'MV007', 'MJ007', '2021-03-13', 9),
('PH018', 'MS008', 'MV008', 'MJ008', '2022-03-12', 4),
('PH019', 'MS009', 'MV009', 'MJ009', '2022-02-23', 3),
('PH020', 'MS010', 'MV008', 'MJ007', '2022-02-22', 1),
('PH021', 'MS001', 'MV001', 'MJ001', '2022-02-21', 1),
('PH022', 'MS002', 'MV002', 'MJ002', '2022-02-14', 4),
('PH023', 'MS001', 'MV003', 'MJ003', '2022-02-19', 5),
('PH024', 'MS004', 'MV004', 'MJ004', '2022-02-18', 5),
('PH025', 'MS005', 'MV005', 'MJ005', '2022-02-17', 3),
('PH026', 'MS007', 'MV003', 'MJ002', '2022-02-07', 5),
('PH027', 'MS005', 'MV003', 'MJ002', '2022-01-04', 3),
('PH028', 'MS005', 'MV003', 'MJ006', '2022-01-04', 5)
Select * from PurchaseTransaction

INSERT INTO SalesTransaction (SalesID,StaffID,CustomerID,JacketID,SalesDate,SalesQuantity) Values
('SH001', 'MS005', 'MC001', 'MJ001', '2021-02-05', 2),
('SH002', 'MS004', 'MC002', 'MJ002', '2021-04-05', 4),
('SH003', 'MS003', 'MC003', 'MJ003', '2021-04-15', 7),
('SH004', 'MS002', 'MC004', 'MJ004', '2021-03-05', 5),
('SH005', 'MS001', 'MC005', 'MJ005', '2021-06-02', 3),
('SH006', 'MS010', 'MC006', 'MJ006', '2021-07-17', 8),
('SH007', 'MS009', 'MC007', 'MJ007', '2021-07-08', 1),
('SH008', 'MS008', 'MC008', 'MJ008', '2021-07-09', 2),
('SH009', 'MS007', 'MC009', 'MJ009', '2021-02-18', 3),
('SH010', 'MS006', 'MC008', 'MJ007', '2021-07-24', 6),
('SH011', 'MS005', 'MC001', 'MJ001', '2021-07-27', 1),
('SH012', 'MS004', 'MC002', 'MJ002', '2021-07-01', 2),
('SH013', 'MS002', 'MC003', 'MJ003', '2021-07-09', 2),
('SH014', 'MS003', 'MC004', 'MJ004', '2021-06-09', 3),
('SH015', 'MS001', 'MC005', 'MJ005', '2021-06-05', 6),
('SH016', 'MS010', 'MC006', 'MJ006', '2021-03-17', 8),
('SH017', 'MS009', 'MC007', 'MJ007', '2021-03-13', 9),
('SH018', 'MS008', 'MC008', 'MJ008', '2022-03-12', 4),
('SH019', 'MS007', 'MC009', 'MJ009', '2022-03-23', 3),
('SH020', 'MS006', 'MC008', 'MJ007', '2022-02-22', 1),
('SH021', 'MS001', 'MC001', 'MJ001', '2022-02-21', 1),
('SH022', 'MS003', 'MC002', 'MJ002', '2022-02-14', 4),
('SH023', 'MS002', 'MC003', 'MJ003', '2022-02-19', 5),
('SH024', 'MS004', 'MC004', 'MJ004', '2022-02-18', 5),
('SH025', 'MS005', 'MC005', 'MJ005', '2022-02-17', 3),
('SH026', 'MS003', 'MC001', 'MJ003', '2022-02-15', 4),
('SH027', 'MS001', 'MC004', 'MJ005', '2021-02-08', 3),
('SH028', 'MS002', 'MC001', 'MJ003', '2021-05-05', 2),
('SH029', 'MS009', 'MC002', 'MJ002', '2021-05-13', 4),
('SH030', 'MS001', 'MC002', 'MJ001', '2022-05-17', 1),
('SH031', 'MS007', 'MC004', 'MJ003', '2021-05-19', 7),
('SH032', 'MS007', 'MC003', 'MJ004', '2021-09-13', 9),
('SH033', 'MS004', 'MC007', 'MJ005', '2021-07-15', 9),
('SH034', 'MS006', 'MC009', 'MJ005', '2022-02-07', 2)
SELECT * FROM SalesTransaction