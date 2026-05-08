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

* `sql_scripts/04_database_views.sql`: This approach ensures DRY (Don't Repeat Yourself) principles, improves security, and provides a clean interface for data analysts.
* `sql_scripts/05_advanced_queries`: I implemented Subqueries (Nested Queries). This allows the database to perform dynamic calculations on the fly before returning the final result.
* `sql_scripts/06_ctes`: I moved from using Subqueries to CTEs. While subqueries are useful for quick calculations, they often lead to "Parenthesis Chaos" as the code grows, making it hard to read and debug.



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




## 🖼️ Database Abstraction (SQL Views)
To improve code reusability and simplify complex reporting, I implemented SQL Views. This layer acts as a "Virtual Table" that stores complex query logic without duplicating data.

**view_customer_revenue_metrics:** A high-level dashboard that encapsulates `INNER JOIN`, `SUM`, `COUNT` and `GROUP BY` logic to show total customer spend at a glance.
**view_inactive_customers:** A retention-focused tool using `LEFT JOIN ` to instantly identify customers who haven't placed orders.
**Benefits:** This approach ensures `DRY (Don't Repeat Yourself)` principles, improves security, and provides a clean interface for data analysts.





## 🎯 Advanced Logic: Subqueries
To handle multi-step data retrieval, I implemented Subqueries (Nested Queries). This allows the database to perform dynamic calculations on the fly before returning the final result.

**Scalar Subqueries:** Used to compare individual records against aggregate values `(e.g., finding customers who spent more than the average)`.
**Multi-row Subqueries:** Used with the `IN` operator to filter data across related tables without complex join overhead.
**Logic Nesting:** Demonstrated the ability to nest queries three layers deep to bridge the gap between `Max Values` and `Customer Profiles.`




## 🪜 Logic Refactoring: Common Table Expressions (CTEs)
I moved from using Subqueries to CTEs. While subqueries are useful for quick calculations, they often lead to "Parenthesis Chaos" as the code grows, making it hard to read and debug.

*Why I switched to CTEs:*

**The Ladder Structure:** Unlike nested subqueries `(which work from the inside out)`, `CTEs` follow a `top-to-bottom "ladder"` logic. This makes the code much more readable.
**Sequential Steps:** I can define a temporary result set `(like a "Company Average")` in a `WITH` block and then use it immediately in my main query.
**Easier Maintenance:** If the business logic changes `(e.g., changing how we define a "Loyal Customer")`, I only need to update the logic in one specific `step` of the ladder rather than digging through layers of nested code.

*Key Learnings:*
🔺Using the `WITH` clause to create temporary result sets.
🔺Chaining multiple `CTEs` together to perform `"Double Aggregation" (e.g., finding the average of a count)`.
🔺Using `CROSS JOIN` to apply a single benchmark value to every row in a table.





## 🔍 The Magnifying Glass: Window Functions
I moved beyond "collapsing" data with GROUP BY and learned how to use Window Functions to perform complex calculations without losing individual row detail.

*Key Insight:* Window Functions allow us to compare an individual row's value against a group (like a category average) without using a JOIN.

**The `OVER()` Clause:** The backbone of the function. It defines the  `window` of data to look at.

**PARTITION BY:** Similar to `GROUP BY`, but it keeps all rows visible while `restarting` the calculation for each group.

**RANK():** Created dynamic leaderboards within categories.

**SUM() OVER():** Built running totals to track revenue accumulation over time.









## 📈 Future Roadmap
- [X] Implement **Advanced JOINs** to identify top-spending customers.
- [ ] Apply **Window Functions** for monthly sales trend analysis.
- [ ] Connect the SQL backend to a **Python/Pandas** environment for deeper visualization.


---
**Contact:** [Muzamil Mushtaq](https://www.linkedin.com/in/muzamilnaik/) 