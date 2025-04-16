-- Preview sample rows
SELECT * 
FROM retail_inventory_db.public.store_inventory
LIMIT 10;

-- Total inventory by region
SELECT 
  region, 
  SUM(inventory_level) AS total_inventory
FROM retail_inventory_db.public.store_inventory
GROUP BY region;

-- Top 5 products by total inventory
SELECT 
  product_id, 
  SUM(inventory_level) AS total_stock
FROM retail_inventory_db.public.store_inventory
GROUP BY product_id
ORDER BY total_stock DESC
LIMIT 5;

-- Monthly inventory trend
SELECT 
  DATE_TRUNC('month', date) AS month, 
  SUM(inventory_level) AS total_inventory
FROM retail_inventory_db.public.store_inventory
WHERE date < '2023-12-01' -- Cut-off date
GROUP BY month
ORDER BY month;

-- Store with the lowest total inventory
SELECT 
  store_id, 
  SUM(inventory_level) AS total_inventory
FROM retail_inventory_db.public.store_inventory
GROUP BY store_id
ORDER BY total_inventory ASC
LIMIT 1;

-- Average inventory level per product
SELECT 
  product_id, 
  AVG(inventory_level) AS avg_stock
FROM retail_inventory_db.public.store_inventory
GROUP BY product_id
ORDER BY avg_stock DESC;

-- Total inventory by category
SELECT 
  category, 
  SUM(inventory_level) AS total_inventory
FROM retail_inventory_db.public.store_inventory
GROUP BY category
ORDER BY total_inventory DESC;


