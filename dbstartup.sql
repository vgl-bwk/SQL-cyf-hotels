CREATE TABLE customers (
  id        SERIAL PRIMARY KEY,
  name      VARCHAR(30) NOT NULL,
  email     VARCHAR(120) NOT NULL,
  address   VARCHAR(120),
  city      VARCHAR(30),
  postcode  VARCHAR(12),
  country   VARCHAR(20)
);
CREATE TABLE hotels (
  id        SERIAL PRIMARY KEY,
  name      VARCHAR(30) NOT NULL,
  rooms    INT NOT NULL,
  postcode  VARCHAR(12)
);
CREATE TABLE bookings (
  id               SERIAL PRIMARY KEY,
  customer_id      INT REFERENCES customers(id),
  hotel_id         INT REFERENCES hotels(id),
  checkin_date     DATE NOT NULL,
  nights           INT NOT NULL
);
INSERT INTO customers (name,        email,                  address,       city,       postcode, country)
               VALUES ('John Smith','j.smith@johnsmith.org','11 New Road','Liverpool','L10 2AB','UK');
INSERT INTO hotels (name,                 rooms, postcode)
               VALUES ('Triple Point Hotel', 10, 'CM194JS');
INSERT INTO bookings (customer_id, hotel_id, checkin_date, nights)
               VALUES (1, 1, '2019-10-01', 2);
INSERT INTO customers (name,                    email,              address,               city,       postcode, country)
               VALUES ('Daniel Vidigal Boiwko','daniel@vidigal.org','Passeig de Gracia 48','Barcelona','08007','Catalunya');
               SELECT * FROM hotels;