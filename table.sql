 --Product table
CREATE TABLE  Product (
  product_id VARCHAR2(20) CONSTRAINT pk_product PRIMARY KEY,
  product_Name VARCHAR2(20) CONSTRAINT nl_product NOT NULL ,
  price NUMBER CONSTRAINT positive_price  CHECK (price > 0)
) 
--we can also set product table like this
/*CREATE TABLE  Product (
  product_id VARCHAR2(20)  PRIMARY KEY,
  product_Name VARCHAR2(20)  NOT NULL ,
  price NUMBER   CHECK (price > 0)
) */
--Customer table
CREATE TABLE Customer (
    customer_id VARCHAR2(20) CONSTRAINT pk_customer PRIMARY KEY,
    customer_name VARCHAR2(20) CONSTRAINT nl_customer NOT NULL,
    customer_tel NUMBER
)
--we can also set customer table like this
/*CREATE TABLE Customer (
    customer_id VARCHAR2(20) PRIMARY KEY,
    customer_name VARCHAR2(20)  NOT NULL,
    customer_tel NUMBER
)*/
--Order table 
CREATE TABLE Order (
    customer_id VARCHAR2(20),
    product_id VARCHAR2(20),
    quantity NUMBER,
    total_amount NUMBER,
    CONSTRAINT fk_customer_id FOREIGN KEY  (customer_id) REFERENCES Customer(customer_id),
    CONSTRAINT fk_product_id FOREIGN KEY (product_id) REFERENCES Product(product_id)

)
--Add a column Category (VARCHAR2(20)) to the PRODUCT table. 
ALTER TABLE Product ADD category VARCHAR2(20)
--Add a column OrderDate (DATE)  to the ORDERS table which have SYSDATE as a default value.
ALTER TABLE Order ADD OrderDate DATE  DEFAULT SYSDATE()
