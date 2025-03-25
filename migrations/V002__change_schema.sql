-- fix product

ALTER TABLE product ADD COLUMN price double precision;

UPDATE product SET price = product_info.price
  FROM product_info WHERE product_info.product_id = product.id;

-- fix orders

ALTER TABLE orders ADD COLUMN date_created date default current_date;

UPDATE orders SET date_created = orders_date.date_created
  FROM orders_date WHERE orders_date.order_id = orders.id;

DROP TABLE orders_date;

DROP TABLE product_info;

-- ADD PK
ALTER TABLE product ADD PRIMARY KEY (id);
ALTER TABLE orders ADD PRIMARY KEY (id); 

-- ADD FK 
ALTER TABLE order_product ADD CONSTRAINT orderfk FOREIGN KEY (order_id) REFERENCES orders (id);
ALTER TABLE order_product ADD CONSTRAINT productfk FOREIGN KEY (product_id) REFERENCES product (id);