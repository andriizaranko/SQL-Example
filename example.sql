create table Persons (
PersonID int,
Age int,
FirstName varchar(30),
LastName varchar(30),
Gender varchar(20)
)

create table WorkResult (
PersonID int,
WorkValues int,
Year int,
Month int
)

insert into Persons values
(1, 28, 'Andrii', 'Mazurenko', 'Male'),
(2, 32, 'Mykola', 'Zaranko', 'Male'),
(3, 55, 'Vitalii', 'Palaguta', 'Male')

insert into WorkResult values
(1, 3564, 2022, 11),
(1, 2947, 2022, 2),
(3, 7842, 2021, 6)

select t1.FirstName, t1.LastName, sum(t2.WorkValues) as ourSum
from Persons as t1
left join WorkResult as t2 on t1.PersonID = t2.PersonID
where t1.Gender = 'Male' and t2.Year > 6
group by t1.FirstName, t1.LastName
order by t1.FirstName
having ourSum >= 50000