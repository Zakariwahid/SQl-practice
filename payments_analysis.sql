-- Monthly GMV and revenue
SELECT 
  DATE_TRUNC('month', transaction_date) AS month,
  SUM(amount) AS gmv,
  SUM(fee) AS revenue
FROM transactions
GROUP BY 1
ORDER BY 1;

-- Top merchants by revenue
SELECT 
  merchant_id,
  SUM(fee) AS total_revenue
FROM transactions
GROUP BY merchant_id
ORDER BY total_revenue DESC;
