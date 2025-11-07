/* Nick Hollman - HW13 Script */
use F25_nhollma;
go

/* you must drop child tables before parent tables (inverse of create table statements) */
drop table orderline; 
drop table orders;
drop table ordersource;
drop table customer;
drop table shipmentline;
drop table shipment;
drop table inventory;
drop table category;

/* parent table */
create table category (
catid int primary key,
catdesc varchar(40));

/* child table (must come after parent table) */
create table inventory (
invid int primary key,
invsize varchar(10),
invprice decimal(6,2),
invqoh int,
itemdesc varchar(30),
color varchar(20),
catid int);

alter table inventory add constraint inventorycatidfk foreign key (catid) references category(catid);

create table shipment (
shipid int primary key,
ShipDate date,
ArrivalDate date);

create table shipmentline (
shipid int not null,
invid int not null,
slquantityOrdered int,
slquantityreceived int);

alter table shipmentline add constraint shipmentlinepk primary key (shipid, invid);
alter table shipmentline add constraint shipmentlineshipidfk foreign key (shipid) references shipment(shipid);
alter table shipmentline add constraint shipmentlineinvidfk foreign key (invid) references inventory(invid);

create table customer (
CID int primary key,
CLast varchar(30),
CFirst varchar(30),
cmi char(1),
cbirthdate date,
caddress varchar(50),
ccity varchar(30),
cstate char(2),
czip varchar(10),
CPhone1 varchar(12),
CPhone2 varchar(12),
cuserid varchar(50),
cpassword varchar(15));

create table ordersource (
osid int primary key,
osdesc varchar(30));

create table orders (
oid int primary key,
odate date,
omethpmt varchar(10),
CID int,
osid int);

alter table orders add constraint ordersCIDfk foreign key (CID) references customer(CID);
alter table orders add constraint ordersosidfk foreign key (osid) references ordersource(osid);

create table orderline (
oid int not null,
invid int not null,
olquantity int);

alter table orderline add constraint orderlinepk primary key (oid, invid);
alter table orderline add constraint orderlineoidfk foreign key (oid) references orders(oid);
alter table orderline add constraint orderlineinvidfk foreign key (invid) references inventory(invid);