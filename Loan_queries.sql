#GOOD LOAN ISSUED#
--Good loan percentage
SELECT
    (COUNT(CASE WHEN loan_status = 'Fully Paid' OR loan_status = 'Current' THEN id END) * 100.0) / 
	COUNT(id) AS Good_Loan_Percentage
FROM loan;

--good loan applications 
SELECT COUNT(id) AS Good_Loan_Applications FROM loan
WHERE loan_status = 'Fully Paid' OR loan_status = 'Current';

--good loan funded amount
SELECT SUM(loan_amount) AS Good_Loan_Funded_amount FROM loan
WHERE loan_status = 'Fully Paid' OR loan_status = 'Current';

--good loan amount received
SELECT SUM(total_payment) AS Good_Loan_amount_received FROM loan
WHERE loan_status = 'Fully Paid' OR loan_status = 'Current';

#BAD LOAN ISSUED#
--bad loan percentage
SELECT
    (COUNT(CASE WHEN loan_status = 'Charged Off' THEN id END) * 100.0) / 
	COUNT(id) AS Bad_Loan_Percentage
FROM loan;

--bad loan applications
SELECT COUNT(id) AS Bad_Loan_Applications FROM loan
WHERE loan_status = 'Charged Off';

--bad loan funded amount
SELECT SUM(loan_amount) AS Bad_Loan_Funded_amount FROM loan
WHERE loan_status = 'Charged Off';








