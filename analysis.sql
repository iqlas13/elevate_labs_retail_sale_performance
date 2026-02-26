-- Total Sales by Category
SELECT "Product Category", SUM("Total Amount") AS total_sales
FROM retail_sales
GROUP BY "Product Category"
ORDER BY total_sales DESC;

-- Average Order Value by Category
SELECT "Product Category", AVG("Total Amount") AS avg_order_value
FROM retail_sales
GROUP BY "Product Category"
ORDER BY avg_order_value DESC;

-- Top 10 Best-Selling Transactions
SELECT "Transaction ID", "Product Category", "Quantity", "Total Amount"
FROM retail_sales
ORDER BY "Total Amount" DESC
LIMIT 10;

-- Monthly Sales (Seasonality)
SELECT substr("Date", 4, 2) AS month, SUM("Total Amount") AS monthly_sales
FROM retail_sales
GROUP BY month
ORDER BY month;

-- Total Units Sold by Category
SELECT "Product Category", SUM("Quantity") AS total_units_sold
FROM retail_sales
GROUP BY "Product Category"
ORDER BY total_units_sold DESC;