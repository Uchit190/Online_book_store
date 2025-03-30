create database OnlineBookStore;
use onlinebookstore;
create table bookslibrary(
Book_ID varchar(100),
Title varchar(100),
Author varchar(100),
Genre varchar(100),
Published_Year int,
Price numeric (10,3),
Stock int);
Select * from bookslibrary;
create table customers(
Customer_ID serial primary key,
Name varchar(100),
Email varchar(100),
Phone varchar(100),
City varchar(100),
Country varchar(100)
);
select* from customers;

create table orders(
Order_ID serial primary key,
Customer_ID int references Customers(Customer_ID),
Book_ID int references Books(Books_ID),
Order_Date DATE,
Quantity INT,
Total_Amount numeric(10,2)
);
select* from orders;
rename table customer to customers;