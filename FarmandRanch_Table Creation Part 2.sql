/* Nick Hollman - HW15 Script */
use F25_nhollma;
go

/* All the 'ID' variables below could also be identity variables, but I did not program these in
because from my understanding of the lecture we would be explicitely told when these should be used 
in our homework / questions */

/* DROP TABLES */
/* you must drop child tables before parent tables (inverse of create table statements) */
drop table field;
drop table section;
drop table policy;
drop table primaryinsured;
drop table systemaccount;
drop table agency;

/* CREATE TABLES */
/* parent table */
create table agency (
agencyid int primary key,
street varchar(50),
city varchar(30),
zip varchar(10),
phone varchar(12));

/* child table */
create table systemaccount (
systemid int not null,
agencyid int not null,
username varchar(50) not null,
password varchar(20) not null);

alter table systemaccount add constraint systemaccountpk primary key (systemid, agencyid);
alter table systemaccount add constraint systemaccountagencyidfk foreign key (agencyid) references agency(agencyid) on delete cascade;

create table primaryinsured (
insuredid int primary key,
name varchar(60),
phone varchar(12));

create table policy (
policyid int primary key,
agencyid int not null,
insuredid int not null,
coverageamt decimal(10, 2),
/* I used 10 digits to allow for higher numbers of digits allowed (precision) compared to what we used previously 
of decimal(6, 2) for inventory price */
policydate date);

alter table policy add constraint policyagencyidfk foreign key (agencyid) references agency(agencyid);
alter table policy add constraint policyinsuredidfk foreign key (insuredid) references primaryinsured(insuredid);

create table section (
statecode int not null,
sectionid int not null,
soiltype varchar(50),
percentarable decimal (4, 2)); /* allow percentages of XX.XX if this is the format used */

alter table section add constraint sectionpk primary key (statecode, sectionid);


create table field (
fieldid int primary key,
statecode int not null,
sectionid int not null,
yield int, /* from my understanding looking online yield is a integer value */
policyid int);

alter table field add constraint fieldsectionfk foreign key (statecode, sectionid) references section(statecode, sectionid);
alter table field add constraint fieldpolicyidfk foreign key (policyid) references policy(policyid) on delete set null;
