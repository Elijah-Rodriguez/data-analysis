-- 1. Find the number of items on the menu.
SELECT COUNT(*) 
FROM menu_items;

-- 2. What are the least and most expensive items on the menu?
SELECT*
FROM menu_items
Where price IN (SELECT MAX(price) FROM menu_items) 
OR price IN (SELECT MIN(price) FROM menu_items);

-- 3. How many Italian dishes are on the menu?
SELECT COUNT(*)
FROM menu_items
WHERE category='Italian';

-- 4. What are the least and most expensive Italian dishes on the menu?
SELECT*
FROM menu_items
WHERE category='Italian'
ORDER BY price;

-- 5. How many dishes are in each category?
SELECT category, COUNT(menu_item_id) as num_dishes
FROM menu_items
GROUP BY category;

-- 6. What is the average dish price within each category?
SELECT category, ROUND(AVG(price), 2)
FROM menu_items
GROUP BY category;
