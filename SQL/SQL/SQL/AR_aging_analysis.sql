SELECT
aging_bucket,
SUM(insurance_balance) AS total_balance
FROM
rcm_data.ar_report
GROUP BY 
aging_bucket
ORDER BY
aging_bucket;
