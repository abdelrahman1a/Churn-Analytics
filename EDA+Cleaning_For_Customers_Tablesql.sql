

-- EDA + Cleaning for Customers Table

-- 1- Check for Missing Values
select Count(*) - count(CustomerID) as Missing_CustomerId,
		count(*) - count(Gender) as Missing_Gender,
		count(*) - count(SeniorCitizen) as Missing_SeniorCitizen,
		count(*) - count(Partner) as Missing_Partner,
		count(*) - count(Dependents) as Missing_Dependents
from Customers

-- There is no Missing Values 
-- once we have checked in Contract Table about Duplicates for customerID 
-- the customerId is the same we don't need to check because there is no duplicates


-- Checking values in columns
select distinct Gender from Customers

select distinct SeniorCitizen from customers

select distinct Partner from customers

select distinct Dependents from customers

