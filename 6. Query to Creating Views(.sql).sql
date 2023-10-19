Use BlueJacket

GO
CREATE VIEW JacketPurchase AS
SELECT PurchaseID, MONTH(PurchaseDate) AS PurchaseMonth, COUNT(BrandID) AS TotalJacketBrand,
SUM(PurchasePrice * PurchaseQuantity) AS TotalPurchasePrice
FROM PurchaseTransaction pt
JOIN JacketDetail jd ON pt.JacketID = jd.JacketID
WHERE DATENAME(MONTH, PurchaseDate) = 'June'
GROUP BY PurchaseID, PurchaseDate
HAVING SUM(PurchasePrice * PurchaseQuantity) > 5000000

GO
SELECT * FROM JacketPurchase


GO
CREATE VIEW JacketSales AS
SELECT SalesID, CONVERT(VARCHAR(255), SalesDate, 107) AS SalesDate, COUNT(TypeID) AS TotalJacketType,
CONCAT('Rp. ', SUM(SalesPrice * SalesQuantity)) AS TotalSalesPrice
FROM SalesTransaction st
JOIN JacketDetail jd ON st.JacketID = jd.JacketID
WHERE DATENAME(MONTH, SalesDate) = 'July'
AND DATENAME(WEEKDAY, SalesDate) NOT IN ('Friday')
GROUP BY SalesID, SalesDate

GO
SELECT * FROM JacketSales