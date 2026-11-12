# Olist E-Commerce Multi-Table Analytics

An end-to-end data analytics project using the Brazilian Olist E-Commerce dataset. This project uses **Python, Pandas, MySQL, SQL, and Power BI** to explore, clean, transform, analyze, and visualize e-commerce data through four interactive business dashboards.

![Python](https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=white)
![Pandas](https://img.shields.io/badge/Pandas-150458?style=for-the-badge&logo=pandas&logoColor=white)
![MySQL](https://img.shields.io/badge/MySQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white)
![Power BI](https://img.shields.io/badge/Power_BI-F2C811?style=for-the-badge&logo=powerbi&logoColor=black)
![SQL](https://img.shields.io/badge/SQL-025E8C?style=for-the-badge&logo=database&logoColor=white)

---

## 📌 Table of Contents

- [Project Overview](#-project-overview)
- [Business Problem](#-business-problem)
- [Project Objectives](#-project-objectives)
- [Tools and Technologies](#-tools-and-technologies)
- [Dataset](#-dataset)
- [Project Workflow](#-project-workflow)
- [Repository Structure](#-repository-structure)
- [SQL Business Analysis](#-sql-business-analysis)
- [Power BI Dashboards](#-power-bi-dashboards)
- [Key Business Insights](#-key-business-insights)
- [How to Run the Project](#-how-to-run-the-project)
- [Important KPI Definitions](#-important-kpi-definitions)
- [Future Improvements](#-future-improvements)
- [Author](#-author)

---

## 📊 Project Overview

Olist is a Brazilian e-commerce marketplace that connects sellers with customers.

This project analyzes multiple related datasets from the Olist marketplace to understand business performance across sales, products, customers, sellers, payments, reviews, and deliveries.

The project follows a complete data analytics lifecycle:

1. Data Exploration using Python.
2. Data Cleaning and Transformation using Pandas.
3. Data Validation and Quality Checks.
4. Database Creation and Data Modelling using MySQL.
5. Business Analysis using SQL Queries.
6. Data Visualization and Dashboard Development using Power BI.

The final outcome is a collection of four interactive dashboards designed to convert raw transactional data into meaningful business insights.

## 🎯 Business Problem

E-commerce businesses generate large amounts of data across multiple departments, including sales, customers, products, sellers, payments, and logistics.

However, analyzing these datasets separately makes it difficult to understand overall business performance and identify operational problems.

This project aims to answer important business questions:

- How much revenue is the business generating?
- Which products and categories contribute the most to revenue?
- Which sellers generate the highest sales?
- Where are customers located?
- How many customers make repeat purchases?
- What are the customer spending patterns?
- Which payment methods are most commonly used?
- How many orders are delivered late?
- Which states experience the highest number of late deliveries?

The project integrates multiple datasets to provide a consolidated view of business performance and support data-driven decision-making.

## 🎯 Project Objectives

- Perform exploratory data analysis on multiple datasets.
- Identify missing values, duplicate records, and inconsistent data.
- Clean and transform datasets using Python and Pandas.
- Validate cleaned datasets before database loading.
- Design a relational database using MySQL.
- Create primary keys, foreign keys, and indexes.
- Perform business analysis using SQL queries.
- Develop meaningful KPIs and DAX measures.
- Build interactive Power BI dashboards.
- Generate actionable business insights and recommendations.

## 🛠️ Tools and Technologies

| Technology       | Purpose                                     |
| ---------------- | ------------------------------------------- |
| Python           | Data exploration and preparation            |
| Pandas           | Data cleaning and transformation            |
| Jupyter Notebook | Data analysis workflow                      |
| MySQL            | Database creation and data modelling        |
| MySQL Workbench  | SQL query execution and database management |
| SQL              | Business analysis and data extraction       |
| Power BI Desktop | Interactive dashboard development           |
| DAX              | KPI calculations and analytical measures    |
| Git & GitHub     | Version control and project documentation   |

## 📁 Dataset

**Dataset:** Brazilian E-Commerce Public Dataset by Olist

Source: [Kaggle – Brazilian E-Commerce Public Dataset](https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce)

The project uses multiple interconnected datasets:

| Dataset              | Description                                   |
| -------------------- | --------------------------------------------- |
| Customers            | Customer IDs, cities, and states              |
| Orders               | Order status and purchase/delivery timestamps |
| Order Items          | Products, sellers, prices, and freight        |
| Order Payments       | Payment types, values, and installments       |
| Order Reviews        | Customer ratings and review information       |
| Products             | Product attributes and categories             |
| Sellers              | Seller information and locations              |
| Geolocation          | Brazilian geographic coordinates              |
| Category Translation | Portuguese-to-English category names          |

These datasets were cleaned, validated, and imported into a MySQL database for further analysis.

## 🔄 Project Workflow

### 1. Data Exploration

- Imported and inspected multiple CSV datasets.
- Examined dataset dimensions, columns, and data types.
- Identified missing values and duplicate records.
- Analyzed numerical and categorical columns.
- Understood relationships between different datasets.

### 2. Data Cleaning Using Python

Used Python and Pandas to:

- Handle missing and inconsistent values.
- Identify and remove duplicate records where appropriate.
- Correct data types.
- Clean categorical columns.
- Standardize selected values.
- Validate important columns.
- Export cleaned datasets for MySQL import.

### 3. Data Validation

- Verified row counts after cleaning.
- Checked missing and duplicate values.
- Validated important identifiers.
- Checked relationships between tables.
- Investigated data import mismatches.

### 4. Database Creation and Data Modelling

Using MySQL Workbench:

- Created the `olist_ecommerce` database.
- Imported cleaned datasets.
- Identified primary keys.
- Created foreign-key relationships.
- Added indexes for frequently used columns.
- Validated database relationships.

### 5. SQL Business Analysis

Performed business analysis using:

- SELECT statements
- WHERE conditions
- GROUP BY and ORDER BY
- Aggregate functions
- INNER JOIN and LEFT JOIN
- Subqueries
- CASE statements
- COUNT, SUM, AVG, and ROUND
- DISTINCT
- Ranking and filtering

### 6. Power BI Dashboard Development

- Connected Power BI to MySQL.
- Imported the required tables.
- Established table relationships.
- Created calculated columns and DAX measures.
- Designed four interactive dashboards.
- Added KPI cards, charts, and slicers.
- Applied consistent dashboard formatting and themes.

---

## 📂 Repository Structure

```text
E-Commerce-Multi-Table-Olist/
│
├── Dashboard Images/
│   ├── Customer Analysis Dashboard.png
│   ├── Delivery & Payment Analysis Dashboard.png
│   ├── Product & Category Dashboard.png
│   └── Sales Dashboard.png
│
├── Data/
│   ├── Raw/
│   └── Cleaned/
│
├── Documentation/
│
├── Notebooks/
│   ├── Data Exploration.ipynb
│   └── Data Cleaning.ipynb
│
├── PowerBI/
│   └── Olist E-Commerce Analytics.pbix
│
├── SQL/
│   ├── 01_Data Exploration.sql
│   ├── 02_Data Modelling.sql
│   └── 03_Business_Analysis.sql
│
└── README.md
```

---

## 🗄️ SQL Business Analysis

The SQL analysis covers 25 business questions across different areas of the e-commerce business.

### Sales Analysis

- Calculate total revenue.
- Analyze monthly revenue trends.
- Identify highest and lowest revenue months.
- Calculate Average Order Value (AOV).

### Product Analysis

- Identify the top 10 best-selling products.
- Find top 10 product categories by revenue.
- Analyze product categories by order count.
- Identify categories with the lowest revenue.

### Customer Analysis

- Calculate total unique customers.
- Identify repeat customers.
- Analyze average customer spending.
- Find customer distribution by state.

### Order and Delivery Analysis

- Analyze order-status distribution.
- Calculate order-status percentages.
- Calculate average delivery time.
- Identify late-delivery orders.
- Analyze monthly order volume.

### Payment Analysis

- Analyze payment-method frequency.
- Calculate average payment by payment type.
- Calculate payment-method revenue contribution.

### Seller and Review Analysis

- Identify top sellers by revenue.
- Identify top sellers by order count.
- Calculate average review score.
- Identify lowest-rated product categories.
- Calculate state-wise average order value.

---

# 📈 Power BI Dashboards

The project contains four interactive Power BI dashboard pages.

## 1. Sales Overview Dashboard

**Objective:** Analyze overall business performance, revenue generation, order volume, and regional sales contribution.

### KPIs

- Total Revenue
- Total Orders
- Average Order Value
- Total Customers

### Visualizations

- Monthly Revenue Trend
- Order Status Distribution
- Revenue by State – Top 5
- Top 5 Product Categories by Revenue
- Average Customer Review Score

### Business Questions Answered

- What is the overall revenue generated?
- How does revenue change over time?
- Which states generate the highest revenue?
- Which product categories contribute most to sales?
- What is the average customer review score?

![Sales Dashboard](Dashboard%20Images/Sales%20Dashboard.png)

---

## 2. Product & Category Analysis Dashboard

**Objective:** Understand product performance, category revenue contribution, seller performance, and pricing patterns.

### KPIs

- Total Product Sales
- Total Products
- Total Sellers
- Total Categories

### Visualizations

- Top 10 Product Categories by Revenue
- Top 10 Best-Selling Products
- Top 10 Sellers by Revenue
- Average Product Price by Category
- Product Category Price vs. Revenue
- Revenue Contribution by Category

### Business Questions Answered

- Which product categories generate the highest revenue?
- Which products are sold most frequently?
- Which sellers generate the highest revenue?
- How do product prices vary across categories?
- Is there a relationship between average product price and revenue?

![Product Category Dashboard](Dashboard%20Images/Product%20%26%20Category%20Dashboard.png)

---

## 3. Customer Analysis Dashboard

**Objective:** Analyze customer behavior, customer loyalty, spending patterns, and geographic distribution.

### KPIs

- Total Unique Customers
- Repeat Customers
- Repeat Customer Rate
- One-Time Customers

### Visualizations

- One-Time vs. Repeat Customers
- Top 10 States by Customer Count
- Monthly Active Customers Trend
- Customer Spending Distribution
- Average Spending by State
- Customer Purchase Frequency Distribution

### Business Questions Answered

- How many unique customers have purchased?
- What percentage of customers make repeat purchases?
- Which states have the largest customer base?
- How much do customers spend?
- How frequently do customers place orders?
- What opportunities exist to improve customer retention?

![Customer Analysis Dashboard](Dashboard%20Images/Customer%20Analysis%20Dashboard.png)

---

## 4. Delivery & Payment Analysis Dashboard

**Objective:** Evaluate delivery performance and understand customer payment preferences.

### KPIs

- On-Time Delivery Rate
- Total Payment Value
- Average Payment per Order
- Late Delivery Orders

### Visualizations

- Order Status Distribution
- Payment Method Distribution
- Top 10 States by Late Delivery Orders
- Revenue by Payment Method
- Average Payment Value by Payment Method
- Payment Installment Distribution
- Payment Value by Installment Count

### Business Questions Answered

- What percentage of orders are delivered on time?
- How many orders are delivered late?
- Which states have the highest late-delivery counts?
- Which payment methods contribute the most revenue?
- What is the average payment value by payment method?
- How do customers use installment options?

![Delivery and Payment Dashboard](Dashboard%20Images/Delivery%20%26%20Payment%20Analysis%20Dashboard.png)

---

## 💡 Key Business Insights

The dashboard analysis highlights several important findings:

### 1. Sales Performance

- Total revenue is approximately R$16.01 million.
- Average Order Value is approximately R$160.99.
- São Paulo is the leading state by revenue.
- A small group of product categories contributes significantly to overall product sales.

### 2. Product Performance

- The dataset contains approximately 33K products and 74 product categories.
- Categories such as beleza_saude, relogios_presentes, cama_mesa_banho, esporte_lazer, and informatica_acessorios are among the leading revenue contributors.
- Product and seller rankings help identify important contributors to marketplace sales.

### 3. Customer Behavior

- The dashboard displays approximately 96K unique customers.
- Repeat customers represent approximately 3% of the displayed customer base.
- One-time customers account for approximately 97%.
- This indicates an opportunity to improve customer retention through loyalty programs, personalized offers, and customer engagement.

### 4. Delivery Performance

- The On-Time Delivery Rate KPI displays approximately 92%.
- The dashboard identifies approximately 7.827K late-delivery orders.
- São Paulo has the highest late-delivery count, followed by RJ and MG.
- Delivery performance should be investigated by considering both late-order counts and total order volume.

### 5. Payment Behavior

- Credit cards contribute the largest share of payment value.
- Boleto is the second-largest payment method by value.
- Most payment records are concentrated in one installment.
- Average payment value differs across payment methods.

_Note: These are descriptive dashboard findings. They identify patterns and opportunities for further investigation rather than proving causation._

---

## 🚀 How to Run the Project

### Prerequisites

Install the following:

- Python 3
- Jupyter Notebook
- Pandas
- MySQL Server
- MySQL Workbench
- Power BI Desktop

### Step 1: Download the Dataset

Download the Olist dataset from Kaggle:

[Download Olist Dataset](https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce)

Place the original CSV files inside the `Data/Raw/` folder.

### Step 2: Run Python Notebooks

Open the `Notebooks/` folder and execute:

1. `Data Exploration.ipynb`
2. `Data Cleaning.ipynb`

Run the notebook cells in sequence and verify that the cleaned CSV files are exported to the appropriate folder.

### Step 3: Set Up MySQL

1. Open MySQL Workbench.
2. Create the `olist_ecommerce` database.
3. Execute the SQL scripts in the `SQL/` folder.
4. Import the cleaned datasets.
5. Verify primary keys and foreign keys.
6. Execute the business-analysis queries.

Update file paths and database connection settings according to your local environment.

### Step 4: Open Power BI

1. Open `Olist E-Commerce Analytics.pbix` from the `PowerBI/` folder.
2. Configure the MySQL connection if required.
3. Refresh the data.
4. Verify relationships and measures.
5. Explore all four interactive dashboard pages.

---

## 📌 Important KPI Definitions

| KPI                       | Definition                                                                                              |
| ------------------------- | ------------------------------------------------------------------------------------------------------- |
| Total Revenue             | Sum of payment values                                                                                   |
| Total Product Sales       | Sum of product item prices                                                                              |
| Average Order Value       | Average payment value per distinct order                                                                |
| Total Unique Customers    | Distinct customer_unique_id                                                                             |
| Repeat Customers          | Unique customers with more than one order                                                               |
| Repeat Customer Rate      | Repeat customers divided by total unique customers                                                      |
| On-Time Delivery Rate     | Delivered orders arriving on or before the estimated delivery date divided by eligible delivered orders |
| Late Delivery Orders      | Delivered orders arriving after the estimated delivery date                                             |
| Average Payment per Order | Total payment value divided by distinct payment order IDs                                               |

**Important:** Total Payment Value and Total Product Sales are different measures. Payment value may include freight and other payment components, so the two totals are not expected to be identical.

## 🔮 Future Improvements

- Develop a dedicated date table for advanced time intelligence.
- Add late-delivery percentages by state.
- Improve customer retention analysis with customer cohorts.
- Investigate incomplete periods in monthly trends.
- Add deeper seller and product drill-through analysis.
- Automate data-quality checks.
- Develop additional forecasting and customer segmentation analysis.

---

## 👨‍💻 Author

**Akshat Pandey**

Computer Science Engineering | Data Analytics

**Skills Demonstrated:** Python • Pandas • SQL • MySQL • Power BI • DAX • Data Cleaning • Data Modelling • Data Visualization • Business Analysis

---

⭐ If you find this project useful, feel free to explore the notebooks, SQL scripts, and Power BI dashboards.
