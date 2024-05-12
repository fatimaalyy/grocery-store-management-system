create database grocery_store;
use grocery_store;
create table products(
id int auto_increment primary key,
name varchar(50),
category varchar(50),
price decimal(10,2),
stock_quantity int
);
create table customers(
id int auto_increment primary key,
name varchar(50),
email varchar(50),
phone_number varchar(20)
);
create table orders(
id int auto_increment primary key,
customer_id int,
order_date date,
total_amount decimal(10,2),
foreign key(customer_id) references customers(id)
);
create table order_Items(
id int auto_increment primary key,
order_id int,
product_id int,
quantity int,
price decimal(10,2),
foreign key (order_id) references orders(id),
foreign key (product_id) references products(id)
);
create table  suppliers(
id int auto_increment primary key,
name varchar(50),
contact_oerson varchar(50),
address varchar(50)
);
create table inventory(
id int auto_increment primary key,
product_id int,
supplier_id int,
quantity int,
foreign key (product_id) references products(id),
foreign key (supplier_id) references suppliers(id)
);
create table promotions(
id int auto_increment primary key,
name varchar(50),
start_date date,
end_date date,
discount decimal(5,2)
);
create table employees(
id int auto_increment primary key,
name varchar(50),
position varchar(50),
salary decimal(10,2)
);
create table deparments(
id int auto_increment primary key,
name varchar(50),
location varchar(100)
);
create table sales(
id int auto_increment primary key,
employee_id int,
order_id int,
sale_date date,
amount decimal(10,2),
foreign key (employee_id) references employees(id),
foreign key (order_id) references orders(id)
);
