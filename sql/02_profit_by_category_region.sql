-- Top 10 products by profit
SELECT product_name, ROUND(SUM(profit), 2) AS total_profit
FROM sales
GROUP BY product_name
ORDER BY total_profit DESC
LIMIT 10;

-- 10 products losing the most money
SELECT product_name, ROUND(SUM(profit), 2) AS total_profit
FROM sales
GROUP BY product_name
ORDER BY total_profit ASC
LIMIT 10;

-- Do higher discounts lead to losses?
SELECT discount,
       COUNT(*)              AS order_lines,
       ROUND(SUM(profit), 2) AS total_profit
FROM sales
GROUP BY discount
ORDER BY discount;