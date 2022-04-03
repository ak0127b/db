Create table table_a (
    emp_id int not null,
    emp_name varchar (255) not null,
    dep_id int not null,
    salary int not null
);
insert into table_a (emp_id,emp_name, dep_id , salary)
values(1, "james", 10, 2000),
(2, "jack", 10, 4000),
(3, "hennry", 11, 6000),
(4, "tom", 11, 8000),
(5, "harry", 11, 4000),
(6, "alisa", 10, 6000);

/* Select *
  From table_a
 Where emp_name like "%m%"; */

/* Select max (salary), dep_id 
from table_a 
group by dep_id; */

/* Select emp_name
From table_a where salary in (
Select salary
from table_a
Group by salary
having count (*) >1 ); */