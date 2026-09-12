# Olist SQL Analysis

## Overview

This project analyzes the Olist Brazilian E-Commerce Public Dataset using MySQL. The dataset contains approximately 100,000 orders and related information about customers, orders, payments, products, sellers, reviews, and geolocation. The analysis covers customer spending, monthly revenue, product-category performance, product rankings, customer segmentation, and repeat purchasing behavior. The goal is to answer eight business questions and identify practical insights that can support e-commerce decision-making.

## Dataset

The project uses the **Olist Brazilian E-Commerce Public Dataset**, an e-commerce dataset containing information about customers, orders, payments, products, sellers, reviews, and geolocation. The dataset is organized into related tables that can be joined using common IDs such as `customer_id`, `order_id`, and `product_id`.

**Tables used in the project:**
- `customers` — customer information and unique customer identifiers
- `orders` — order details and purchase timestamps
- `order_payments` — payment values and payment methods
- `order_items` — products purchased in each order, including item prices
- `products` — product categories and product attributes
- `sellers` — seller information and locations
- `order_reviews` — customer review scores and comments
- `geolocation` — Brazilian geographic information

## Business Questions

### Q1. Who are the top 10 customers by total amount spent?

**Answer:** The top 10 customers were identified based on their total payment value. The highest-spending customer spent **13,664.08**.

### Q2. What is the monthly revenue trend across the dataset?

**Answer:** Monthly revenue generally increased as the business expanded, with fluctuations across months. For example, revenue increased from **138,488.04 in January 2017** to **291,908.01 in February 2017** and **449,863.60 in March 2017**.

### Q3. What is the month-over-month change in revenue?

**Answer:** Month-over-month revenue changes show where revenue increased or decreased compared with the previous available month. For example, revenue increased by **153,419.97** from January to February 2017, while it decreased by **32,075.57** from March to April 2017.

### Q4. Which product categories generate the most revenue?

**Answer:** The highest-revenue categories were **beleza_saude (1,258,681.34)**, **relogios_presentes (1,205,005.68)**, and **cama_mesa_banho (1,036,988.68)**.

### Q5. Which are the top 3 products within each category by revenue?

**Answer:** The analysis ranked products within each product category and returned the top three products for each category. This helps identify the strongest revenue-generating products within individual categories.

### Q6. How can customers be segmented into Low, Medium, and High spend tiers?

**Answer:** Customers were grouped by total spending using the project-defined tiers: **Low: below 100**, **Medium: 100 to below 500**, and **High: 500 or more**. Using unique customers, the results were **44,390 Low**, **47,216 Medium**, and **4,489 High** customers.

### Q7. How many customers are repeat vs one-time buyers?

**Answer:** The analysis found **93,099 one-time buyers** and **2,997 repeat buyers**.

### Q8. What percentage of total revenue comes from the top category?

**Answer:** **beleza_saude** was the top product category, contributing **9.38%** of revenue among product categories with a recorded category value.

## Key Findings

1. **beleza_saude** generated the highest category revenue at **1,258,681.34**, followed by **relogios_presentes** and **cama_mesa_banho**.
2. The customer base is dominated by one-time buyers, with **93,099 one-time buyers** compared with **2,997 repeat buyers**.
3. Customer spending is concentrated mainly in the Low and Medium tiers, while **4,489 customers** fall into the High-spend tier.
4. Monthly revenue shows periods of strong growth as well as month-to-month declines, highlighting the importance of monitoring revenue trends over time.
5. The highest individual customer spend was **13,664.08**, showing that a small group of customers can represent valuable high-spend opportunities.

## Recommendations

**1. Improve customer retention.**  
Because one-time buyers greatly outnumber repeat buyers, the business should focus on encouraging second purchases through follow-up campaigns, personalized offers, and post-purchase engagement. Converting even a portion of one-time buyers into repeat customers could improve long-term customer value.

**2. Prioritize high-performing categories and high-value customers.**  
The business should continue monitoring strong categories such as beleza_saude and relogios_presentes while identifying products that consistently generate high revenue. High-spend customers can also be targeted with personalized promotions and retention strategies.

## Tools & Skills

- MySQL
- SQL
- SELECT, WHERE, JOIN, GROUP BY, ORDER BY
- Aggregate functions such as SUM and COUNT
- CTEs
- Window functions such as LAG and ROW_NUMBER
- CASE statements for customer segmentation
- Revenue and customer analysis

## Files

- `q1_top_customers.sql` — Top 10 customers by total spending
- `q2_monthly_revenue.sql` — Monthly revenue trend
- `q3_mom_revenue_change.sql` — Month-over-month revenue change
- `q4_category_revenue.sql` — Revenue by product category
- `q5_top_products_by_category.sql` — Top 3 products within each category
- `q6_customer_spend_segments.sql` — Customer spend segmentation
- `q7_repeat_vs_one_time.sql` — Repeat vs one-time buyers
- `q8_top_category_revenue_percentage.sql` — Top category revenue percentage
- `DASP - B04 - FirstName LastName.pdf` — Capstone screenshots
- `Olist_One-Page_Insights_Summary_EDITABLE.docx` — One-page business insights summary

## One-Page Insights

### Data Overview

The Olist Brazilian E-Commerce dataset contains approximately 100,000 orders across multiple related tables covering customers, orders, payments, products, sellers, reviews, and geolocation. The available order data spans from September 2016 to October 2018. The analysis identified some data gaps, including missing product-category values, so category-based analysis focuses on records with a recorded category.

### Business Insight 1 — Category Revenue

Product-category revenue is concentrated among several leading categories. **beleza_saude** generated the highest revenue at **1,258,681.34**, followed by **relogios_presentes** at **1,205,005.68** and **cama_mesa_banho** at **1,036,988.68**. The top category contributed **9.38%** of revenue among categorized products.

### Business Insight 2 — Customer Retention

The customer base has a strong one-time-purchase pattern. There were **93,099 one-time buyers** compared with only **2,997 repeat buyers**. This suggests that customer retention and encouraging second purchases could be important opportunities for improving long-term revenue.

### Business Insight 3 — Customer Spending

Most customers fall into the Low and Medium spending tiers, with **44,390 Low-spend**, **47,216 Medium-spend**, and **4,489 High-spend** customers. The highest individual customer spend was **13,664.08**, showing that high-value customers represent an important segment that can be targeted with retention strategies.

### Recommendation 1 — Increase Repeat Purchases

The business should focus on converting one-time buyers into repeat customers through post-purchase follow-ups, personalized offers, and relevant product recommendations. These actions can help increase customer lifetime value.

### Recommendation 2 — Focus on Strong Categories and High-Value Customers

The business should continue tracking high-performing categories and their leading products to support inventory and promotional decisions. High-spend customers should also receive targeted retention efforts because they represent valuable revenue opportunities.
