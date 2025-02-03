# Taste of the World Cafe Order Analysis Project

This project explores creating queries for the fictional company Taste of the World Cafe. Taste of the World Cafe has launched a change to their menu recently and would like to gain some insights into how well the new menu is performing over the first fiscal quarter of 2023. Taste of the World has outlined 3 main objectives to follow, each with their own sub-objectives to query for. The 3 main objectives are:

1. Explore the menu_items table to get familiar with the new menu and query for some tracked metrics.
2. Explore the order_details table to gain an overview of volume and general performance over the quarter.
3. Join the two tables and analyze the performance of the new menu.

The original dataset can be downloaded by csv or MySQL [here](https://mavenanalytics.io/data-playground?order=date_added%2Cdesc&pageSize=10&search=Restaurant%20Orders) as well as within this repository in csv form. 

## Tools
**Microsoft Excel**, **PostgreSQL**

This dataset was cleaned in Microsoft Excel by replacing all NULL values with 0. After cleaning, the csvs were imported into pgAdmin 4 to be queried with PostgreSQL.

## Objective 1
Taste of the World asked to write these queries in response to these questions:
1. What are the total number of items on the updated menu?

PostgreSQL Query:
```sql
SELECT COUNT(*) 
FROM menu_items;
```

Result:
[obj 1 result](images/)

2. What are the least and most expensive items on the menu?

PostgreSQL Query:
```sql
SELECT*
FROM menu_items
Where price IN (SELECT MAX(price) FROM menu_items) 
OR price IN (SELECT MIN(price) FROM menu_items);
```

Result:
[obj 1 result](images/)
x is the least expensive item on the menu, while x is the most expensive item.

3. What are the least and most expensive Italian dishes on the menu?
   
PostgreSQL Query:
```sql
SELECT*
FROM menu_items
WHERE category='Italian'
ORDER BY price;
```

Result:
[obj 1 result](images/)
x is the least expensive Italian item on the menu, while x is the most expensive item.

4. How many dishes are in each category?

PostgreSQL Query:
```sql
SELECT category, COUNT(menu_item_id) as num_dishes
FROM menu_items
GROUP BY category;
```

Result:
[obj 1 result](images/)

5. What is the average dish price within each category?

PostgreSQL Query:
```sql
SELECT category, AVG(price) as avg_price
FROM menu_items
GROUP BY category;
```

Result:
[obj 1 result](images/)

## Objective 2


## Objective 3


## Recommendations


