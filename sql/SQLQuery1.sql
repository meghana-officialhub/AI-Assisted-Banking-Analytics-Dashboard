

create database BankingDB

use BankingDB

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    FullName VARCHAR(100),
    Gender VARCHAR(10),
    DateOfBirth DATE,
    City VARCHAR(50),
    State VARCHAR(50),
    CustomerType VARCHAR(20),
    CustomerSince DATE,
    Email VARCHAR(100),
    PhoneNumber VARCHAR(20)
);

CREATE TABLE Accounts (
    AccountID INT PRIMARY KEY,
    CustomerID INT,
    AccountType VARCHAR(20),
    AccountOpenDate DATE,
    AccountStatus VARCHAR(20),
    Balance DECIMAL(18,2)
);

CREATE TABLE Transactions (
    TransactionID INT PRIMARY KEY,
    AccountID INT,
    TransactionDate DATETIME,
    TransactionType VARCHAR(10),
    Amount DECIMAL(18,2),
    Channel VARCHAR(20),
    TransactionStatus VARCHAR(20)
);

CREATE TABLE Loans (
    LoanID INT PRIMARY KEY,
    CustomerID INT,
    LoanType VARCHAR(20),
    LoanAmount DECIMAL(18,2),
    InterestRate DECIMAL(5,2),
    LoanStartDate DATE,
    LoanEndDate DATE,
    LoanStatus VARCHAR(20)
);

----------------------------------------------------------

;WITH N AS (
    SELECT TOP 3000 ROW_NUMBER() OVER (ORDER BY (SELECT NULL)) AS n
    FROM sys.objects
)
INSERT INTO Customers
SELECT
    n AS CustomerID,
    CASE WHEN n % 10 = 0 THEN '  john   doe '
         WHEN n % 7 = 0 THEN 'MARY Ann'
         ELSE 'Customer ' + CAST(n AS VARCHAR)
    END,
    CASE WHEN n % 6 = 0 THEN NULL
         WHEN n % 2 = 0 THEN 'Male'
         ELSE 'Female'
    END,
    CASE WHEN n % 50 = 0 THEN DATEADD(YEAR, 5, GETDATE()) -- future DOB
         ELSE DATEADD(YEAR, -20 - (n % 40), GETDATE())
    END,
    CASE WHEN n % 8 = 0 THEN ' bengaluru '
         ELSE 'Mumbai'
    END,
    'Karnataka',
    CASE WHEN n % 5 = 0 THEN 'Corporate' ELSE 'Retail' END,
    DATEADD(YEAR, -(n % 10), GETDATE()),
    CASE WHEN n % 9 = 0 THEN 'invalidemail.com'
         WHEN n % 11 = 0 THEN NULL
         ELSE 'customer' + CAST(n AS VARCHAR) + '@bank.com'
    END,
    CASE WHEN n % 12 = 0 THEN NULL ELSE '98765432' + CAST(n % 10 AS VARCHAR) END
FROM N;



select * from Customers

-----------------------------------------------------------------------------------------

;WITH N AS (
    SELECT TOP 4500 ROW_NUMBER() OVER (ORDER BY (SELECT NULL)) AS n
    FROM sys.objects a CROSS JOIN sys.objects b
)
INSERT INTO Accounts
SELECT
    n AS AccountID,
    (n % 3100) + 1 AS CustomerID,
    CASE WHEN n % 3 = 0 THEN 'Savings'
         WHEN n % 3 = 1 THEN 'Current'
         ELSE 'Loan'
    END,
    DATEADD(DAY, -n, GETDATE()),
    CASE WHEN n % 6 = 0 THEN 'ACTIVE '
         WHEN n % 5 = 0 THEN 'Dormant'
         WHEN n % 7 = 0 THEN 'active'
         ELSE 'Closed'
    END,
    CASE WHEN n % 20 = 0 THEN -5000
         WHEN n % 15 = 0 THEN NULL
         ELSE (n * 100.75)
    END
FROM N;


select * from Accounts

-------------------------------------------------------------------------------

;WITH N AS (
    SELECT TOP 10000 ROW_NUMBER() OVER (ORDER BY (SELECT NULL)) AS n
    FROM sys.objects a CROSS JOIN sys.objects b
)
INSERT INTO Transactions
SELECT
    n AS TransactionID,
    CASE WHEN n % 20 = 0 THEN 999999  -- orphan AccountID
         ELSE (n % 4600) + 1
    END,
    CASE WHEN n % 25 = 0 THEN DATEADD(YEAR, -10, GETDATE()) -- before account open
         ELSE DATEADD(DAY, -n, GETDATE())
    END,
    CASE WHEN n % 2 = 0 THEN 'Credit' ELSE 'Debit' END,
    CASE WHEN n % 100 = 0 THEN 9999999
         ELSE (n % 5000) * 1.5
    END,
    CASE WHEN n % 4 = 0 THEN 'ATM'
         WHEN n % 4 = 1 THEN 'Online'
         WHEN n % 4 = 2 THEN 'UPI'
         ELSE 'Branch'
    END,
    CASE WHEN n % 10 = 0 THEN 'Failed'
         WHEN n % 15 = 0 THEN 'Pending'
         ELSE 'Success'
    END
FROM N;


select * from Transactions
------------------------------------------------------------------------------------------

;WITH N AS (
    SELECT TOP 1200 ROW_NUMBER() OVER (ORDER BY (SELECT NULL)) AS n
    FROM sys.objects
)
INSERT INTO Loans
SELECT
    n AS LoanID,
    (n % 3100) + 1,
    CASE WHEN n % 4 = 0 THEN 'Home'
         WHEN n % 4 = 1 THEN 'Personal'
         WHEN n % 4 = 2 THEN 'Education'
         ELSE 'Vehicle'
    END,
    n * 50000,
    CASE WHEN n % 10 = 0 THEN 18.5 ELSE 9.75 END,
    DATEADD(YEAR, -5, GETDATE()),
    DATEADD(YEAR, 10, GETDATE()),
    CASE WHEN n % 12 = 0 THEN 'Defaulted'
         WHEN n % 7 = 0 THEN 'Closed'
         ELSE 'Active'
    END
FROM N;


select * from Loans
------------------------------------------------------------------------------









