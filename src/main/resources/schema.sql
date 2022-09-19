create table if not exists CUSTOMERS (
    id int AUTO_INCREMENT PRIMARY KEY ,
    name varchar(10),
    surname varchar(30) not null ,
    age int CHECK ( Age > 0 ),
    phone_number int 
)

create table if not exists ORDERS (
    id           int AUTO_INCREMENT PRIMARY KEY,
    date         date,
    customer_id  int,
    product_name varchar(50),
    amount       int,
    FOREIGN KEY (customer_id) REFERENCES customers(id)
);
