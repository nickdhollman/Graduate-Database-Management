/* Nick Hollman - HW15 Script */
use F25_nhollma;
go

/* DROP TABLES */
drop table historical.supervisor;
drop table historical.employee;
drop table employee;

/* CREATE TABLES */
create table employee (
empid int primary key, 
name varchar(60),
salary decimal(10, 2), /* this would allow up to 8 figures for salary to the left of decimal and 2 digits to the right */
title varchar(50),
supervisorid int not null);

alter table employee add constraint employeesupervisoridfk foreign key (supervisorid) references employee(empid);

create table historical.employee (
empid int primary key,
name varchar(60),
salary decimal(10,2),
title varchar(50));

create table historical.supervisor (
empid int not null,
supervisorid int not null,
startdate date,
enddate date);

alter table historical.supervisor add constraint supervisorpk primary key (empid, supervisorid);
alter table historical.supervisor add constraint supervisorempidfk foreign key (empid) references historical.employee(empid);
alter table historical.supervisor add constraint supervisorsupervisoridfk foreign key (supervisorid) references historical.employee(empid);


