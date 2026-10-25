# Manufacturing and Production Management System

## Project Overview

The Manufacturing and Production Management System is a MySQL-based database project designed to manage manufacturing operations, production orders, material usage,
and quality checks.

 ## ER - Daigram
 https://github.com/user-attachments/assets/8c2ade88-2bcc-4ead-9ff1-c22ff2191eda
 The ER diagram represents the relationships between the seven main database tables: Suppliers, Materials, Products, Machines, Production_Orders, Material_Usage,
 and Quality_Checks.

## Objectives

- Manage supplier and material information.
- Maintain product and machine details.
- Track production orders and production quantities.
- Record material usage and quality inspection details.
- Analyze production performance using SQL queries.

## Key Features

- Organized relational database with primary and foreign keys.
- Data integrity using constraints.
- Production reports using JOIN operations.
- Data summarization using GROUP BY and HAVING.
- Subqueries for specific data analysis.
- Views for simplified report generation.
- Stored procedures for reusable queries.
- Triggers for validation and audit logging.

## Technologies Used

- MySQL
- SQL
- GitHub

## SQL Concepts Used

- Database and table creation
- INSERT, UPDATE, DELETE, and SELECT
- Primary keys and foreign keys
- UNIQUE and other constraints
- JOIN operations
- Aggregate functions
- GROUP BY and HAVING
- Subqueries
- Views
- Stored procedures
- Triggers

## Database Tables

1. Suppliers
2. Materials
3. Products
4. Machines
5. Production_Orders
6. Material_Usage
7. Quality_Checks

## Project Files

- `01_manufacturing_project.sql` — SQL project source code.
- `02_final_project_outputs.txt` — Executed SQL queries and outputs.
- `mysql USE manufacturing_db;.txt` — Additional MySQL project SQL/text file.

## How to Run

1. Install MySQL Server and MySQL Workbench, or use the MySQL command-line client.
2. Open the SQL source file.
3. Execute the SQL statements in the correct order.
4. Select the `manufacturing_db` database.
5. Run the queries and verify the outputs.

**Note:** Check the SQL file before running it on an existing database, especially if it contains table creation or data insertion statements.

## Learning Outcomes

- Practiced relational database design.
- Learned to write SQL queries for retrieving and analyzing data.
- Practiced joins, subqueries, views, stored procedures, and triggers.
- Learned to maintain project files using GitHub.

## Future Enhancements

- Build a dashboard for production analysis.
- Add more production performance reports.
- Connect the database to a Python application.

## Conclusion

-This project demonstrates how MySQL and SQL can be used to organize manufacturing data, track production activities, and generate useful reports.
