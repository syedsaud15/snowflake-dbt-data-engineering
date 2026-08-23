# ❄️ Snowflake dbt Data Engineering

> **Enterprise Analytics Engineering project** demonstrating ELT pipelines, dimensional modeling, reusable dbt macros, automated testing, and Snowflake-ready SQL transformations.

![Snowflake](https://img.shields.io/badge/Snowflake-Cloud_Data-blue?style=for-the-badge\&logo=snowflake)
![dbt](https://img.shields.io/badge/dbt-Analytics_Engineering-orange?style=for-the-badge\&logo=dbt)
![SQL](https://img.shields.io/badge/SQL-ELT-success?style=for-the-badge\&logo=postgresql)
![Testing](https://img.shields.io/badge/dbt-Tests-red?style=for-the-badge)

---

# 📖 Executive Summary

This project showcases an **ELT (Extract → Load → Transform)** workflow using **dbt** for Analytics Engineering. Instead of transforming data before loading, raw data is modeled directly inside the warehouse using SQL, reusable macros, and automated quality tests.

The repository follows production-inspired dbt project standards including staging models, dimensional modeling, schema testing, and documentation-ready architecture.

---

# 🏗️ Analytics Engineering Architecture

```text
                Raw Source Tables
         (Students • Courses • Records)
                        │
                        ▼
              Snowflake Data Warehouse
                        │
                dbt Staging Models
                        │
         Data Cleaning & Standardization
                        ▼
          Fact + Dimension Models
                        │
          Automated Schema Testing
                        │
                        ▼
           Analytics Ready Dataset
```

---

# ⚙️ Technology Stack

| Layer          | Technology  |
| -------------- | ----------- |
| Data Warehouse | Snowflake   |
| Transformation | dbt         |
| Language       | SQL         |
| Testing        | dbt Tests   |
| Modeling       | Star Schema |
| Documentation  | YAML Schema |

---

# 📂 Repository Structure

```text
snowflake-dbt-data-engineering/
│
├── models/
│   ├── staging/
│   ├── example/
│   └── joined_data.sql
│
├── macros/
│   └── greet.sql
│
├── tests/
│   └── student_id_not_null.sql
│
├── seeds/
├── snapshots/
├── analyses/
├── dbt_project.yml
└── README.md
```

---

# 🔄 ELT Workflow

```text
CSV / Source Data
        │
        ▼
 Snowflake Warehouse
        │
        ▼
  dbt Staging Models
        │
        ▼
 Business Transformations
        │
        ▼
 Fact & Dimension Tables
        │
        ▼
 Data Quality Tests
        │
        ▼
 Trusted Analytics Layer
```

---

# 🧩 Data Models

### Staging Layer

* Student data standardization
* Course data preparation
* Clean source models

### Core Models

* Joined analytical dataset
* Fact student-course relationship
* Business-ready SQL models

### Testing Layer

* Not Null validation
* Schema consistency
* Data quality verification

---

# ✨ Key Engineering Features

* ELT architecture with dbt
* Modular SQL transformations
* Reusable dbt macros
* YAML schema documentation
* Automated data testing
* Star schema preparation
* Snowflake-ready project design

---

# 🧪 Example dbt Commands

```bash
dbt run
dbt test
dbt docs generate
dbt docs serve
```

---

# 📊 Engineering Concepts Demonstrated

| Concept         | Implementation |
| --------------- | -------------- |
| ELT Pipeline    | dbt Models     |
| Data Warehouse  | Snowflake      |
| SQL Modeling    | Staging + Core |
| Reusability     | Macros         |
| Data Validation | dbt Tests      |
| Documentation   | YAML Schema    |

---

# 🎯 Learning Outcomes

This project demonstrates practical experience with:

* Snowflake Analytics Engineering
* dbt project structure
* SQL transformation pipelines
* Data quality testing
* Modular warehouse modeling
* Enterprise ELT workflow

---

# 👨‍💻 Author

**Syed Saud Alam**

*Data Engineering • Snowflake • dbt • Analytics Engineering*
