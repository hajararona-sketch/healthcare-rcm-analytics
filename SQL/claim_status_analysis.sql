SELECT
charge_status,
COUNT(*) AS total_claims,
SUM(insurance_balance) AS total_balance
FROM rcm_data.ar_report
GROUP BY charge_status
ORDER BY total_claims DESC;
