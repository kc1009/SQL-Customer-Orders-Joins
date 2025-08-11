# Task 5 – SQL Joins (Inner, Left, Right, Full)

## 📌 Objective
The goal of this task is to practice combining data from multiple tables using **INNER JOIN**, **LEFT JOIN**, **RIGHT JOIN**, and **FULL JOIN**.

---

## 🗂️ Database Details
**Database Name:** CustomerOrdersDB

**Tables Created:**
- **Customers** – Stores customer information
- **Orders** – Stores order details linked to customers

Relationship:
- Each order belongs to a customer (linked through `CustomerID`).

---

## 💻 SQL Code Summary
1. **Created Database and Tables**
2. **Inserted Sample Data** into Customers and Orders
3. **Applied JOIN operations**:
   - INNER JOIN
   - LEFT JOIN
   - RIGHT JOIN
   - FULL JOIN (using `UNION` in MySQL)

---
## 📖 Key Concepts Learned
- INNER JOIN returns only matching rows from both tables.
- LEFT JOIN returns all rows from the left table and matching rows from the right table.
- RIGHT JOIN returns all rows from the right table and matching rows from the left table.
- FULL JOIN returns all rows from both tables (in MySQL, simulated using UNION of LEFT and RIGHT JOIN).
- Joins can be used on more than two tables.
- FULL JOIN is useful for combining complete data sets, including unmatched rows.
- Joins can be nested for complex queries.
- Understanding relationships between tables is essential for effective joins.


---

## 🛠 Tools Used
- MySQL Workbench – For creating and executing SQL queries.
- GitHub – For storing and sharing project files.
- VS Code  – For writing README.md and SQL scripts.


