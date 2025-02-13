

use TelcoChurn

-- EDA (Explratory Data Analysis) and Cleaning for Table Contracts

-- 1 -- Checking for Missing Values Table Contracts
select 
	 count(*) - count(customerId) as Missing_customerId,
	 COUNT(*) - COUNT(ContractType) AS Missing_ContractType,
    COUNT(*) - COUNT(PaperlessBilling) AS Missing_PaperlessBilling,
    COUNT(*) - COUNT(PaymentMethod) AS Missing_PaymentMethod,
    COUNT(*) - COUNT(Tenure) AS Missing_Tenure,
    COUNT(*) - COUNT(MonthlyCharges) AS Missing_MonthlyCharges,
    COUNT(*) - COUNT(TotalCharges) AS Missing_TotalCharges
FROM Contracts;


-- check what is the tenure
select * 
from contracts
where TotalCharges is null

-- check if Total Charges is null and Tenure = 0
select count(*) as TotalMissing_charges
from Contracts 
where TotalCharges is null and Tenure = 0

-- since all Totalcharges which is null and Tenure = 0  then we can replace Totalcharges for null to be zero as tenure = 0
update Contracts
set TotalCharges = 0
where Totalcharges is null and tenure = 0

-- 2 - check for duplicates
select CustomerId  , count(*) as duplicates 
from contracts
group by CustomerId
having count(*) > 1

-- there is no duplicates

-- 3 - Check for invalid values or outliers

-- check outliers for Tenure
select Min(Tenure) as MinTenure , Max(Tenure) as MaxTenure
from contracts
-- Range between 0 and 72 so it's normal

-- check for outliers in MonthlyCharges
select Min(Monthlycharges) as MinMonthlycharges , Max(Monthlycharges)as MaxMonthlyCharges
from Contracts

-- check for outliers in Total Charges(Negative Values)
select CustomerId  , TotalCharges
from Contracts 
where TotalCharges < 0

-- There is no Negative Values in TotalCharges

-- check Unique Values in Categorical Columns
select distinct ContractType 
from contracts


select distinct PaymentMethod
from Contracts


SELECT DISTINCT PaperlessBilling FROM Contracts;