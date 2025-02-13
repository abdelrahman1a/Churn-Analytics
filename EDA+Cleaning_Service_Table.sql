

-- EDA + Cleaning for Services Table

-- 1 undersanding values in columns
select distinct PhoneService from Services -- 0 or 1`

select distinct MultipleLines from Services -- Yes , No , No Phone Service

select distinct InternetService from Services -- Fiber optic , DSL , No

select distinct OnlineSecurity from Services -- Yes , No , No Internet Service

select distinct OnlineBackup from Services -- Yes , No , No Internet Service

select distinct DeviceProtection from Services -- Yes , No , No Internet Service

select distinct TechSupport from Services -- Yes , No , No Internet Service

select distinct StreamingTV from Services -- Yes , No , No Internet Service

select distinct StreamingMovies from Services -- Yes , No , No Internet Service

-- Checking for Missing Values 
SELECT 
    COUNT(*) - COUNT(CustomerID) AS Missing_CustomerID,
    COUNT(*) - COUNT(PhoneService) AS Missing_PhoneService,
    COUNT(*) - COUNT(MultipleLines) AS Missing_MultipleLines,
    COUNT(*) - COUNT(InternetService) AS Missing_InternetService,
    COUNT(*) - COUNT(OnlineSecurity) AS Missing_OnlineSecurity,
    COUNT(*) - COUNT(OnlineBackup) AS Missing_OnlineBackup,
    COUNT(*) - COUNT(DeviceProtection) AS Missing_DeviceProtection,
    COUNT(*) - COUNT(TechSupport) AS Missing_TechSupport,
    COUNT(*) - COUNT(StreamingTV) AS Missing_StreamingTV,
    COUNT(*) - COUNT(StreamingMovies) AS Missing_StreamingMovies
FROM Services;

-- check for CustomerID duplicate
SELECT CustomerID, COUNT(*)
FROM Services
GROUP BY CustomerID
HAVING COUNT(*) > 1;


-- Check if every CustomerID in Services exists in Customers:
SELECT s.CustomerID 
FROM Services s
LEFT JOIN Customers c ON s.CustomerID = c.CustomerID
WHERE c.CustomerID IS NULL;

-- this means that all customerids in Services Exists in Customers 

