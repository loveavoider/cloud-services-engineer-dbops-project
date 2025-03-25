CREATE INDEX order_date_status_idx ON orders (date_created, status);
CREATE INDEX order_id_idx ON order_product (order_id);