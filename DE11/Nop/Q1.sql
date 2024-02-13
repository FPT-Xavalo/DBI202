
create table Employee(
empID int primary key,
ename varchar(20),
phone varchar(20),
manage int foreign key references Employee(empID)
)

create table Employeechildren(
empID int primary key,
children varchar(20),
FOREIGN KEY (empID) REFERENCES Employee( empID )
)
create table Branch(
brID int primary key,
bname varchar(20),
bcity varchar(20)
)
create table workat(
since date,
Seniority as DATEDIFF(year, since, getdate()),
brID int,
empID int,
FOREIGN KEY (brID) REFERENCES Branch(brID),
FOREIGN KEY (empID) REFERENCES Employee(empID),
primary key(brID, empID)
)
