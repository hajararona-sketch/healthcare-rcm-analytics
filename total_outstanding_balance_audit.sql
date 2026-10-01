SELECT 
  SUM(insurance_balance) AS total_outstanding_balance,
  COUNT(*) AS total_claims_audited
FROM 
 rcm_data.ar_report;
