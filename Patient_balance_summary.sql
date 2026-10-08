SELECT 
SUM (patient_responsibility) AS total_patient_balance,
ROUND(AVG(patient_responsibility)),2 AS average_patient_balance,
COUNT(CASE WHEN patient_responsibility > 0 THEN  1 END) AS active_debtor_accounts
FROM
rcm_data.ar_report;
