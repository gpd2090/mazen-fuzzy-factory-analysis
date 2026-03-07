1. Project Overview

This project analyzes e-commerce sales performance, marketing traffic sources, product profitability, and refund trends using transactional data from an online retail platform.

The objective of this analysis is to uncover insights related to:
	•	Customer purchasing behavior
	•	Marketing channel performance
	•	Product-level revenue and profitability
	•	Refund and return patterns

Using SQL for data exploration and Power BI for visualization, the project builds a 4-page interactive dashboard to support data-driven decision making for marketing, sales, and operations teams.

The dashboard enables stakeholders to monitor key business metrics such as revenue growth, conversion rate, marketing channel effectiveness, product performance, and refund rates.

⸻

2. Dataset Summary

Dataset Structure
	•	Rows: ~50,000+ transactional records
	•	Tables: Multiple relational tables
	•	Key Relationships: Orders, Website Sessions, Order Items, Refunds

Main Tables Used
	•	Orders – Contains order information including order date, revenue, and cost data
	•	Website Sessions – Contains marketing traffic information such as UTM source and campaign data
	•	Order Items – Contains product-level transaction details
	•	Order Item Refunds – Contains refund transactions for returned items

Key Features

Customer & Session Data
	•	Website Session ID
	•	User ID
	•	UTM Source
	•	UTM Campaign
	•	Device Type
	•	Session Timestamp

Order Data
	•	Order ID
	•	Order Date
	•	Revenue
	•	Cost of Goods Sold (COGS)
	•	Items Purchased

Product Data
	•	Product Name
	•	Product ID
	•	Price

Refund Data
	•	Refund ID
	•	Refund Amount
	•	Refund Date

Key Metrics Derived
	•	Total Revenue
	•	Total Orders
	•	Conversion Rate
	•	Profit Margin
	•	Total Refund Amount
	•	Return Rate

⸻

3. Data Analysis using SQL

SQL was used to perform data exploration, aggregation, and business metric calculations before visualization.

Key SQL tasks included:
	•	Joining multiple tables to create a unified dataset
	•	Aggregating revenue and order metrics by product and marketing channel
	•	Calculating conversion rate and marketing performance metrics
	•	Identifying product performance and refund patterns
	•	Preparing structured datasets for dashboard visualization

Example analyses performed:
	•	Revenue by product category
	•	Orders by traffic source
	•	Conversion rate by device type
	•	Monthly order trends
	•	Refund distribution by product

⸻

4. Dashboard Development using Power BI

An interactive 4-page Power BI dashboard was created to visualize business performance.

Dashboard Pages

1. Executive Dashboard
	•	Overall business performance overview
	•	KPIs including revenue, conversion rate, sessions, and total orders
	•	High-level trend analysis

2. Marketing & Traffic Performance
	•	Traffic source analysis
	•	Conversion rates by marketing channel
	•	Device-level traffic insights
	•	Website session trends

3. Product & Revenue Analysis
	•	Revenue distribution across products
	•	Profit analysis by product
	•	Monthly order trends
	•	Revenue by marketing source

4. Return & Refund Analysis
	•	Product return volume
	•	Refund trends over time
	•	Refund amount by product
	•	Refund distribution by traffic source

Interactive slicers allow users to filter by product, marketing channel, and time period.

⸻

5. Key Insights
	•	Google Search (gsearch) generates the highest traffic and revenue contribution.
	•	Desktop users show higher conversion rates compared to mobile users, suggesting mobile experience improvements may increase conversions.
	•	The Original Mr. Fuzzy is the top-performing product in terms of revenue and profit.
	•	Refund activity peaked during mid-2014, indicating a potential operational or product quality issue during that period.
	•	Marketing traffic sources contribute differently to revenue and conversions, highlighting the importance of optimizing marketing spend.

⸻

6. Tools & Technologies Used
	•	SQL – Data extraction, joins, and aggregation
	•	Power BI – Dashboard creation and visualization
	•	DAX – Calculated measures and KPIs
	•	Data Modeling – Table relationships and schema design
