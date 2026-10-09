SELECT
    DATE_TRUNC(charge_date, MONTH) AS month,
    SUM(paid_amount) AS total_collection
FROM `rcm_data.ar_report`
GROUP BY month
ORDER BY month;