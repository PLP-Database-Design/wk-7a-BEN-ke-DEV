## 📚 Assignment Questions

---

### Question 1 Achieving 1NF (First Normal Form) 🛠️
Task:
- You are given the following table **ProductDetail**:

| OrderID | CustomerName  | Products                        |
|---------|---------------|---------------------------------|
| 101     | John Doe      | Laptop, Mouse                   |
| 102     | Jane Smith    | Tablet, Keyboard, Mouse         |
| 103     | Emily Clark   | Phone                           |


- In the table above, the **Products column** contains multiple values, which violates **1NF**.
- **Write an SQL query** to transform this table into **1NF**, ensuring that each row represents a single product for an order

-- SEPARATE THE TABLES FOR PRODUCTS AND ORDERS
-- THIS WILL CREATE PRODUCTS TABLE TO STORE THE PRODUCT NAME AND ID
-- 
CREATE TABLE products{
    product ID INT,
    Productname VARCHAR(50)
}

-- THIS WILL CREATE ORDERPRODUCT TABLE TO STORE THE ORDER ID AND CUSTOMER NAME
-- 
CREATE TABLE orderproducts{
    order ID INT,
    product ID INT,
    customerName VARCHAR(50),
    productnamename VARCHAR(50),
    foreign key (product ID) references products(product ID),
}
 
--- 

### Question 2 Achieving 2NF (Second Normal Form) 🧩

- You are given the following table **OrderDetails**, which is already in **1NF** but still contains partial dependencies:

| OrderID | CustomerName  | Product      | Quantity |
|---------|---------------|--------------|----------|
| 101     | John Doe      | Laptop       | 2        |
| 101     | John Doe      | Mouse        | 1        |
| 102     | Jane Smith    | Tablet       | 3        |
| 102     | Jane Smith    | Keyboard     | 1        |
| 102     | Jane Smith    | Mouse        | 2        |
| 103     | Emily Clark   | Phone        | 1        |

- In the table above, the **CustomerName** column depends on **OrderID** (a partial dependency), which violates **2NF**. 

- Write an SQL query to transform this table into **2NF** by removing partial dependencies. Ensure that each non-key column fully depends on the entire primary key.]

-- SEPARATE THE TABLES FOR PRODUCTS AND ORDERS
CREATE TABLE orders{
    order ID INT,
    customerName VARCHAR(50),
    primary key (order ID)
}

-- THIS WILL CREATE ORDERITEMS TABLE TO STORE THE ORDER ID AND PRODUCT NAME
CREATE TABLE orderitems{
    order ID INT,
    product VARCHAR(50),
    quantity INT,
    foreign key (order ID) references orders(order ID),
}

---
Good luck 🚀