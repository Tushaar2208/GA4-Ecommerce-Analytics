# Google Merchandise Store: End-to-End GA4 E-Commerce Analytics

**Author**: Tushaar Kapil

## Project Overview
This project analyzes 3 months of obfuscated Google Analytics 4 (GA4) event data from the Google Merchandise Store. The objective is to identify traffic trends, measure funnel conversion efficiency, and analyze product performance to optimize e-commerce revenue.

## Tech Stack & Architecture
1. **Google BigQuery (SQL)**: Transformed nested GA4 JSON/NoSQL event logs into structured relational models (Users, Products, Transactions).
2. **Python (Pandas, Matplotlib)**: Bypassed standard CSV exports by bridging local Jupyter environments directly to Google Cloud via API for statistical Exploratory Data Analysis (EDA).
3. **Power BI (DAX, Data Modeling)**: Connected directly to BigQuery via Advanced SQL querying to build the final executive dashboard.

## Key Business Insights
* **Holiday Traffic Surge**: Time-series analysis revealed a massive spike in daily purchasers aligning exactly with the late November (Black Friday/Cyber Monday) to mid-December shopping window.
* **Returning User Efficiency**: Returning visitors convert at approximately 10x the efficiency of new users, highlighting the need for retention-focused marketing.
* **Product Conversion Distribution**: Statistical scatter plotting indicates that flagship items drive the majority of store traffic but often suffer from lower conversion rates compared to niche, high-intent products.

## Repository Structure
* `/sql_queries`: Contains the core BigQuery SQL scripts used to flatten and model the GA4 data.
* `/notebooks`: Contains the Python EDA demonstrating direct API connections, anomaly detection, and statistical plotting.
* `/dashboard`: Contains the final Power BI deliverable.