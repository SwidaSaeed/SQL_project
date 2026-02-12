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

A structured database was designed for a small retail shop including inventory, sales, and customer management.

## Tables Created

- Customers  
- Products  
- Loyalty_Accounts  
- Sales  
- Suppliers  
- Inventory  

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
# 🌍 Part 3: SQL Pratical-world_db Analysis 

Using the world_db dataset, multiple analytical scenarios were completed 

## Example Queries

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

###

