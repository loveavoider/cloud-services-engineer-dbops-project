ALTER TABLE product ADD COLUMN price double precision;

ALTER TABLE orders ADD COLUMN date_created date default current_date;

DROP TABLE orders_date;

DROP TABLE product_info;

ALTER TABLE product ADD PRIMARY KEY (id);
ALTER TABLE orders ADD PRIMARY KEY (id);

ALTER TABLE order_product ADD CONSTRAINT orderfk FOREIGN KEY (order_id) REFERENCES orders (id);
ALTER TABLE order_product ADD CONSTRAINT productfk FOREIGN KEY (product_id) REFERENCES product (id);