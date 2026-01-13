-- Merchants by signup cohort
SELECT
  DATE_TRUNC('month', signup_date) AS cohort,
  COUNT(*) AS merchants
FROM merchants
GROUP BY 1
ORDER BY 1;
