-- 1. Retrieve the total number of books sold for each genre
select * from orders;
select b.genre, sum(o.quantity) as t_sold
from orders o
join bookslibrary b on o.book_id = b.book_id
group by b.genre;

-- 2. Find the avg price of books in the "fantasy" genre
select avg(price) as average_price
from bookslibrary
where genre = 'fantasy';

-- 3. List customers who have placed at least 2 orders
select o.customer_id , c.name,count(o.order_id) as order_count
from orders  o
join customers c on o.customer_id=c.customer_id
group by o.customer_id, c.name
having count(order_id) >=2;
-- 4. Find the most frequently ordered book 
select o.book_id, b.title ,count(o.order_id) as order_count
from orders o 
join bookslibrary b on o.book_id= b.book_id
group by o.book_id , b.title
order by order_count desc limit 7;

-- 5. Show the top 3 most expensive books of "fantasy" genre
Select * from bookslibrary
where genre='fantasy'
order by Price desc limit 3;

-- 6. Retrieve the total quantity of books sold by each author
select * from bookslibrary;
select b. author, sum(o.quantity) as total_books_sold
from orders o
join bookslibrary b on o.book_id=b.book_id
group by b.author;

-- 7. List the cities where customers who spend over $30 are located:
select distinct c.city
from orders o
join customers c on o.customer_id=c.customer_id
where o.total_amount > 30;
-- 8. Find the customer who spent the most on orders
 select c.customer_id, c.name, sum(o.total_amount) as total_spent
 from orders o
 join customers c on o.customer_id=c.customer_id
 group by c.customer_id, c.name
 order by total_spent desc LIMIT 1;
