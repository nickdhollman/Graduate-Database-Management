/* Nick Hollman - HW16 Script #4 */
use F25_nhollma;
go

/* DROP TABLES */
drop table historical.supervisor;
drop table historical.employee;

/* CREATE TABLES */
create table historical.employee (
empid int primary key,
name varchar(20),
salary int,
title varchar(30));

create table historical.supervisor (
empid int not null,
supervisorid int not null,
startdate date);
-- Even though there was an EndDate in HW 15, 
-- I did not see this in the excel data so only included StartDate in table

alter table historical.supervisor add constraint supervisorpk primary key (empid, supervisorid);
alter table historical.supervisor add constraint supervisorempidfk foreign key (empid) references historical.employee(empid);
alter table historical.supervisor add constraint supervisorsupervisoridfk foreign key (supervisorid) references historical.employee(empid);

/* INSERT DATA */
-- historical.employee
insert into historical.employee values (25, 'Kristina Cardenas', 109714, 'Leasing Associate');
insert into historical.employee values (40, 'Nick Robbins', 194936, 'Sonar Technician');
insert into historical.employee values (44, 'Kim Pace', 182873, 'Professional Nurse');
insert into historical.employee values (47, 'Roderick Morrow', 68953, 'Taxi Driver');
insert into historical.employee values (50, 'Lea Arias', 163145, 'Housing Counselor');
insert into historical.employee values (74, 'Carmen Blackburn', 108091, 'Hse Coordinator');
insert into historical.employee values (90, 'Jocelyn Giles', 85069, 'Budget Analyst');
insert into historical.employee values (91, 'Tami Heath', 77387, 'Home Inspector');
insert into historical.employee values (118, 'Annette Gardner', 113198, 'Architectural Draftsman');
insert into historical.employee values (122, 'Yolanda Haney', 154416, 'Parts Manager');
insert into historical.employee values (130, 'Clifton Reyes', 98421, 'Child Care Worker');
insert into historical.employee values (142, 'Shari Brewer', 55897, 'Chemical Engineer');
insert into historical.employee values (144, 'Donnie Branch', 124613, 'Network Administrator');
insert into historical.employee values (150, 'Sonya Mc Dowell', 182014, 'Recreation Coordinator');
insert into historical.employee values (153, 'Jo Benton', 95441, 'Field Marketing Manager');
insert into historical.employee values (155, 'Barry Reed', 159842, 'Team Manager');
insert into historical.employee values (157, 'Bart Krueger', 132521, 'Warehouseman');
insert into historical.employee values (158, 'Everett Rocha', 133478, 'Content Developer');
insert into historical.employee values (159, 'Randal Reese', 191486, 'Integration Consultant');
insert into historical.employee values (168, 'Kenneth Colon', 130055, 'Barback');
insert into historical.employee values (170, 'Colby Chaney', 133787, 'Senior Operations Manager');
insert into historical.employee values (176, 'Erick Edwards', 50237, 'Sat Tutor');
insert into historical.employee values (181, 'Tabatha O''Connor', 151732, 'Hospitality Associate');
insert into historical.employee values (200, 'Trevor Fischer', 142630, 'Quality Assurance Assistant');
insert into historical.employee values (201, 'Abel Chambers', 104259, 'Senior Project Engineer');
insert into historical.employee values (209, 'John Ellison', 81800, 'Document Controller');
insert into historical.employee values (214, 'Demetrius Collier', 87920, 'Support Manager');
insert into historical.employee values (219, 'Amber Ibarra', 63899, 'Accounting Assistant');
insert into historical.employee values (238, 'Claudia Richardson', 75084, 'Information Security Engineer');
insert into historical.employee values (242, 'Grace Vaughn', 179814, 'Surgical Nurse');
insert into historical.employee values (244, 'Pete Lane', 72371, 'Personnel Assistant');
insert into historical.employee values (245, 'Jocelyn Andersen', 63960, 'Part Time Sales Associate');
insert into historical.employee values (275, 'Salvador Young', 90132, 'Claim Specialist');
insert into historical.employee values (299, 'Kristi Byrd', 72330, 'Software Specialist');
insert into historical.employee values (300, 'Candace Chapman', 195251, 'Food Services Manager');
insert into historical.employee values (305, 'Bryce Figueroa', 135380, 'Pediatrician');
insert into historical.employee values (311, 'Tara Paul', 153116, 'Oncology Pharmacist');
insert into historical.employee values (317, 'Diana Hansen', 130612, 'Engineering Assistant');
insert into historical.employee values (344, 'Leon Mueller', 61264, 'Process Improvement Analyst');
insert into historical.employee values (346, 'Lorie Wolf', 67491, 'Senior Product Manager');
insert into historical.employee values (358, 'Julian Carr', 195351, 'Business Development Manager');
insert into historical.employee values (393, 'Bridgett Newman', 179599, 'Health Care Assistant');
insert into historical.employee values (427, 'Paige Casey', 61384, 'Photojournalist');
insert into historical.employee values (434, 'Frankie Bishop', 87118, 'Producer');
insert into historical.employee values (442, 'Cecil Cole', 121087, 'Telecommunications Analyst');
insert into historical.employee values (447, 'Rebecca Pineda', 63432, 'Catering Manager');
insert into historical.employee values (452, 'Audra Hubbard', 112881, 'Maid');
insert into historical.employee values (458, 'Kathy Fuller', 116418, 'Firmware Engineer');
insert into historical.employee values (469, 'Miranda Bell', 115566, 'Clinical Research Associate');
insert into historical.employee values (490, 'Fernando Walton', 105687, 'Personal Assistant');

-- historical.supervisor
insert into historical.supervisor values (25, 170, '2000/11/7');
insert into historical.supervisor values (25, 393, '2013/10/15');
insert into historical.supervisor values (40, 153, '2015/12/19');
insert into historical.supervisor values (40, 245, '2009/8/13');
insert into historical.supervisor values (44, 358, '2025/5/4');
insert into historical.supervisor values (47, 442, '2014/10/13');
insert into historical.supervisor values (50, 209, '2001/3/3');
insert into historical.supervisor values (74, 90, '2018/9/9');
insert into historical.supervisor values (90, 214, '2007/11/14');
insert into historical.supervisor values (91, 142, '2007/9/14');
insert into historical.supervisor values (118, 200, '2022/10/7');
insert into historical.supervisor values (122, 176, '2024/5/22');
insert into historical.supervisor values (122, 299, '2008/4/25');
insert into historical.supervisor values (130, 238, '2021/11/28');
insert into historical.supervisor values (142, 311, '2001/9/22');
insert into historical.supervisor values (142, 452, '2011/12/4');
insert into historical.supervisor values (144, 40, '2008/2/23');
insert into historical.supervisor values (144, 275, '2000/7/30');
insert into historical.supervisor values (150, 40, '2022/10/25');
insert into historical.supervisor values (150, 150, '2009/8/13');
insert into historical.supervisor values (153, 44, '2007/7/8');
insert into historical.supervisor values (155, 181, '2007/11/10');
insert into historical.supervisor values (157, 242, '2006/11/6');
insert into historical.supervisor values (158, 91, '2023/5/14');
insert into historical.supervisor values (159, 434, '2013/5/26');
insert into historical.supervisor values (168, 122, '2000/3/3');
insert into historical.supervisor values (170, 50, '2019/10/29');
insert into historical.supervisor values (170, 458, '2017/11/13');
insert into historical.supervisor values (176, 305, '2013/2/17');
insert into historical.supervisor values (176, 490, '2023/10/17');
insert into historical.supervisor values (181, 150, '2014/1/10');
insert into historical.supervisor values (181, 159, '2004/11/25');
insert into historical.supervisor values (200, 130, '2006/5/12');
insert into historical.supervisor values (201, 219, '2007/12/16');
insert into historical.supervisor values (209, 157, '2018/5/6');
insert into historical.supervisor values (214, 299, '2001/7/8');
insert into historical.supervisor values (214, 346, '2016/7/1');
insert into historical.supervisor values (219, 158, '2021/2/10');
insert into historical.supervisor values (219, 176, '2000/7/9');
insert into historical.supervisor values (238, 469, '2023/12/15');
insert into historical.supervisor values (242, 122, '2021/2/11');
insert into historical.supervisor values (242, 393, '2012/3/20');
insert into historical.supervisor values (244, 311, '2025/8/4');
insert into historical.supervisor values (244, 317, '2024/1/2');
insert into historical.supervisor values (245, 159, '2013/1/15');
insert into historical.supervisor values (245, 490, '2004/6/20');
insert into historical.supervisor values (275, 447, '2004/10/31');
insert into historical.supervisor values (299, 344, '2016/3/31');
insert into historical.supervisor values (300, 300, '2023/3/6');
insert into historical.supervisor values (305, 155, '2022/2/4');
insert into historical.supervisor values (311, 74, '2008/3/20');
insert into historical.supervisor values (311, 144, '2010/6/18');
insert into historical.supervisor values (317, 201, '2020/9/5');
insert into historical.supervisor values (317, 346, '2001/10/24');
insert into historical.supervisor values (344, 47, '2010/1/10');
insert into historical.supervisor values (344, 452, '2017/6/7');
insert into historical.supervisor values (346, 47, '2015/2/7');
insert into historical.supervisor values (346, 118, '2022/11/14');
insert into historical.supervisor values (358, 168, '2010/3/19');
insert into historical.supervisor values (393, 74, '2000/4/11');
insert into historical.supervisor values (393, 201, '2020/5/31');
insert into historical.supervisor values (427, 153, '2004/8/19');
insert into historical.supervisor values (427, 244, '2017/11/13');
insert into historical.supervisor values (434, 427, '2016/8/27');
insert into historical.supervisor values (442, 25, '2019/8/15');
insert into historical.supervisor values (447, 158, '2023/4/1');
insert into historical.supervisor values (447, 458, '2001/10/16');
insert into historical.supervisor values (452, 118, '2024/3/28');
insert into historical.supervisor values (452, 170, '2018/8/16');
insert into historical.supervisor values (458, 244, '2000/9/24');
insert into historical.supervisor values (458, 317, '2019/3/5');
insert into historical.supervisor values (469, 245, '2018/6/18');
insert into historical.supervisor values (469, 305, '2002/6/3');
insert into historical.supervisor values (490, 50, '2002/3/1');
insert into historical.supervisor values (490, 275, '2004/4/12');