
CREATE TABLE superstore_data (
	row_id INT PRIMARY KEY,
    order_id VARCHAR(20),
    order_date DATE,
    ship_date DATE,
    ship_mode VARCHAR(30),
    customer_id VARCHAR(20),
    customer_name VARCHAR(100),
    segment VARCHAR(50),
    country VARCHAR(50),
    city VARCHAR(100),
    state VARCHAR(50),
    postal_code VARCHAR(20),
    region VARCHAR(50),
    product_id VARCHAR(20),
    category VARCHAR(50),
    sub_category VARCHAR(50),
    product_name VARCHAR(255),
    sales DECIMAL(10, 2),
    quantity INT,
    discount DECIMAL(4,2),
    profit DECIMAL(10,4)
);

LOAD DATA LOCAL INFILE 'C:/superstore_data.csv'
INTO TABLE superstore_data
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(@row_id, @order_id, @order_date, @ship_date, @ship_mode, 
 @customer_id, @customer_name, @segment, @country, @city, 
 @state, @postal_code, @region, @product_id, @category, 
 @sub_category, @product_name, @sales, @quantity, @discount, @profit)
SET
  row_id = @row_id,
  order_id = @order_id,
  order_date = STR_TO_DATE(@order_date, '%m/%d/%Y'),
  ship_date = STR_TO_DATE(@ship_date, '%m/%d/%Y'),
  ship_mode = @ship_mode,
  customer_id = @customer_id,
  customer_name = @customer_name,
  segment = @segment,
  country = @country,
  city = @city,
  state = @state,
  postal_code = @postal_code,
  region = @region,
  product_id = @product_id,
  category = @category,
  sub_category = @sub_category,
  product_name = @product_name,
  sales = @sales,
  quantity = @quantity,
  discount = @discount,
  profit = @profit;


SELECT COUNT(*) FROM superstore_data;





    

