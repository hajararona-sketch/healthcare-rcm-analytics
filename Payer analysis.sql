SELECT
insurance_payer,
COUNT(*) AS total_claims,
SUM(insurance_balance) AS total_insurance_balance
FROM rcm_data.ar_report
GROUP BY insurance_payer
ORDER BY total_insurance_balance DESC;