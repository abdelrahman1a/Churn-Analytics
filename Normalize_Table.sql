

Create DataBase TelcoChurn

use TelcoChurn

Select * from [dbo].[Telco-Customer-Churn]

-- First Make Normalization 
--
CREATE TABLE Customers (
    CustomerID NVARCHAR(50) PRIMARY KEY,
    Gender NVARCHAR(10),
    SeniorCitizen BIT, -- 1 for Yes, 0 for No
    Partner bit, 
    Dependents bit -- Yes/No
);

CREATE TABLE Contracts (
    ContractID INT IDENTITY(1,1) PRIMARY KEY,
    CustomerID NVARCHAR(50),
    ContractType VARCHAR(20), -- Month-to-month, One year, Two year
    PaperlessBilling bit, -- Yes/No
    PaymentMethod NVARCHAR(50),
    Tenure tinyint,
    MonthlyCharges FLOAT,
    TotalCharges FLOAT,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);


CREATE TABLE Services (
    ServiceID INT IDENTITY(1,1) PRIMARY KEY,
    CustomerID NVARCHAR(50),
    PhoneService bit, -- Yes/No
    MultipleLines VARCHAR(50), -- Yes/No/No phone service
    InternetService VARCHAR(50), -- DSL/Fiber optic/No
    OnlineSecurity VARCHAR(50),
    OnlineBackup VARCHAR(50),
    DeviceProtection VARCHAR(50),
    TechSupport VARCHAR(50),
    StreamingTV VARCHAR(50),
    StreamingMovies VARCHAR(50),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

CREATE TABLE ChurnStatus (
    ChurnID INT IDENTITY(1,1) PRIMARY KEY,
    CustomerID NVARCHAR(50),
    Churn bit, -- Yes/No
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

INSERT INTO Customers (CustomerID, Gender, SeniorCitizen, Partner, Dependents)
SELECT DISTINCT CustomerID, Gender, SeniorCitizen, Partner, Dependents 
FROM [dbo].[Telco-Customer-Churn];

INSERT INTO Contracts (CustomerID, ContractType, PaperlessBilling, PaymentMethod, Tenure, MonthlyCharges, TotalCharges)
SELECT CustomerID,Contract , PaperlessBilling , PaymentMethod  , tenure , MonthlyCharges , TotalCharges
	FROM [dbo].[Telco-Customer-Churn];

INSERT INTO Services (CustomerID, PhoneService, MultipleLines, InternetService, OnlineSecurity, OnlineBackup, DeviceProtection, TechSupport, StreamingTV, StreamingMovies)
SELECT CustomerID,PhoneService , MultipleLines , InternetService , OnlineSecurity  , OnlineBackup , DeviceProtection , TechSupport, StreamingTV,StreamingMovies
	FROM [dbo].[Telco-Customer-Churn];

INSERT INTO ChurnStatus (CustomerID, Churn)
SELECT 
    CustomerID,Churn
	FROM [dbo].[Telco-Customer-Churn];

-- delete old table
drop table [dbo].[Telco-Customer-Churn]



