CREATE TABLE hotels (
  id        SERIAL PRIMARY KEY,
  name      VARCHAR(30) NOT NULL,
  rooms		INT,
  postcode  VARCHAR(12)
);
CREATE TABLE bookings (
  id               SERIAL PRIMARY KEY,
  customer_id      INT REFERENCES customers(id),
  hotel_id         INT REFERENCES hotels(id),
  checkin_date     DATE NOT NULL,
  nights           INT NOT NULL
);
INSERT INTO customers (name, email, address, city, postcode, country) VALUES ('John Smith','j.smith@johnsmith.org','11 New Road','Liverpool','L10 2AB','UK');
INSERT INTO hotels (name, rooms, postcode) VALUES ('Triple Point Hotel', 10, 'CM194JS');
INSERT INTO bookings (customer_id, hotel_id, checkin_date, nights) VALUES (1, 1, '2019-10-01', 2);
INSERT INTO hotels (name, rooms, postcode) VALUES ('Royal Cosmos Hotel', 5, 'TR209AX');
INSERT INTO hotels (name, rooms, postcode) VALUES ('Pacific Petal Motel', 15, 'BN180TG');
SELECT * FROM customers;
SELECT * FROM hotels;
SELECT * FROM bookings;
SELECT name,address FROM customers;
SELECT * FROM hotels WHERE rooms > 7;
SELECT name,address FROM customers WHERE id = 1;
SELECT * FROM bookings WHERE checkin_date > '2019/10/01';