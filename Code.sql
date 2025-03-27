CREATE DATABASE Database project;
USE Database project;

CREATE TABLE customer
(
  id INT PRIMARY KEY identity(1,1),
  fname VARCHAR(50),
  lname VARCHAR(50),
  mobile INT
);

CREATE TABLE orders
(
  id INT PRIMARY KEY identity(1,1),
  date DATE,
  cus_id INT,
  FOREIGN KEY (cus_id) REFERENCES customer(id)
);

CREATE TABLE product
(
  id INT PRIMARY KEY identity(1,1),
  name VARCHAR(50),
  price INT
);

CREATE TABLE orders_details
(
  quantity INT,
  order_id INT,
  prod_id INT,
  PRIMARY KEY (order_id, prod_id),
  FOREIGN KEY (order_id) REFERENCES orders(id),
  FOREIGN KEY (prod_id) REFERENCES product(id)
);

INSERT INTO customer(fname, lname, mobile) VALUES ('ahmed', 'sayed', 01116278);
INSERT INTO customer(fname, lname, mobile) VALUES ('ahmed', 'ali', 011893039);

INSERT INTO product(name, price) VALUES ('product1', 32);
INSERT INTO product(name, price) VALUES ('product2', 33);

INSERT INTO orders(date, Cus_id) VALUES ('2020/11/28', 1);
INSERT INTO orders(date, Cus_id) VALUES ('2030/01/08', 2);

INSERT INTO orders_details(quantity, order_id, prod_id) VALUES (2, 1,2);

SELECT * FROM product;
SELECT * FROM orders;
SELECT * FROM customer;
SELECT * FROM orders_details;