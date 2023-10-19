Use BlueJacket
Go

--1.
SELECT st.StaffID, StaffName, SUM(SalesQuantity) AS TotalJacketSold
FROM Staff s
JOIN SalesTransaction st ON s.StaffID = st.StaffID
JOIN Customer c ON st.CustomerID = c.CustomerID
WHERE CustomerGender = 'Male'
AND DATENAME(MONTH, SalesDate) = 'February'
GROUP BY st.StaffID, StaffName

--2.
SELECT s.StaffID, StaffName, VendorName, SUM(PurchaseQuantity) AS TotalTransaction
FROM PurchaseTransaction pt
JOIN Vendor v ON v.VendorID = pt.VendorID
JOIN Staff s ON pt.StaffID = s.StaffID
WHERE StaffGender = 'Female'
AND DATENAME(WEEKDAY, PurchaseDate) = 'Monday'
GROUP BY s.StaffID, StaffName, VendorName

--3.	
SELECT PurchaseDate, v.VendorID, VendorName, VendorEmail, SUM(PurchaseQuantity) AS TotalJacketPurchased,
COUNT(v.VendorID) AS TotalTransaction
FROM PurchaseTransaction pt
JOIN Vendor v ON v.VendorID = pt.VendorID
JOIN Staff s ON pt.StaffID = s.StaffID
WHERE DATENAME(WEEKDAY, PurchaseDate) = 'Tuesday'
AND DATEDIFF(MONTH, CAST( GETDATE() AS Date ), PurchaseDate) <= 3
GROUP BY PurchaseDate, v.VendorID, VendorName, VendorEmail

--4.
SELECT s.StaffID, StaffName, SUM(SalesQuantity) AS TotalJacketSold
FROM Staff s
JOIN SalesTransaction st ON s.StaffID = st.StaffID
WHERE DATEDIFF(MONTH, CAST( GETDATE() AS Date ), SalesDate) <= 6
GROUP BY s.StaffID, StaffName
HAVING COUNT(s.StaffID) >= 3

--5.
SELECT LEFT(StaffName, CHARINDEX(' ', StaffName) - 1) AS StaffName, StaffSalary, VendorName,
YEAR(PurchaseDate) AS [Year]
FROM Staff s
JOIN PurchaseTransaction pt ON s.StaffID = pt.StaffID
JOIN Vendor v ON pt.VendorID = v.VendorID,(
	SELECT AVG(StaffSalary) AS average
	FROM Staff) AS sq1
WHERE YEAR(PurchaseDate) = 2021
AND StaffSalary > sq1.average

--6.
SELECT StaffName, STUFF(StaffPhone, 1, 1, '+62') AS StaffPhone, CustomerName,
CONVERT(VARCHAR(255), SalesDate, 107) AS SalesDate
FROM Staff s
JOIN SalesTransaction st ON s.StaffID = st.StaffID
JOIN Customer c ON st.CustomerID = c.CustomerID,(
	SELECT MIN(StaffSalary) AS minimum
	FROM Staff) AS sq1
WHERE DATENAME(MONTH, SalesDate) = 'May'
AND StaffSalary = sq1.minimum

--7.
SELECT CustomerName, LEFT(CustomerGender, 1) AS CustomerGender, CustomerAddress,
CONCAT('Rp. ', SUM(SalesPrice * SalesQuantity)) AS TotalSalesPrice
FROM Customer c
JOIN SalesTransaction st ON c.CustomerID = st.CustomerID
JOIN JacketDetail jd ON st.JacketID = jd.JacketID,(
	SELECT MAX(SalesQuantity) AS maksimal
	FROM SalesTransaction) AS sq1
WHERE DATENAME(MONTH, SalesDate) NOT IN ('March')
AND SalesQuantity = sq1.maksimal
GROUP BY CustomerName, CustomerGender, CustomerAddress, sq1.maksimal

--8.
SELECT PurchaseID, PurchaseDate, s.StaffID, LEFT(StaffName, CHARINDEX( ' ',StaffName) - 1) AS StaffName, StaffEmail
FROM PurchaseTransaction pt
JOIN Staff s ON pt.StaffID = s.StaffID,(
	SELECT MIN(PurchaseQuantity) AS minimum
	FROM PurchaseTransaction) AS sq1
WHERE DATENAME(WEEKDAY, PurchaseDate) = 'Monday'
GROUP BY PurchaseID, PurchaseDate, s.StaffID, StaffName, sq1.minimum, StaffEmail
HAVING COUNT(PurchaseQuantity) = sq1.minimum

