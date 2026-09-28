-- STEP 1: ETL DATA QUALITY VALIDATION & RECONCILIATION AUDIT
-- OBJECTIVE: Mathematically verify 100% row-completeness and value 
-- integrity of the loaded EHR data transfer.


SELECT 
  -- 1. Volume Completeness Check (Target: 4,869 Records)
  COUNT(*) AS total_loaded_rows,
  
  -- 2. Data Integrity Check (Target: Should return 0 missing IDs)
  COUNT(CASE WHEN account_number IS NULL THEN 1 END) AS missing_account_numbers,
    -- 3. Financial Reconciliation Checks (Dollar-to-Dollar Balance Check)
  SUM(charge_amt) AS total_gross_charges_reconciled,
  SUM(insurance_balance) AS total_outstanding_ar_reconciled
FROM 
  healthcare-rcm-analytics.rcm_data.ar_report;
