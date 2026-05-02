# 🛒 E-Commerce Sales Analytics (SQL-First Approach)

## 📌 Project Overview
This project focuses on building a professional-grade relational database from scratch to manage and analyze e-commerce data. Moving beyond flat CSV files, I engineered a custom schema in **MySQL** to simulate real-world data pipelines, ensuring data integrity through relational mapping.

## 🛠️ Tech Stack
* **Database:** MySQL
* **Editor:** VS Code & MySQL Workbench
* **Version Control:** Git & GitHub

## 📂 Project Structure
* `sql_scripts/01_create_schema.sql`: Contains the DDL (Data Definition Language) for creating the `ecommerce_db`, `customers`, and `orders` tables.
* `sql_scripts/02_data_seeding.sql`: Contains the DML (Data Manipulation Language) for populating the database with realistic sample data.
* `sql_scripts/03_business_insights.sql`: Analytical queries for revenue and retention tracking.


## 🏗️ Database Schema
The database consists of two core tables linked by a **One-to-Many relationship**:
1. **Customers:** Stores user profiles including names, emails, and signup dates.
2. **Orders:** Tracks transaction details, linked to the `customers` table via a `customer_id` **Foreign Key**.


## 📊 Business Intelligence & Analysis
In this phase, I transitioned from data management to Actionable Insights, using advanced SQL joins to solve specific business problems.

### 1. Revenue Analysis (High-Value Customers)
**Objective:** Identify `VIP` customers based on total historical spend.
**Technique:** INNER JOIN combined with `SUM()` and `COUNT()` aggregations.
**Insight:** By joining customers and orders, I generated a ranked list of top-tier spenders, allowing for targeted loyalty rewards.



### 2. Retention Analysis (Inactive Users)
**Objective:** Identify users who signed up but have not yet made a purchase.
**Technique:** LEFT JOIN filtered by WHERE `o.order_id` IS `NULL`.
**Insight:** Extracted the emails of `Ghost Customers.` This data is essential for marketing teams to trigger re-engagement campaigns or provide first-purchase incentives.



## 🚀 Key Features Implemented

* **Relational Mapping:** Established `Primary Key` and `Foreign Key ` constraints to maintain strict data relationships.

* **Complex Joins:** Implemented both `INNER JOIN` and `LEFT JOIN` to analyze different segments of the customer base.

* **Data Aggregation:** Utilized GROUP BY, `SUM()`, and `COUNT()` to transform raw transactional rows into business metrics.

* **Data Seeding:** Populated the database with a mix of `Active` and `Inactive` users to test real-world analytical scenarios.

## 📈 Future Roadmap
- [X] Implement **Advanced JOINs** to identify top-spending customers.
- [ ] Apply **Window Functions** for monthly sales trend analysis.
- [ ] Connect the SQL backend to a **Python/Pandas** environment for deeper visualization.

---
**Contact:** [Muzamil Mushtaq](https://www.linkedin.com/in/muzamilnaik/) 