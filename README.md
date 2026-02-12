# 🗄️ SQL Database Design & Query Analysis

**Author:** Swida Saeed  
**Project Type:** Database Design & SQL Practical  
**Database Used:** world_db  

---

## 📌 Project Overview

This project demonstrates foundational database design concepts and advanced SQL querying using the `world_db` dataset.

The project includes:

- Database schema design for a retail business
- Primary & foreign key relationships
- SQL JOIN operations
- Practical SQL query analysis
- Population and demographic data analysis

---

# 🧠 Part 1: Database Concepts

## Key Topics Covered

- Primary Keys vs Secondary Keys  
- Foreign Key relationships  
- One-to-One, One-to-Many, Many-to-Many relationships  
- Relational vs Non-relational databases  
- SQL JOIN types:
  - INNER JOIN
  - LEFT JOIN
  - RIGHT JOIN
  - FULL JOIN
  - SELF JOIN
  - CROSS JOIN  

---

# 🏪 Part 2: Retail Database Design

## 📌 Project Overview

A relational database was designed for a small retail business (corner shop) to manage:

- Inventory  
- Sales  
- Customer information  
- Loyalty programme  
- Suppliers  

The system supports shop staff, managers, and the business owner.

---
## 👥 Users of the Database

### Shop Staff
- Process sales  
- Check product prices  
- Update stock levels  
- Register customers for the loyalty programme  

### Managers
- Monitor inventory levels  
- Generate sales reports and KPIs  
- Manage loyalty rewards  
- Order new stock  

### Business Owner
- Analyse overall business performance  
- Track customer spending patterns  
- Identify popular products  
- Make decisions about pricing, promotions, and stock management  

---
## 🗂 Tables Created

<table>
<tr>
<td width="33%" valign="top">

### Customers
- `customer_id` (Primary Key)  
- `first_name`  
- `last_name`  
- `dob`  
- `email_address`  
- `address`  
- `phone_number`  

</td>

<td width="33%" valign="top">

### Products
- `product_id` (Primary Key)  
- `name`  
- `type`  
- `price`  
- `stock_quantity`  

</td>

<td width="33%" valign="top">

### Loyalty_Accounts
- `account_id` (Primary Key)  
- `customer_id` (Foreign Key)  
- `points_earned`  
- `points_redeemed`  
- `last_purchased`  

</td>
</tr>

<tr>
<td width="33%" valign="top">

### Sales
- `sale_id` (Primary Key)  
- `account_id` (Foreign Key)  
- `transaction_date`  
- `items_sold`  
- `total_cost`  

</td>

<td width="33%" valign="top">

### Suppliers
- `supplier_id` (Primary Key)  
- `cost_of_supplies`  
- `supplier_name`  
- `manufacturing_info`  
- `quantity`  

</td>

<td width="33%" valign="top">

### Inventory
- `product_id` (Primary Key)  
- `supplier_id` (Foreign Key)  
- `stock_quantity`  
- `reorder_level`  

</td>
</tr>
</table>

## 🔗 Relationships Between Tables

- One Customer → Many Sales  
- One Customer → One Loyalty Account  
- One Product → Many Sales  
- One Supplier → Many Products  
- One Product → One Inventory Record  

## Example SQL Table Creation

```sql
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    dob DATE,
    email_address VARCHAR(100),
    address VARCHAR(100),
    phone_number BIGINT
);
```
## Example SQL Insert statement 

```sql
INSERT INTO Customers
(customer_id, first_name, last_name, dob, email_address, address, phone_number)
VALUES
(1, 'Swida','Saeed', '1997-02-06','example@email.com',
'London, UK', 447900000000);
```
**The SQL queries are available in the repository under retail_database_design.sql file**
# 🌍 Part 3: SQL Pratical-world_db Analysis 

Using the world_db dataset, multiple analytical scenarios were completed 

## World_db ER Diagram
![Alt text](images/world_database_er.png)


## Example Queries

You can get access to more queries with the world_db_analysis.sql file. 

### Count cities in USA

```sql
SELECT COUNT(*) AS total_cities
FROM city
WHERE CountryCode = 'USA';
```
### Cities with Population greater than 2million

```sql
SELECT *
FROM city
WHERE Population > 2000000;
```
### European Cities (JOIN example)
```sql
SELECT country.Name AS Country,
       country.Capital AS Code,
       city.Name AS City
FROM city
INNER JOIN country
ON country.Capital = city.ID
WHERE country.Continent = 'Europe';
```

### City Name frequency Analysis 

```sql

SELECT name, COUNT(Name) AS city_frequency
FROM city
GROUP BY name
ORDER BY name ASC;
```

### Capital of spain 

```sql

SELECT country.Name AS Country,
       country.Capital AS Code,
       city.Name AS City
FROM city
INNER JOIN country
ON country.Capital = city.ID
WHERE country.Code = 'ESP';

```
# 📊 Analytical Skills Demonstrated

-Aggregation (COUNT, GROUP BY, AVG)

-Filtering (WHERE, LIKE, BETWEEN)

-Sorting (ORDER BY)

-Limiting results (LIMIT)

-Table relationships using JOIN

-Population analysis

-Demographic comparisons

# 🔐 Database Maintenance & Security Considerations

-Primary key constraints

-Foreign key relationships

-NOT NULL constraints

-Data validation

-Backup planning

-Access control

-Data encryption awareness

# 🎯 Skills Demonstrated

-Relational database design

-SQL query writing

-Data modelling

-Analytical problem solving

-Translating business scenarios into SQL queries

-Data integrity & security awareness

