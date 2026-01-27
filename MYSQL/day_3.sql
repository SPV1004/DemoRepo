You are managing an online bookstore. The table is called books with the following columns:
book_id (number)
title (text)
author (text)
price (number)
stock (number)
Do the following tasks:
Add the following 3 books to the table:
(1, 'Learn SQL', 'John Smith', 400, 10)
(2, 'Mastering Python', 'Jane Doe', 600, 5)
(3, 'HTML & CSS Basics', 'Alan Webb', 300, 8)
Increase the price of the book 'Learn SQL' by 50 and update its stock to 12.
Decrease the stock by 2 for books where the price is greater than 500.
Delete the book that has book_id = 3.



-- Insert books
INSERT INTO books (book_id, title, author, price, stock)
VALUES
(1, 'Learn SQL', 'John Smith', 400, 10),
(2, 'Mastering Python', 'Jane Doe', 600, 5),
(3, 'HTML & CSS Basics', 'Alan Webb', 300, 8);

-- Update 'Learn SQL' price and stock
UPDATE books
SET price = price + 50,
    stock = 12
WHERE title = 'Learn SQL';

-- Decrease stock for expensive books
UPDATE books
SET stock = stock - 2
WHERE price > 500;

-- Delete book with ID 3
DELETE FROM books
WHERE book_id = 3;





