ALTER TABLE customers ADD COLUMN date_of_birth DATE;
select * from customers;
ALTER TABLE customers 
RENAME COLUMN date_of_birth 
TO birthdate;
ALTER TABLE customers DROP COLUMN birthdate;
CREATE TABLE test();
DROP TABLE test;
select * from hotels;
UPDATE hotels SET postcode ='L10XYZ' WHERE id=2;
UPDATE hotels SET rooms =25 WHERE id=7;
select * from customers;
update customers set address='2 Blue Street', city ='Glasgow', postcode='G11ABC' where id=6;
select * from bookings;
update bookings set nights =5 where customer_id =1 and hotel_id =1;
DELETE FROM bookings WHERE customer_id =8 and checkin_date ='2020/01/03';
DELETE FROM bookings WHERE customer_id =6;
DELETE FROM customers WHERE id =6;

SELECT * FROM customers INNER JOIN bookings ON customers.id=bookings.customer_id;

SELECT * FROM bookings
INNER JOIN customers ON customers.id=bookings.customer_id
INNER JOIN hotels ON hotels.id=bookings.hotel_id;

SELECT bookings.checkin_date,customers.name,hotels.name FROM bookings
INNER JOIN customers ON customers.id=bookings.customer_id
INNER JOIN hotels ON hotels.id=bookings.hotel_id
WHERE customers.id=1;

SELECT * FROM bookings
INNER JOIN customers ON customers.id=bookings.customer_id
where bookings.checkin_date > '2019-12-31';

select * from bookings
inner join hotels on hotels.id=bookings.hotel_id

select customers.name, bookings.checkin_date, bookings.nights from bookings
INNER JOIN customers ON customers.id=bookings.customer_id
INNER JOIN hotels ON hotels.id=bookings.hotel_id
where hotels.name ='Jade Peaks Hotel';

select bookings.checkin_date, customers.name, hotels.name from bookings
INNER JOIN customers ON customers.id=bookings.customer_id
INNER JOIN hotels ON hotels.id=bookings.hotel_id
where bookings.nights >5;

INSERT INTO bookings (customer_id, hotel_id, checkin_date, nights) VALUES (1, 10, '2022/07/17', 1);







