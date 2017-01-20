--ALTER TABLE ErrorLog Add CustomerID nvarchar(128) NULL
--SELECT * FROM ErrorLog
--UPDATE ErrorLog SET CustomerID = Details

--SELECT Category, Details, Exception, Date, CustomerID
--FROM ErrorLog
--GROUP BY Category, CustomerID, Details, Exception, Date

--SELECT CustomerID, SUBSTRING(CustomerID, 3, 13) AS Err FROM ErrorLog WHERE Category = 'Application Reboot';

--UPDATE ErrorLog
--SET CustomerID = SUBSTRING(CustomerID, 3, 13) FROM ErrorLog WHERE Category = 'Application Reboot';

--UPDATE ErrorLog
--SET CustomerID = SUBSTRING(CustomerID, 33, 15) FROM ErrorLog WHERE Category = 'Customer Review Feed';

--UPDATE ErrorLog
--SET CustomerID = LTRIM(RTRIM(CustomerID))

--SELECT Category, CustomerID FROM ErrorLog WHERE Category LIKE '%Campaign%'

--UPDATE ErrorLog
--SET CustomerID = NULL WHERE Category LIKE '%Campaign%' 

--ALTER TABLE ErrorLog Add ASIN nvarchar(max) NULL

--SELECT ErrorLog.ASIN, SUBSTRING(Details, 54, 20) AS Err FROM ErrorLog WHERE Category = 'Modifying Campaign Page';

--UPDATE ErrorLog
--SET ErrorLog.ASIN = SUBSTRING(Details, 54, 20) FROM ErrorLog WHERE Category = 'Modifying Campaign Page';

--SELECT Category, Details, Exception, Date, CustomerID, ErrorLog.ASIN
--FROM ErrorLog
--GROUP BY Category, CustomerID, Details, Exception, Date, ErrorLog.ASIN

--ALTER TABLE Customer ADD FullName nvarchar(max) NULL

--UPDATE Customer
--SET FullName = FirstName + ' ' + LastName
--SELECT * FROM Customer

--SELECT Customer.CustomerID, FullName, Category, Details
--INTO CustomerError
--FROM ErrorLog
--LEFT JOIN Customer
--ON Customer.CustomerID = ErrorLog.CustomerID
--WHERE Customer.CustomerID IS NOT NULL

SELECT * FROM CustomerError