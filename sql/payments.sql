DROP TABLE IF EXISTS payments;

CREATE TABLE payments (
order_id INT NOT NULL,
payment_sequential SMALLINT NOT NULL,
payment_type VARCHAR(20) NOT NULL,
installments SMALLINT NOT NULL,
value REAL NOT NULL);

ALTER TABLE payments ADD CONSTRAINT payments_order_id_orders_id FOREIGN KEY (order_id) REFERENCES orders(id);
