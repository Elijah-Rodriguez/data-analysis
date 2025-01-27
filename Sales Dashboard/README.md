# Sales Dashboard Project

This project explores the fictional company of Plant Co. to organize 3 tables of data into a dynamic dashboard for the end user. The dashboard is best used to identify problem areas within the company, such as locations or products that may be underperforming. Access the published report [here](https://app.fabric.microsoft.com/groups/me/reports/b4b39cf2-1ed7-48d2-886f-2631e3ab6ee8/c154c62908eb290d2b91?experience=fabric-developer) or download the .pbix file [here]().

## Dataset

Inspired by [Mo Chen](https://github.com/mochen862).

Original dataset available [here]()

## Process

### 1. Data Cleaning
- Some column names contained spelling errors and needed to be corrected. This was done simply with PostgreSQL using the following code snippet:
  
```sql
ALTER TABLE plant_hierarchy 
RENAME COLUMN Produt_Type TO Product_Type; 
```

- Formatting was clean upon inspecting the dataset within a PostgreSQL database as I transitioned to importing the data into PowerQuery.
- Only 2 additional changes happened after importing the data: Removing duplicate entries in all ID columns and confirming the Date_Time column within the Plant_FACT table was using the correct datatype.

### 2. Data Modeling
- After cleaning and importing the data, my next step was creating the basic measures that would be needed for KPI tracking and calculations. These included measures such as total sales, quantity, gross profit, and values for a switch that will be added later.
- These measures were created using simple DAX functions such as SUM() and SWITCH().
- I brought these measures into a simple table in the report view to confirm no errors in the functions before moving on to create the visuals for the dashboard.

### 3. Dashboard Development
- Standard cards, scatter plots, and stacked line charts were added to begin displaying key KPIs such as Gross Profit percentage, YTD comparisons and profitablility.
- A treemap was added to demonstate the bottom 10 countries that had the highest difference between YTD and PYTD values.
- A waterfall chart was added to allow the opportunity to drill down and analyze specific countries and product type to correctly identify problem locations and products.
- All charts include a dynamic title and result that updates after changing the YTD as well as the tracked metric.


### 4. Conclusion
By analyzing the waterfall chart, it's clear that landscape products in Canada during 2024 were underperforming. The end user can use this analysis, as well as noting that Canada exceeded their PYTD during Feburary to investigate why landscape products are not selling and what were the conditions that made February such a successful month for the company. This would allow Plant Co. to allocate resources more stragetically and make more confident decisions as the year progresses. 

![PowerBI Plant Co Performance Dashboard]()
