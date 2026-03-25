#  Subscription Management System (MySQL)

##  Overview

This project is a MySQL-based Subscription Management System designed to manage and analyze user subscriptions such as OTT platforms, music services, and fitness memberships. It demonstrates real-world database design, normalization, and analytical SQL queries.

---

##  Features

* Manage user subscriptions and plans
* Track payments and billing cycles
* Categorize subscriptions (OTT, Music, Fitness, etc.)
* Monitor active vs cancelled subscriptions
* Set renewal reminders
* Budget tracking for users
* Analytical queries for spending insights

---

##  Database Design

### Tables:

* **users** → stores user details
* **categories** → stores subscription categories (normalized)
* **subscriptions** → main table linking users and services
* **plans** → pricing and billing cycle details
* **payments** → transaction history
* **reminders** → renewal alerts
* **budgets** → user spending limits

---

##  Relationships

* One user → many subscriptions
* One category → many subscriptions
* One subscription → one plan
* One subscription → many payments
* One subscription → many reminders

---

##  Key SQL Queries

* Total spending per user
* Category-wise spending
* Most expensive subscription
* Upcoming renewals
* Active vs cancelled subscriptions
* Budget vs actual spending

---

##  Technologies Used

* MySQL
* SQL (Joins, Aggregations, Constraints)

---

##  How to Run

1. Run `01_schema.sql` to create tables
2. Run `02_seed_data.sql` to insert data
3. Execute queries from `03_queries.sql`

---

##  Key Learnings

* Database normalization
* Designing relational schemas
* Writing complex SQL queries
* Handling real-world data scenarios

---

