# 🛒 Google Merchandise Store — GA4 E-Commerce Funnel & Merchandising Analysis

### Google BigQuery (SQL) • Python • Pandas • Power BI • DAX

**Full-Funnel Checkout Progression • Multi-Channel Attribution • Catalog Price Elasticity**[cite: 6, 8]

## 📊 Dashboard

<p align="center">
  <img src="dashboard/01_traffic_funnel.png" width="800" alt="Traffic and Funnel Overview">
</p>

<details>
<summary><b>📁 View all dashboard pages</b></summary>

**Page 1 — Traffic & Funnel**[cite: 6]
![Traffic and Funnel Overview](dashboard/01_traffic_funnel.png)

**Page 2 — Product Merchandising**[cite: 8]
![Product Merchandising and Price Elasticity](dashboard/02_product_merchandising.png)

</details>

## 📌 Project Overview

This project investigates where shoppers drop off during checkout, which marketing channels and devices generate store sales, and how item pricing relates to product conversion across the Google Merchandise Store catalog[cite: 6, 8]. Using the Google Analytics 4 (GA4) public BigQuery dataset, nested event logs were unnested and aggregated into grain-isolated tables for statistical validation and interactive Power BI reporting.

**GA4 BigQuery Raw Events → SQL Unnesting & Grain Isolation → Python / Pandas → Statistical Validation → Power BI → Interactive Dashboard**

## 🗂 Dataset

* **Source**: Google BigQuery public GA4 obfuscated sample e-commerce dataset.
* **Observation Period**: Store activity from 01-11-2020 to 31-01-2021[cite: 6].
* **Data Structure**: Daily event tables containing nested arrays for event parameters and item-level activity.
* **Reporting Tables**: Four aggregated tables covering funnel stages, daily traffic, channel-device performance, and product merchandising[cite: 6].

## 🎯 Business Questions

* **Checkout Friction**: Which stage of the buying journey experiences the steepest customer drop-off[cite: 6]?
* **Channel & Device Split**: How do acquisition channels and device types compare in revenue generation[cite: 6]?
* **Catalog Pricing**: How does item price affect view-to-purchase conversion rates across active products[cite: 8]?

## 📈 Key Insights

### Executive Store & Catalog Summary

| Metric Category | Metric Name | Value |
|---|---|---|
| Revenue | Total Revenue | $362.17K[cite: 6] |
| Transactions | Total Orders | 4543[cite: 6] |
| Order Size | Average Order Value | $79.72[cite: 6] |
| Store Efficiency | Conversion Rate | 7.21%[cite: 6] |
| Cart Friction | Cart Abandonment | 64.8%[cite: 6] |
| Catalog Size | Active Catalog Items | 399[cite: 8] |
| Browsing Volume | Total Product Views | 2.75M[cite: 8] |
| Cart Volume | Total Cart Adds | 667K[cite: 8] |
| Unit Volume | Total Units Sold | 15K[cite: 8] |
| Catalog Pricing | Avg Item Price | $22.82[cite: 8] |

Daily revenue and visitor traffic rose across November, peaked during the December holiday shopping window, and moderated in January[cite: 6].

### Checkout Funnel Progression

| Funnel Stage | Users | Stage Transition Notes |
|---|---|---|
| Viewed Product | 61K[cite: 6] | Top-of-funnel product browsing[cite: 6] |
| Added to Cart | 13K[cite: 6] | Initial cart selection[cite: 6] |
| Began Checkout | 10K[cite: 6] | Checkout entry[cite: 6] |
| Added Shipping Info | 10K[cite: 6] | Full retention from checkout start[cite: 6] |
| Added Payment Info | 6K[cite: 6] | Primary checkout bottleneck[cite: 6] |
| Purchased | 4K[cite: 6] | Completed order conversion[cite: 6] |

Shoppers who start checkout move smoothly through shipping details, whereas the step between shipping confirmation and payment submission represents the steepest checkout drop-off[cite: 6].

### Revenue by Marketing Channel & Device

| Marketing Channel | Desktop | Mobile | Tablet | Total |
|---|---|---|---|---|
| Direct / None | $66,693[cite: 6] | $46,679[cite: 6] | $1,748[cite: 6] | $1,15,120[cite: 6] |
| Organic Search | $57,044[cite: 6] | $45,178[cite: 6] | $1,785[cite: 6] | $1,04,007[cite: 6] |
| Other / Unattributed | $29,191[cite: 6] | $20,443[cite: 6] | $827[cite: 6] | $50,461[cite: 6] |
| Paid Search (CPC) | $6,038[cite: 6] | $2,846[cite: 6] | $172[cite: 6] | $9,056[cite: 6] |
| Referral | $49,849[cite: 6] | $31,622[cite: 6] | $2,050[cite: 6] | $83,521[cite: 6] |
| Total | $2,08,815[cite: 6] | $1,46,768[cite: 6] | $6,582[cite: 6] | $3,62,165[cite: 6] |

Direct and Organic Search lead store acquisition, and desktop sessions out-earn mobile and tablet traffic across every marketing channel[cite: 6].

### Top Revenue Products & Price Elasticity

| Product Name | Category | Revenue |
|---|---|---|
| Google Zip Hoodie F/C[cite: 8] | Outerwear | $13.8K[cite: 8] |
| Google Crewneck Sweatshirt Navy[cite: 8] | Fleece | $10.7K[cite: 8] |
| Google Men's Tech Fleece Grey[cite: 8] | Fleece | $10.0K[cite: 8] |
| Google Badge Heavyweight Pullover Black[cite: 1, 8] | Pullover | $9.7K[cite: 8] |
| Super G Unisex Joggers[cite: 8] | Apparel | $9.5K[cite: 8] |
| Google Crewneck Sweatshirt Green[cite: 8] | Fleece | $8.4K[cite: 8] |
| Google Sherpa Zip Hoodie Charcoal[cite: 8] | Outerwear | $6.4K[cite: 8] |
| Google Men's Puff Jacket Black[cite: 8] | Jacket | $6.2K[cite: 8] |
| Google Men's Tech Fleece Vest Charcoal[cite: 8] | Vest | $5.5K[cite: 8] |
| Google Women's Puff Jacket Black & Accessories[cite: 8] | Jacket & Gear | $5.3K[cite: 8] |

Branded hoodies, sweatshirts, and jackets drive top product revenue, while the catalog-wide scatter plot and regression trend line show view-to-purchase conversion declining as item price increases[cite: 8].

## 💡 Potential Applications

* **Checkout Payment UX**: Add express payment options at the payment step to reduce drop-off after shipping entry[cite: 6].
* **Mobile Conversion Audit**: Streamline mobile product and checkout layouts to narrow the revenue gap with desktop users[cite: 6].
* **Merchandise Bundling**: Pair lower-priced accessories that convert at higher rates with flagship outerwear items[cite: 8].
* **Ad Spend Review**: Reassess paid search campaign targeting given its smaller revenue share compared to organic and referral traffic[cite: 6].

## ⚙️ Data Pipeline

### Data Exploration & Grain Isolation (SQL / BigQuery)

* Audited event schemas, date ranges, and nested item structures across GA4 tables.
* Built separate aggregated tables for funnel stages, daily traffic, channel-device attribution, and item-level performance[cite: 6].

📂 View SQL scripts:
* 👉 [sql/01_data_exploration.sql](sql/01_data_exploration.sql)
* 👉 [sql/02_funnel_conversion_analysis.sql](sql/02_funnel_conversion_analysis.sql)
* 👉 [sql/03_traffic_and_acquisition.sql](sql/03_traffic_and_acquisition.sql)
* 👉 [sql/04_product_performance.sql](sql/04_product_performance.sql)
* 👉 [sql/05_transaction_analysis.sql](sql/05_transaction_analysis.sql)

### Exploratory Analysis & Validation (Python / Pandas)

* Checked revenue distributions, traffic trends, and conversion ratios across exported datasets.
* Evaluated item-level price elasticity prior to dashboard development.

📂 View notebooks:
* 👉 [notebooks/](notebooks/)

### Dashboard Development (Power BI)

* Designed an interactive report covering Traffic & Funnel on the first page and Product Merchandising on the second page[cite: 6, 8].
* Created DAX measures, conditional formatting data bars, regression trend lines, and a custom JSON theme[cite: 6, 8].

📂 View dashboard files:
* 👉 [dashboard/GA4_Merchandise_Store_Dashboard.pbix](dashboard/GA4_Merchandise_Store_Dashboard.pbix)
* 👉 [dashboard/ga4_clean_theme.json](dashboard/ga4_clean_theme.json)

## 🛠 Tools & Skills Demonstrated

### Tools

* Google BigQuery (SQL)
* Python (Pandas, Matplotlib, Seaborn)
* Power BI Desktop & DAX
* Git & GitHub

### Skills

* GA4 Nested Schema Unnesting
* Multi-Grain Data Modeling
* Funnel & Attribution Analysis[cite: 6]
* Price Elasticity Evaluation[cite: 8]
* Executive Dashboard Design[cite: 6, 8]

## 📋 Scope & Limitations

* **Obfuscated Fields**: Public GA4 sample data masks certain attribution values under unattributed categories