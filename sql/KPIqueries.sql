--Total loan applications
SELECT COUNT(id) AS Total_Applications FROM Loan;

--MTD Loan Applications
SELECT COUNT(id) FROM loan
WHERE MONTH(issue_date)=12;

--PMTD Loan Applications
SELECT COUNT(id) FROM loan
WHERE MONTH(issue_date)=11;

--Total funded amount
SELECT SUM(loan_amount) AS Total_Funded_Amount FROM loan;

--MTD Total funded amount
SELECT SUM(loan_amount) AS Total_Funded_Amount FROM loan
WHERE MONTH(issue_date) = 12

--Total amount received
SELECT SUM(total_payment) AS Total_Amount_Collected FROM loan;

--Average Interest Rate
SELECT AVG(int_rate)*100 AS Avg_Int_Rate FROM loan;

--MTD Average Interest
SELECT AVG(int_rate)*100 AS MTD_Avg_Int_Rate FROM loan
WHERE MONTH(issue_date)=12

--Avg DTI
SELECT AVG(dti)*100 AS Avg_DTI FROM loan;


