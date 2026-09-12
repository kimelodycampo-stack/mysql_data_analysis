# Olist SQL Analysis

## Overview

This project analyzes the **Olist Brazilian E-Commerce dataset** using
**MySQL** to answer eight business questions related to customer
spending, revenue trends, product performance, customer segmentation,
and customer purchasing behavior.

The analysis uses the Olist relational database, including the
`customers`, `orders`, `order_payments`, `order_items`, and `products`
tables.

## Business Questions

1.  **Who are the top 10 customers by total amount spent?**
2.  **What is the monthly revenue trend across the dataset?**
3.  **What is the month-over-month change in revenue?**
4.  **Which product categories generate the most revenue?**
5.  **Rank top 3 products within each category by revenue.**
6.  **Segment customers into spend tiers (Low/Medium/High).**
7.  **How many customers are repeat vs one-time buyers?**
8.  **What % of total revenue comes from the top category?**

## Key Findings

-   The **top 10 customers** were identified based on their total
    `payment_value`, with the highest-spending customer spending
    **13,664.08**.
-   Monthly revenue shows substantial growth through 2017, with **March
    2017 reaching approximately 449,863.60** in revenue among the months
    shown.
-   Month-over-month analysis shows both strong increases and declines.
    For example, revenue increased by **153,419.97** from January to
    February 2017 and decreased by **32,075.57** from March to April
    2017.
-   **`beleza_saude`** generated the highest category revenue at
    approximately **1,258,681.34**, followed by **`relogios_presentes`**
    and **`cama_mesa_banho`**.
-   The top 3 products were ranked within each product category using
    `ROW_NUMBER()` and `PARTITION BY`.
-   Customer spending was segmented into **Low, Medium, and High** tiers
    using the thresholds defined in the query: below 100, 100--499.99,
    and 500 or more.
-   The customer segmentation produced **47,255 Low**, **47,889
    Medium**, and **4,296 High** customers.
-   The analysis identified **93,099 one-time buyers** and **2,997
    repeat buyers**.
-   **`beleza_saude`** was the top revenue category and contributed
    approximately **9.38%** of total categorized revenue.

## Recommendations

-   **Prioritize high-revenue product categories**, particularly
    `beleza_saude`, `relogios_presentes`, and `cama_mesa_banho`, when
    evaluating product assortment and promotional opportunities.
-   **Investigate monthly revenue fluctuations** to understand the
    factors behind major increases and declines and use these patterns
    for future sales planning.
-   **Develop retention strategies** for one-time buyers, since the
    number of one-time customers is substantially larger than the number
    of repeat buyers.
-   **Target high-spending customers** with personalized promotions or
    loyalty initiatives to encourage continued purchasing.
-   **Use category-level and product-level performance rankings** to
    support inventory, merchandising, and promotional decisions.

## Tools & Skills

-   **MySQL / SQL**
-   MySQL Workbench / DataGrip
-   `SELECT`, `FROM`, `JOIN`, `GROUP BY`, `ORDER BY`, `LIMIT`
-   Aggregate functions: `SUM()`, `COUNT()`
-   Date functions: `DATE_FORMAT()`
-   Common Table Expressions (CTEs)
-   Window functions: `LAG()`, `ROW_NUMBER()`, `SUM() OVER()`
-   `CASE WHEN` conditional logic
-   Data aggregation and business analysis
-   Customer segmentation
-   Revenue and product performance analysis

## Files

  -----------------------------------------------------------------------
  File                                Description
  ----------------------------------- -----------------------------------
  `q1_top 10_customers.sql`           Top 10 customers by total amount
                                      spent

  `q2_monthly_revenue.sql`            Monthly revenue trend

  `q3_mom_revenue.sql`                Month-over-month revenue change

  `q4_category_revenue.sql`           Revenue by product category

  `q5_top_3_products.sql`             Top 3 products within each category

  `q6_customer_segments.sql`          Customer spend segmentation

  `q7_repeat_vs_onetime.sql`          Repeat vs one-time buyers

  `q8_top_category_percentage.sql`    Percentage of revenue from each
                                      category
  -----------------------------------------------------------------------
"# mysql_data_analysis" 
"# mysql_data_analysis" 
