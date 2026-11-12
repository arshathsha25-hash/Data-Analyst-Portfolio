-- Sales and profit by year and month
SELECT order_year, order_month,
       ROUND(SUM(sales), 2)  AS total_sales,
       ROUND(SUM(profit), 2) AS total_profit
FROM sales
GROUP BY order_year, order_month
ORDER BY order_year, order_month;

-- Year-over-year totals
SELECT order_year,
       ROUND(SUM(sales), 2)  AS total_sales,
       ROUND(SUM(profit), 2) AS total_profit
FROM sales
GROUP BY order_year
ORDER BY order_year;