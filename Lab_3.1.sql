USE sakila;
ALTER table sakila.staff
DROP COLUMN picture;
SELECT * FROM staff;
SELECT * FROM customer;
INSERT INTO staff(staff_id, first_name, last_name, address_id, email, store_id, active, username)
VALUES (3, 'Tammy', 'Sanders', 79, 'TAMMY.SANDERS@sakilacustomer.org', 2, 1, 'Tammy');
SELECT * FROM staff;
SELECT * FROM rental;

-- No 3
SELECT * FROM film;

select customer_id FROM customer
WHERE first_name = 'Charlotte' and last_name = 'Hunter'; --  customer_id = 130
SELECT film_id FROM film
WHERE title = 'ACADEMY DINOSAUR'; -- film_id = 1
SELECT staff_id FROM staff
WHERE first_name = 'Mike'; -- staff_id = 1

select inventory_id from inventory where film_id = 1 and store_id = 1; -- returns inventory_id 1,2,3,4;


INSERT INTO rental (inventory_id, customer_id, staff_id)
VALUES
(1, 130, 1);

SELECT * from rental;