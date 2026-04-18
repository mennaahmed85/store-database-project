CREATE DATABASE StoreDB;
USE StoreDB;

create table Category (
  category_id INT ,
  category_name NVARCHAR(100)

  PRIMARY KEY(category_id)
);

create table Product (
  product_id INT  ,
  category_id INT ,
  name NVARCHAR (100),
  description NVARCHAR (200),
  price DECIMAL(10,2),
  stock_quantity INT,

  PRIMARY KEY(product_id),
  FOREIGN KEY(category_id) REFERENCES Category(category_id)
);

create table Customer (
  customer_id INT,
  first_name NVARCHAR(100),
  last_name NVARCHAR(100),
  email NVARCHAR(100) UNIQUE,
  password NVARCHAR(100),

  PRIMARY KEY (customer_id)
);

create table Orders (
  order_id INT,
  customer_id INT,
  order_date DATE,
  total_amount DECIMAL(10,2),

  PRIMARY KEY(order_id),
  FOREIGN KEY(customer_id) REFERENCES Customer(customer_id)
);

create table Order_details (
  order_detail_id INT,
  order_id INT,
  product_id INT,
  quantity INT,
  unit_price DECIMAL(10,2),

  PRIMARY KEY(order_detail_id),
  FOREIGN KEY(order_id) REFERENCES Orders(order_id),
  FOREIGN KEY(product_id) REFERENCES Product(product_id),
);