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

## 🏗️ Database Schema
The database consists of two core tables linked by a **One-to-Many relationship**:
1. **Customers:** Stores user profiles including names, emails, and signup dates.
2. **Orders:** Tracks transaction details, linked to the `customers` table via a `customer_id` **Foreign Key**.



## 🚀 Key Features Implemented
* **Relational Mapping:** Established `Primary Key` and `Foreign Key` constraints to maintain strict data relationships.
* **Auto-Incrementing IDs:** Implemented for efficient record management.
* **Data Seeding:** Populated the database with a mix of "Active" and "Inactive" users to prepare for advanced analytical queries (JOINs and Aggregations).

## 📈 Future Roadmap
- [ ] Implement **Advanced JOINs** to identify top-spending customers.
- [ ] Apply **Window Functions** for monthly sales trend analysis.
- [ ] Connect the SQL backend to a **Python/Pandas** environment for deeper visualization.

---
**Contact:** [Muzamil Mushtaq](https://www.linkedin.com/in/muzamilnaik/) | Computer Science Graduate