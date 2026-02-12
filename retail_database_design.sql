/* ======================================================
   Retail Database Design - Corner Shop
   ====================================================== */


/* ==============================
   1. CUSTOMERS TABLE
   ============================== */

CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    dob VARCHAR(50),
    email_address VARCHAR(100),
    address VARCHAR(100),
    phone_number BIGINT
);


/* ==============================
   2. PRODUCTS TABLE
   ============================== */

CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    name VARCHAR(100),
    type VARCHAR(50),
    price DECIMAL(10,2),
    stock_quantity INT
);


/* ==============================
   3. LOYALTY ACCOUNTS TABLE
   ============================== */

CREATE TABLE Loyalty_Accounts (
    account_id INT PRIMARY KEY,
    customer_id INT,
    points_earned INT,
    points_redeemed INT,
    last_purchased DATE,
    FOREIGN KEY (customer_id)
        REFERENCES Customers(customer_id)
);


/* ==============================
   4. SALES TABLE
   ============================== */

CREATE TABLE Sales (
    sale_id INT PRIMARY KEY,
    account_id INT,
    transaction_date DATETIME,
    items_sold INT,
    total_cost DECIMAL(10,2),
    FOREIGN KEY (account_id)
        REFERENCES Loyalty_Accounts(account_id)
);


/* ==============================
   5. SUPPLIERS TABLE
   ============================== */

CREATE TABLE Suppliers (
    supplier_id INT PRIMARY KEY,
    cost_of_supplies DECIMAL(10,2),
    supplier_name VARCHAR(100),
    manufacturing_info VARCHAR(100),
    quantity INT
);


/* ==============================
   6. INVENTORY TABLE
   ============================== */

CREATE TABLE Inventory (
    product_id INT PRIMARY KEY,
    supplier_id INT,
    stock_quantity INT,
    reorder_level INT,
    FOREIGN KEY (product_id)
        REFERENCES Products(product_id),
    FOREIGN KEY (supplier_id)
        REFERENCES Suppliers(supplier_id)
);


/* ==============================
   EXAMPLE DATA INSERTION
   ============================== */

INSERT INTO Customers
(customer_id, first_name, last_name, dob, email_address, address, phone_number)
VALUES
(1, 'Swida','Saeed', '06-02-1997','swidasaeed@gmail.com',
'11 london rd, twickenham, TW12 3QT', 447923749392),
(2, 'Example','Customer', '06-02-1997','example@gmail.com',
'11 example rd, twickenham, TW12 3PL', 447923749392);


INSERT INTO Loyalty_Accounts
(account_id, customer_id, points_earned, points_redeemed, last_purchased)
VALUES
(1, 1, 1500, 1432, '2024-01-01'),
(2, 2, 333, 300, '2024-01-05');


/* ======================================================
   DATABASE RELATIONSHIPS
   ------------------------------------------------------
   - One Customer → Many Sales
   - One Customer → One Loyalty Account
   - One Product → One Inventory Record
   - One Supplier → Many Products
   ====================================================== */


/* ======================================================
   DATABASE MAINTENANCE NOTES
   ------------------------------------------------------
   - Daily backups of stock and product data
   - Real-time inventory updates
   - Daily report reviews
   - Automated daily incremental backups
   - Weekly full backups
   - Encrypted storage
   - User access controls
   - Use of Primary Keys and Foreign Keys to
     maintain data integrity
   ====================================================== */
