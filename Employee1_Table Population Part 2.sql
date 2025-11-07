/* Nick Hollman - HW16 Script #2 */
use F25_nhollma;
go

/* DROP TABLE */
drop table employee;

/* CREATE TABLE */
create table employee (
empid int primary key, 
name varchar(20),
salary int,
title varchar(30),
supervisorid int not null);

alter table employee add constraint employeesupervisoridfk foreign key (supervisorid) references employee(empid);

/* INSERT DATA W/ NULL SUPERVISORID */
alter table employee alter column supervisorid int null;

insert into employee values (1, 'Ginger Allen', 154721, 'Director of Communications', NULL);
insert into employee values (2, 'Erika Waller', 98824, 'Food Service Aide', NULL);
insert into employee values (3, 'Tania Herrera', 154011, 'District Manager', NULL);
insert into employee values (4, 'Frank Rojas', 67425, 'Desktop Analyst', NULL);
insert into employee values (5, 'Norma Bean', 162770, 'Dental Receptionist', NULL);
insert into employee values (6, 'Esther Gordon', 57408, 'Tour Guide', NULL);
insert into employee values (7, 'Wallace French', 113338, 'Bagger', NULL);
insert into employee values (8, 'Carolyn Blackwell', 184281, 'Senior Project Engineer', NULL);
insert into employee values (9, 'Terence Ramsey', 139518, 'Sales Support Specialist', NULL);
insert into employee values (10, 'Frankie Woodard', 82018, 'Home Inspector', NULL);
insert into employee values (11, 'Marisa Petersen', 138423, 'Network Administrator', NULL);
insert into employee values (12, 'Joni Sampson', 189790, 'Medical Editor', NULL);
insert into employee values (13, 'Margaret Adkins', 186100, 'Wedding Consultant', NULL);
insert into employee values (14, 'Willie Fields', 198923, 'Innovation Manager', NULL);
insert into employee values (15, NULL, 188672, 'Fire Protection Engineer', NULL);
insert into employee values (16, 'Connie Walters', 94730, 'Bus Monitor', NULL);
insert into employee values (17, NULL, 139770, 'Junior Programmer', NULL);
insert into employee values (18, 'Sabrina Nichols', 199096, 'Content Editor', NULL);
insert into employee values (19, 'Jasmine Marquez', 75721, 'Store Assistant Manager', NULL);
insert into employee values (20, 'Edgar Conley', 62690, '3D Modeler', NULL);
insert into employee values (21, 'Tonia Schaefer', 80226, 'Brand Specialist', NULL);
insert into employee values (22, 'Darrick O''Connor', 168243, 'Human Resources Associate', NULL);
insert into employee values (23, 'Sonja Holder', 117826, 'Resource Specialist', NULL);
insert into employee values (24, 'Suzanne Crawford', 78751, 'Vmware Engineer', NULL);
insert into employee values (25, 'Anthony Carlson', 141748, 'Employee Relations Specialist', NULL);
insert into employee values (26, 'Jessica Collier', 57718, 'Radiology Manager', NULL);
insert into employee values (27, 'Quincy Green', 117829, 'Financial Representative', NULL);
insert into employee values (28, 'Irma Duncan', 182591, 'Wind Turbine Technician', NULL);
insert into employee values (29, 'Mia Rowland', 167519, 'Hr Consultant', NULL);
insert into employee values (30, 'Donovan Parrish', 60240, 'Medical Laboratory Technician', NULL);
insert into employee values (31, 'Monte Wagner', 50224, 'Retail Analyst', NULL);
insert into employee values (32, 'Dora Rasmussen', 115597, 'Field Marketing Manager', NULL);
insert into employee values (33, 'Rex Santana', 147696, 'Product Analyst', NULL);
insert into employee values (34, 'Kara Riley', 107498, 'Automotive Manager', NULL);
insert into employee values (35, 'Nicole Barron', 118831, 'Autocad Designer', NULL);
insert into employee values (36, 'Jeffrey Krueger', 140885, 'Revenue Cycle Manager', NULL);
insert into employee values (37, 'Roman Gilmore', 71970, 'Quality Control Inspector', NULL);
insert into employee values (38, 'Celeste Reese', 118037, 'Dental Assistant', NULL);
insert into employee values (39, 'Pamela Mora', 111433, 'Revenue Cycle Analyst', NULL);
insert into employee values (40, 'Eric Sullivan', 193065, 'Transportation Clerk', NULL);
insert into employee values (41, 'Fred Olson', 92272, 'Technical Support Engineer', NULL);
insert into employee values (42, 'Malcolm Sandoval', 88226, 'Erp Consultant', NULL);
insert into employee values (43, 'Keri Scott', 52953, 'Research Officer', NULL);
insert into employee values (44, 'Katherine Buchanan', 88948, 'Radiologic Technologist', NULL);
insert into employee values (45, 'Rachael Juarez', 161128, 'Loss Prevention Investigator', NULL);
insert into employee values (46, 'Brock Watts', 65995, 'Engineering Supervisor', NULL);
insert into employee values (47, 'Jacob Tyler', 168635, 'Gis Specialist', NULL);
insert into employee values (48, 'Cory Warren', 135844, 'Jde Developer', NULL);
insert into employee values (49, 'Ivan Padilla', 112839, 'Immigration Attorney', NULL);
insert into employee values (50, 'Brandie Pineda', 75278, 'Accounts Receivable Supervisor', NULL);


/* UPDATE TABLE WITH SUPERVISORID */
update employee set supervisorid = 29 where empid = 1;
update employee set supervisorid = 3 where empid = 2;
update employee set supervisorid = 46 where empid = 3;
update employee set supervisorid = 26 where empid = 4;
update employee set supervisorid = 26 where empid = 5;
update employee set supervisorid = 21 where empid = 6;
update employee set supervisorid = 29 where empid = 7;
update employee set supervisorid = 29 where empid = 8;
update employee set supervisorid = 21 where empid = 9;
update employee set supervisorid = 30 where empid = 10;
update employee set supervisorid = 21 where empid = 11;
update employee set supervisorid = 3 where empid = 12;
update employee set supervisorid = 50 where empid = 13;
update employee set supervisorid = 29 where empid = 14;
update employee set supervisorid = 46 where empid = 15;
update employee set supervisorid = 46 where empid = 16;
update employee set supervisorid = 21 where empid = 17;
update employee set supervisorid = 50 where empid = 18;
update employee set supervisorid = 46 where empid = 19;
update employee set supervisorid = 46 where empid = 20;
update employee set supervisorid = 26 where empid = 21;
update employee set supervisorid = 30 where empid = 22;
update employee set supervisorid = 21 where empid = 23;
update employee set supervisorid = 26 where empid = 24;
update employee set supervisorid = 30 where empid = 25;
update employee set supervisorid = 30 where empid = 26;
update employee set supervisorid = 46 where empid = 27;
update employee set supervisorid = 21 where empid = 28;
update employee set supervisorid = 21 where empid = 29;
update employee set supervisorid = 49 where empid = 30;
update employee set supervisorid = 29 where empid = 31;
update employee set supervisorid = 29 where empid = 32;
update employee set supervisorid = 26 where empid = 33;
update employee set supervisorid = 26 where empid = 34;
update employee set supervisorid = 29 where empid = 35;
update employee set supervisorid = 34 where empid = 36;
update employee set supervisorid = 3 where empid = 37;
update employee set supervisorid = 29 where empid = 38;
update employee set supervisorid = 29 where empid = 39;
update employee set supervisorid = 49 where empid = 40;
update employee set supervisorid = 29 where empid = 41;
update employee set supervisorid = 50 where empid = 42;
update employee set supervisorid = 34 where empid = 43;
update employee set supervisorid = 49 where empid = 44;
update employee set supervisorid = 21 where empid = 45;
update employee set supervisorid = 30 where empid = 46;
update employee set supervisorid = 34 where empid = 47;
update employee set supervisorid = 26 where empid = 48;
update employee set supervisorid = 29 where empid = 49;
update employee set supervisorid = 26 where empid = 50;

alter table employee alter column supervisorid int not null;
