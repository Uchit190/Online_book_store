-- first query
-- 1. Retrieve all books in the 'fiction' genre
select * from bookslibrary
where Genre='fiction';

-- 2. find boooks published after the year 1950
select * from bookslibrary
where Published_Year>1950;

-- 3. list all customers from the canada
select * from customers
where country='canada';

-- 4. show orders placed in november 2023
select * from orders
where Order_Date between '2023-11-01' and '2023-11-30';

-- 5. retrieve the total stock of books available
select sum(stock) as total_stock
from bookslibrary;

-- 6. find the detils of the most expensive book
select * from bookslibrary 
order by price DESC 
LIMIT 1;
-- 7. show all customers who ordered more than 1 quantity of a book
select * from orders
where Quantity>01;

-- 8. retreve all orders where the total amount exceeds $20
select Total_amount from orders
where Total_Amount>20
order by Total_Amount asc ;
-- 9. list all generes available in the books table 
select distinct genre from bookslibrary;
#so the distinct function show the unique thing they can't repeat

-- 10. find the book with the lowest stock
select * from bookslibrary
where stock<=1;
#if we see one perticular column
select * from bookslibrary
order by Stock
limit 1;
-- 11. calculate the total revenue generated from all orders
select sum(Total_Amount) 
as Revenue 
from orders;
