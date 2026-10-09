SELECT 
  FORMAT_DATE('%Y-%m', charge_date) AS claim_month,
  COUNT(*) AS total_claims,
  SUM(insurance_balance) AS total_monthly_balance,
  SUM(CASE WHEN charge_status = 'Denied' THEN 1 ELSE 0 END) AS denied_claims_count
FROM 
  rcm_data.ar_report
GROUP BY 
  claim_month
ORDER BY 
  claim_month ASC;