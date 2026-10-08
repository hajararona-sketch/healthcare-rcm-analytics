SELECT
'provider_name',
COUNT(*) AS claim_count,
SUM(insurance_balance) AS total_balance
FROM rcm_data.ar_report
GROUP BY ` provider_name`
ORDER BY 
  total_balance DESC;
