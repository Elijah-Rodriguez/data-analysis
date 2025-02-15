-- 1. What is the date range of the order table?
SELECT
MIN (order_date) as  min_date,
MAX (order_date) as max_date
FROM order_details;

-- 2. How many orders were made within this date range?
SELECT COUNT(DISTINCT order_id)
FROM order_details;

-- 3. How many items were ordered within this date range?
SELECT COUNT(*)
FROM order_details;

-- 4. Which orders had the most amount of items?
SELECT order_id, COUNT(item_id) as num_items
FROM order_details
GROUP BY order_id
ORDER BY num_items DESC;

-- 5. How many orders had more than 12 items?
SELECT COUNT(*)FROM
(SELECT order_id, COUNT(item_id) as num_items
FROM order_details
GROUP BY order_id
HAVING COUNT(item_id) > 12) as num_orders;