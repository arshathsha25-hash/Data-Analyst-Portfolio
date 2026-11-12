-- Overall KPIs
SELECT
    ROUND(SUM(sales), 2)                      AS total_sales,
    ROUND(SUM(profit), 2)                     AS total_profit,
    ROUND(SUM(profit) * 100.0 / SUM(sales), 2) AS profit_margin_pct,
    COUNT(DISTINCT order_id)                  AS total_orders,
    SUM(quantity)                             AS total_units
FROM sales;