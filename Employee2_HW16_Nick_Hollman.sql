/* Nick Hollman - HW16 Script #3 */
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

/* DROP CONSTRAINT */
alter table employee drop constraint employeesupervisoridfk;

/* INSERT DATA */
insert into employee values (1, 'Ginger Allen', 154721, 'Director of Communications', 29);
insert into employee values (2, 'Erika Waller', 98824, 'Food Service Aide', 3);
insert into employee values (3, 'Tania Herrera', 154011, 'District Manager', 46);
insert into employee values (4, 'Frank Rojas', 67425, 'Desktop Analyst', 26);
insert into employee values (5, 'Norma Bean', 162770, 'Dental Receptionist', 26);
insert into employee values (6, 'Esther Gordon', 57408, 'Tour Guide', 21);
insert into employee values (7, 'Wallace French', 113338, 'Bagger', 29);
insert into employee values (8, 'Carolyn Blackwell', 184281, 'Senior Project Engineer', 29);
insert into employee values (9, 'Terence Ramsey', 139518, 'Sales Support Specialist', 21);
insert into employee values (10, 'Frankie Woodard', 82018, 'Home Inspector', 30);
insert into employee values (11, 'Marisa Petersen', 138423, 'Network Administrator', 21);
insert into employee values (12, 'Joni Sampson', 189790, 'Medical Editor', 3);
insert into employee values (13, 'Margaret Adkins', 186100, 'Wedding Consultant', 50);
insert into employee values (14, 'Willie Fields', 198923, 'Innovation Manager', 29);
insert into employee values (15, NULL, 188672, 'Fire Protection Engineer', 46);
insert into employee values (16, 'Connie Walters', 94730, 'Bus Monitor', 46);
insert into employee values (17, NULL, 139770, 'Junior Programmer', 21);
insert into employee values (18, 'Sabrina Nichols', 199096, 'Content Editor', 50);
insert into employee values (19, 'Jasmine Marquez', 75721, 'Store Assistant Manager', 46);
insert into employee values (20, 'Edgar Conley', 62690, '3D Modeler', 46);
insert into employee values (21, 'Tonia Schaefer', 80226, 'Brand Specialist', 26);
insert into employee values (22, 'Darrick O''Connor', 168243, 'Human Resources Associate', 30);
insert into employee values (23, 'Sonja Holder', 117826, 'Resource Specialist', 21);
insert into employee values (24, 'Suzanne Crawford', 78751, 'Vmware Engineer', 26);
insert into employee values (25, 'Anthony Carlson', 141748, 'Employee Relations Specialist', 30);
insert into employee values (26, 'Jessica Collier', 57718, 'Radiology Manager', 30);
insert into employee values (27, 'Quincy Green', 117829, 'Financial Representative', 46);
insert into employee values (28, 'Irma Duncan', 182591, 'Wind Turbine Technician', 21);
insert into employee values (29, 'Mia Rowland', 167519, 'Hr Consultant', 21);
insert into employee values (30, 'Donovan Parrish', 60240, 'Medical Laboratory Technician', 49);
insert into employee values (31, 'Monte Wagner', 50224, 'Retail Analyst', 29);
insert into employee values (32, 'Dora Rasmussen', 115597, 'Field Marketing Manager', 29);
insert into employee values (33, 'Rex Santana', 147696, 'Product Analyst', 26);
insert into employee values (34, 'Kara Riley', 107498, 'Automotive Manager', 26);
insert into employee values (35, 'Nicole Barron', 118831, 'Autocad Designer', 29);
insert into employee values (36, 'Jeffrey Krueger', 140885, 'Revenue Cycle Manager', 34);
insert into employee values (37, 'Roman Gilmore', 71970, 'Quality Control Inspector', 3);
insert into employee values (38, 'Celeste Reese', 118037, 'Dental Assistant', 29);
insert into employee values (39, 'Pamela Mora', 111433, 'Revenue Cycle Analyst', 29);
insert into employee values (40, 'Eric Sullivan', 193065, 'Transportation Clerk', 49);
insert into employee values (41, 'Fred Olson', 92272, 'Technical Support Engineer', 29);
insert into employee values (42, 'Malcolm Sandoval', 88226, 'Erp Consultant', 50);
insert into employee values (43, 'Keri Scott', 52953, 'Research Officer', 34);
insert into employee values (44, 'Katherine Buchanan', 88948, 'Radiologic Technologist', 49);
insert into employee values (45, 'Rachael Juarez', 161128, 'Loss Prevention Investigator', 21);
insert into employee values (46, 'Brock Watts', 65995, 'Engineering Supervisor', 30);
insert into employee values (47, 'Jacob Tyler', 168635, 'Gis Specialist', 34);
insert into employee values (48, 'Cory Warren', 135844, 'Jde Developer', 26);
insert into employee values (49, 'Ivan Padilla', 112839, 'Immigration Attorney', 29);
insert into employee values (50, 'Brandie Pineda', 75278, 'Accounts Receivable Supervisor', 26);

/* REENFORCE CONSTRAINT */
alter table employee add constraint employeesupervisoridfk foreign key (supervisorid) references employee(empid);