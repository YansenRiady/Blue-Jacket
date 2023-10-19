USE BlueJacket

-- 1.
BEGIN TRAN
INSERT INTO PurchaseTransaction(PurchaseID, StaffID, VendorID, JacketID, PurchaseDate,PurchaseQuantity) VALUES
('PH028', 'MS005', 'MV003', 'MJ006', '2022-01-04', 5)
UPDATE JacketDetail
SET Stock = Stock + 5
WHERE JacketID = 'MJ006'
COMMIT

--2. 
BEGIN TRAN
INSERT INTO SalesTransaction (SalesID,StaffID,CustomerID,JacketID,SalesDate,SalesQuantity) Values
('SH034', 'MS006', 'MC009', 'MJ005', '2022-02-07', 2)
UPDATE JacketDetail
SET Stock = Stock - 2
WHERE JacketID = 'MJ005'

UPDATE JacketDetail
SET Stock = Stock + 5
WHERE JacketID = 'MJ006'
ROLLBACK
COMMIT