SELECT 
  insurance_payer,
  SUM(insurance_balance) AS total_payer_stuck_cash,
  COUNT(*) AS claim_count_by_payer
FROM 
  healthcare_rcm_data.ar_aging_report
GROUP BY 
  insurance_payer
ORDER BY 
  total_payer_stuck_cash DESC