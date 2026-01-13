-- Gross margin
SELECT
  month,
  revenue,
  cogs,
  (revenue - cogs) / revenue AS gross_margin
FROM financials;

-- EBITDA
SELECT
  month,
  revenue - cogs - opex AS ebitda
FROM financials;
