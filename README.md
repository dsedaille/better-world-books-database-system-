# better-world-books-database-system-
This command-line bookstore management and analytics application is built with Python, MySQL, and advanced SQL queries.
This project demonstrates relational database design, CRUD operations, stored procedures, advanced SQL reporting, OLAP operations, error handling, and transaction-oriented data analysis.

## OVERVIEW
The application demonstrates:
- CRUD operations
- Stored procedures
- Advanced SQL queries
- Common Table Expressions (CTEs)
- OLAP operations with ROLLUP
- Error handling and input validation
- Relational database modeling
- Python-to-MySQL integration
- Aggregate functions
- Subqueries and set operations
- Common Table Expressions (CTEs)

## Technologies Used
- Python
- MySQL
- SQL
- Relational Database Design
- Stored Procedures
- Aggregate Functions
- CTEs (WITH)
- OLAP (ROLLUP)
- Error Handling

# Features

## Customer Management
- View customers
- Add customers
- Update customer information
- Delete customers

## Book Management
- Manage inventory and pricing

## Reports
- Top Selling Books
- Customer Spending Summary
- Customers With No Orders
- Customers Who Have Placed Orders
- Sales by Category (ROLLUP)
- Books Never Ordered
- Customers With Above Average Spending
- Average Book Price by Category
- Books That Have Been Ordered
- Monthly Sales Summary
- Sales by Shipping Method and Status (ROLLUP)
- Books Priced Above Category Average

## Advanced SQL Concepts Demonstrated
- JOINs
- Aggregate Functions
- GROUP BY
- ORDER BY
- LIMIT
- EXISTS /

# User Needs and Use Cases
The Better World Books database was designed to support bookstore operations and sales analysis.

**User Needs**
- Manage customer information
- Maintain book inventory
- Process orders and order items
- Generate business reports and sales insights
- Maintain accurate relationships between entities

**Use Cases**
- Add and manage customers
- Manage books and inventory
- Track orders and purchases
- Analyze sales trends
- Identify inactive customers
- Monitor customer spending behavior

## Error Handling and Robustness
- The application includes
- Validation for invalid menu selections
- Input validation for numeric IDs
- Graceful handling of SQL execution errors
- Row existence checks before confirming updates/deletes
- Safe database connection closing
- Prepared statements to reduce SQL injection risk
