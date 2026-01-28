/*You are managing a database for a mobile store. The table is called mobiles and contains the following columns:
id (number)
brand (text)
model (text)
price (number)
stock (number)
Perform the following tasks:
Insert the following mobile records into the table:
(1, 'Samsung', 'Galaxy M14', 12000, 30)
(2, 'Redmi', 'Note 12', 15000, 25)
(3, 'Realme', 'Narzo 50', 13000, 20)
(4, 'Samsung', 'Galaxy A23', 18000, 10)
Display all mobiles that cost more than 13000 or have stock less than 15.
Increase the stock by 5 and update the price to 12500 for the mobile with model = 'Narzo 50'.
Delete the mobile whose id is 2.
Find the lowest and highest price in the table.
Find the total stock of all mobiles in the table.
Show the top 2 most expensive mobiles.*/

-- Insert records
INSERT INTO mobiles (id, brand, model, price, stock) VALUES
(1, 'Samsung', 'Galaxy M14', 12000, 30),
(2, 'Redmi', 'Note 12', 15000, 25),
(3, 'Realme', 'Narzo 50', 13000, 20),
(4, 'Samsung', 'Galaxy A23', 18000, 10);

-- Display mobiles costing more than 13000 or stock less than 15
SELECT *
FROM mobiles
WHERE price > 13000 OR stock < 15;

-- Update Narzo 50
UPDATE mobiles
SET stock = stock + 5,
    price = 12500
WHERE model = 'Narzo 50';

-- Delete mobile with id = 2
DELETE FROM mobiles
WHERE id = 2;

-- Find lowest and highest price
SELECT 
    MIN(price) AS lowest_price,
    MAX(price) AS highest_price
FROM mobiles;

-- Find total stock
SELECT SUM(stock) AS total_stock
FROM mobiles;

-- Show top 2 most expensive mobiles
SELECT *
FROM mobiles
ORDER BY price DESC
LIMIT 2;
