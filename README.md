# 🚀 DBT Snowflake Analytics Project

![dbt](https://img.shields.io/badge/dbt-Analytics%20Engineering-orange)
![Snowflake](https://img.shields.io/badge/Snowflake-Data%20Warehouse-blue)
![SQL](https://img.shields.io/badge/SQL-Data%20Transformation-green)
![GitHub](https://img.shields.io/badge/GitHub-Version%20Control-black)

## 📌 Project Overview

This project demonstrates an end-to-end Analytics Engineering workflow using **dbt (Data Build Tool)** and **Snowflake**.

The objective of this project is to transform raw data into analytics-ready datasets by implementing modern data transformation practices, testing, documentation, and lineage tracking.

The project follows industry-standard layered architecture:

* Raw Data Sources
* Staging Layer
* Fact Layer
* Dimension Layer
* Analytical Queries
* Data Quality Testing
* Documentation & Lineage

---

# 🏗️ Architecture

```text
RAW SOURCES
(Customer, Orders, Payment)
            │
            ▼
     Source Definitions
            │
            ▼
      Staging Models
 ┌─────────────────────┐
 │  stg_customers      │
 │  stg_orders         │
 │  stg_payment        │
 └─────────────────────┘
            │
            ▼
       Fact Layer
 ┌─────────────────────┐
 │    fact_orders      │
 └─────────────────────┘
            │
            ▼
    Dimension Layer
 ┌─────────────────────┐
 │   dim_costomers     │
 └─────────────────────┘
            │
            ▼
     Analytics Layer
 ┌─────────────────────┐
 │ orders_by_day       │
 │ total_revenue       │
 └─────────────────────┘
            │
            ▼
   Documentation & DAG
```

---

# 🛠️ Tech Stack

| Technology | Purpose                |
| ---------- | ---------------------- |
| dbt        | Data Transformation    |
| Snowflake  | Cloud Data Warehouse   |
| SQL        | Data Modeling          |
| Jinja      | Dynamic SQL Generation |
| Git        | Version Control        |
| GitHub     | Repository Hosting     |

---

# 📂 Project Structure

```text
dbt-snowflake-analytics-project/

├── analyses/
│   ├── orders_by_day.sql
│   └── total_revenue.sql
│
├── macros/
│
├── models/
│   ├── staging/
│   │   ├── jaffle_shop/
│   │   │   ├── stg_customers.sql
│   │   │   ├── stg_orders.sql
│   │   │   └── src_jaffle_shop.yml
│   │   │
│   │   └── stripe/
│   │       └── stg_payment.sql
│   │
│   └── marts/
│       └── core/
│           ├── fact_orders.sql
│           └── dim_costomers.sql
│
├── seeds/
│
├── snapshots/
│
├── tests/
│   └── assert_positive_total_for_payment.sql
│
├── dbt_project.yml
└── README.md
```

---

# 🔄 Data Flow

### Step 1: Raw Sources

Data is loaded into Snowflake tables:

* CUSTOMER
* ORDERS
* PAYMENT

### Step 2: Source Layer

Source definitions are configured using:

```sql
{{ source('jaffle_shop','CUSTOMER') }}
```

---

### Step 3: Staging Layer

Data is cleaned and standardized.

Models:

* stg_customers
* stg_orders
* stg_payment

---

### Step 4: Fact Layer

Business transactions are modeled in:

```text
fact_orders
```

---

### Step 5: Dimension Layer

Customer-level metrics are built in:

```text
dim_costomers
```

Including:

* First Order Date
* Most Recent Order Date
* Number of Orders
* Lifetime Value

---

# 📊 Models

| Model         | Layer     | Purpose                      |
| ------------- | --------- | ---------------------------- |
| stg_customers | Staging   | Standardize customer data    |
| stg_orders    | Staging   | Standardize order data       |
| stg_payment   | Staging   | Standardize payment data     |
| fact_orders   | Fact      | Order transaction facts      |
| dim_costomers | Dimension | Customer analytics dimension |

---

# 🧪 Data Quality Testing

Implemented dbt tests:

### Generic Tests

```yaml
tests:
  - not_null
  - unique
  - accepted_values
```

### Custom Singular Test

```sql
assert_positive_total_for_payment.sql
```

Ensures:

* No negative payment amounts
* Reliable business metrics
* Better data quality

---

# 📖 Documentation & Lineage

Generated using:

```bash
dbt docs generate
dbt docs serve
```

Features:

✅ Model Documentation

✅ Column Documentation

✅ Source Documentation

✅ Data Lineage Graph

✅ Dependency Tracking

✅ Test Visibility

---

# ⚡ dbt Commands Cheat Sheet

### Validate Configuration

```bash
dbt debug
```

### Run Models

```bash
dbt run
```

### Execute Tests

```bash
dbt test
```

### Generate Documentation

```bash
dbt docs generate
```

### Open Documentation

```bash
dbt docs serve
```

### List Project Resources

```bash
dbt ls
```

### Compile SQL

```bash
dbt compile
```

---

# 📸 Project Screenshots

## Snowflake Integration

(Add Screenshot Here)

---

## dbt Documentation

(Add Screenshot Here)

---

## Data Lineage Graph

(Add Screenshot Here)

---

## Model Execution

(Add Screenshot Here)

---

# 🎯 Key Concepts Learned

This project helped me gain practical experience with:

* Analytics Engineering
* dbt Project Structure
* Data Modeling
* Source Definitions
* Model Dependencies
* Ref Function
* Data Lineage
* Documentation
* Data Quality Testing
* Snowflake Integration
* Jinja Templating
* Fact & Dimension Modeling

---

# 💼 Business Value

This project demonstrates how modern organizations:

* Transform raw warehouse data
* Create reusable analytics models
* Maintain data quality
* Build trustworthy reporting layers
* Document transformations
* Improve data governance

---

# 🚀 Future Enhancements

Planned upgrades:

* AWS S3 Integration
* Snowpipe Automation
* Incremental Models
* Advanced Jinja Macros
* dbt-utils Package
* CI/CD Pipelines
* GitHub Actions
* Power BI Dashboard
* Netflix Analytics Engineering Project
* Production Deployment Workflow

---

# ⚙️ Installation & Setup

Clone Repository

```bash
git clone https://github.com/data-analyst-harsh-soni/dbt-snowflake-analytics-project.git
```

Navigate to Project

```bash
cd dbt-snowflake-analytics-project
```

Install dbt

```bash
pip install dbt-snowflake
```

Configure Snowflake Profile

```yaml
profiles.yml
```

Run Project

```bash
dbt run
```

Execute Tests

```bash
dbt test
```

Generate Docs

```bash
dbt docs generate
dbt docs serve
```

---

# 👨‍💻 About Me

### Harsh Soni

Aspiring Data Analyst | Future Analytics Engineer

### Skills

* SQL
* Python
* Power BI
* Excel
* Snowflake
* dbt

### GitHub

https://github.com/data-analyst-harsh-soni

### LinkedIn

https://www.linkedin.com/in/harsh-soni-data-analyst

---

# ⭐ If You Like This Project

Please consider giving the repository a ⭐ on GitHub.

It motivates me to continue building Data Engineering and Analytics Engineering projects.

---

## 📬 Connect With Me

Feel free to connect for discussions on:

* Data Analytics
* Analytics Engineering
* dbt
* Snowflake
* SQL
* Power BI
* Data Warehousing

Thank you for visiting this repository! 🚀
