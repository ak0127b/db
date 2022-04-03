Create table customers (
    id int not null,
    name varchar (225) not null,
    manager_id int not null
);
insert into customers(id, name, manager_id)
values(1,"Rick", 10),
(2,"Maks", 20),
(3,"Nick", 30);

Create table managers (
    id int not null,
    name varchar (225) not null
    
);
insert into managers(id, name)
values(1,"Jack"),
(2,"Pitter"),
(3,"Harry");

Create table orders (
    id int not null,
    date datetime not null,
    amount int not null,
    customer_id int not null
);
insert into orders(id, date, amount, customer_id)
values(1,1-01-2013, 10000 ,10),
(2,1-01-2014, 20000, 20),
(3,1-01-2015, 30000, 30);

Select customers.name, managers.name From customers, managers, orders
Where orders.id in (Select id From Orders where Amount > 10000 and Date > 01-01-2013)