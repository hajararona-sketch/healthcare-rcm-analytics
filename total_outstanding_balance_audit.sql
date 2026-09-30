SELECT 
  SUM(insurance_balance) AS total_outstanding_balance,
  COUNT(*) AS total_claims_audited
FROM 
  healthcare_rcm_data.ar_aging_report;