/* Nick Hollman - HW16 Script #1 */
use F25_nhollma;
go

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
agencyid int identity (1,1) primary key,
street varchar(30),
city varchar(15),
zip char(5),
phone char(12));

/* child table */
create table systemaccount (
systemid int not null,
agencyid int not null,
username char(6) not null,
password char(12) not null);

alter table systemaccount add constraint systemaccountpk primary key (systemid, agencyid);
alter table systemaccount add constraint systemaccountagencyidfk foreign key (agencyid) references agency(agencyid) on delete cascade;

create table primaryinsured (
insuredid int primary key,
name varchar(20),
phone char(12));

create table policy (
policyid int primary key,
agencyid int not null,
insuredid int not null,
coverageamt int,
policydate date);

alter table policy add constraint policyagencyidfk foreign key (agencyid) references agency(agencyid);
alter table policy add constraint policyinsuredidfk foreign key (insuredid) references primaryinsured(insuredid);

create table section (
statecode char(2) not null,
sectionid int not null,
soiltype varchar(10),
percentarable decimal (3, 2)); 

alter table section add constraint sectionpk primary key (statecode, sectionid);

create table field (
fieldid int primary key,
policyid int,
statecode char(2) not null,
sectionid int not null,
yieldperacre int);

alter table field add constraint fieldsectionfk foreign key (statecode, sectionid) references section(statecode, sectionid);
alter table field add constraint fieldpolicyidfk foreign key (policyid) references policy(policyid) on delete set null;

/* INSERT DATA */
-- agency
insert into agency values ('36 West Fabien St.', 'Garland', '54249', '132-544-2171');
insert into agency values ('935 Nobel Way', 'Milwaukee', '19481', '502-848-3846');
insert into agency values ('91 Hague Parkway', 'Atlanta', '65970', '675-551-1687');
insert into agency values ('50 Cowley Avenue', 'Austin', '55362', '696-180-9233');
insert into agency values ('525 North Old Parkway', 'Madison', '38927', '170-571-8640');
insert into agency values ('48 Old Freeway', 'Colorado', '58042', '191-332-7911');
insert into agency values ('545 New Way', 'Toledo', '37350', '662-418-3332');
insert into agency values ('80 White New St.', 'Cincinnati', '51393', '057-220-6134');
insert into agency values ('16 Nobel St.', 'Bakersfield', '89769', '900-896-1551');
insert into agency values ('361 Milton Way', 'El Paso', '15631', '224-581-3669');
insert into agency values ('76 Cowley Way', 'Washington', '28377', '802-482-2700');
insert into agency values ('11 White Second Road', 'Akron', '59026', '362-026-9808');
insert into agency values ('39 White New Blvd.', 'Indianapolis', '75242', '526-443-1561');
insert into agency values ('19 White Fabien Drive', 'Norfolk', '63725', '686-547-4594');
insert into agency values ('220 East Second Street', 'Louisville', '57282', '326-221-3996');
insert into agency values ('936 North Cowley Boulevard', 'Chicago', '19257', '663-067-5839');
insert into agency values ('28 Rocky Oak Road', 'Cleveland', '16438', '505-771-0042');
insert into agency values ('641 New Avenue', 'Little Rock', '43995', '491-873-7162');
insert into agency values ('448 Clarendon Street', 'Dayton', '76520', '266-438-6032');
insert into agency values ('790 Cowley Drive', 'Sacramento', '78335', '145-599-2882');
insert into agency values ('458 Rocky Hague Avenue', 'Greensboro', '40842', '650-997-4512');
insert into agency values ('87 Cowley Boulevard', 'Lincoln', '93968', '133-870-5960');
insert into agency values ('41 White Cowley Boulevard', 'St. Louis', '22968', '728-875-7387');
insert into agency values ('727 East Hague Avenue', 'Grand Rapids', '76373', '440-944-7634');
insert into agency values ('21 Nobel Parkway', 'Omaha', NULL, '112-647-2543');

-- systemaccount
insert into systemaccount values (1, 19, 'dnfern', 'PI4HLLRV5J14');
insert into systemaccount values (2, 21, 'ldsawy', '09OTHAQNY2BT');
insert into systemaccount values (3, 18, 'sdweek', '7M1IVF2YLFB1');
insert into systemaccount values (4, 13, 'rvdalt', '63KVFBNOG8N3');
insert into systemaccount values (5, 5, 'amay  ', 'BVGBSEXR4E65');
insert into systemaccount values (6, 14, 'khhens', 'ABOZ054DFMEQ');
insert into systemaccount values (7, 24, 'nlockl', '4Y8TYDVOYSOW');
insert into systemaccount values (8, 9, 'wrwein', 'XQVZLEKTADGT');
insert into systemaccount values (9, 25, 'dross ', '2IFJML1KJ0GP');
insert into systemaccount values (10, 6, 'kpbroc', '3OE7ICA4IEQB');
insert into systemaccount values (11, 7, 'bmayna', '8WADIXHSY6AH');
insert into systemaccount values (12, 11, 'anmcma', '724C1QGGOMAM');
insert into systemaccount values (13, 16, 'eselmo', '8E4LCLAADW6J');
insert into systemaccount values (14, 10, 'ericha', 'J8T8F7VZHXY7');
insert into systemaccount values (15, 23, 'jvjoyc', 'U0AUMQJXGL3V');
insert into systemaccount values (16, 1, 'twater', 'POUKL19LJFGT');
insert into systemaccount values (17, 20, 'mnmonr', 'RVFB7SHT6LZ9');
insert into systemaccount values (18, 22, 'jegarr', 'GUAAM31F564V');
insert into systemaccount values (19, 12, 'akweis', 'TOOH4JL0102C');
insert into systemaccount values (20, 3, 'arcrav', '2C1THPJD4MJ3');
insert into systemaccount values (21, 17, 'bbento', 'FJP90VQARLA3');
insert into systemaccount values (22, 15, 'eastan', 'ISCDX4C7IDTO');
insert into systemaccount values (23, 8, 'cdshel', 'HE60KIDDJ0EW');
insert into systemaccount values (24, 2, 'gpcurr', 'PV053QM1JTZY');
insert into systemaccount values (25, 4, 'repuck', 'FPJDHDB3LIZR');
insert into systemaccount values (26, 19, 'tooakl', 'N0BK0B67KWIE');
insert into systemaccount values (27, 21, 'djlync', 'QBWC3LYSUSIU');
insert into systemaccount values (28, 18, 'ldnixo', '3LXVTGB88KK0');
insert into systemaccount values (29, 13, 'bjwalt', 'MQNO4Y8KV0SW');
insert into systemaccount values (30, 5, 'kqmatt', 'U32T0PX90URG');
insert into systemaccount values (31, 14, 'trfull', '5TDUFAOHMAZG');
insert into systemaccount values (32, 24, 'tkdani', 'RYJ3TZJH12KK');
insert into systemaccount values (33, 9, 'gzglov', '6B4LICOF91JM');
insert into systemaccount values (34, 25, 'eggran', 'C1ANVXY3PG5X');
insert into systemaccount values (35, 6, 'rzhang', '0V8TJ1BMORT0');
insert into systemaccount values (36, 7, 'jdbrad', '0YRJ0OS2AKB8');
insert into systemaccount values (37, 11, 'hzwu  ', 'OUR3LNXD01G6');
insert into systemaccount values (38, 16, 'hkwhit', 'OOSY78J02HT1');
insert into systemaccount values (39, 10, 'lpwolf', 'HSS37AOIQ1SL');
insert into systemaccount values (40, 23, 'bscope', 'HQ3BANIP61Z2');
insert into systemaccount values (41, 1, 'rpsell', 'R5CD28HYQDZL');
insert into systemaccount values (42, 20, 'nzrobi', '0O7JJNIIXEF1');
insert into systemaccount values (43, 22, 'tdhunt', 'NB7GV5Y8ZMBL');
insert into systemaccount values (44, 12, 'jlfinc', '1I6YGWPZ8HFM');
insert into systemaccount values (45, 3, 'sopate', 'G73OSN2Q4XRV');
insert into systemaccount values (46, 17, 'bqwu  ', '4XIFLK16E3KI');
insert into systemaccount values (47, 15, 'lmbend', 'AG3LKTEITBM4');
insert into systemaccount values (48, 8, 'mkrich', 'HTEWVPN75LUU');
insert into systemaccount values (49, 2, 'suhorn', 'JQM6EB6MELG9');
insert into systemaccount values (50, 4, 'jilass', 'MKH3UDW3LZOA');
insert into systemaccount values (51, 19, 'lnjose', 'KJEO045QU44Q');
insert into systemaccount values (52, 21, 'jubart', '3R22DX77QB9F');
insert into systemaccount values (53, 18, 'mnwhit', 'BYEOSYON6ZEE');
insert into systemaccount values (54, 13, 'aumcdo', '9K6W93N9KRWV');
insert into systemaccount values (55, 5, 'phsong', 'ROVMHCYVS102');

-- primaryinsured
insert into primaryinsured values (11257, 'Jonathan Adams', '510-325-8868');
insert into primaryinsured values (11519, 'Joanne Lewis', '682-467-0216');
insert into primaryinsured values (12893, 'Shelby Hawkins', '963-995-2110');
insert into primaryinsured values (14719, 'Misti Glover', '251-832-7320');
insert into primaryinsured values (15475, 'Dean Ewing', '239-917-0186');
insert into primaryinsured values (15572, 'Vanessa Rogers', '665-720-2816');
insert into primaryinsured values (18609, 'Rickey Powers', '719-152-1499');
insert into primaryinsured values (19945, 'Whitney Mathews', '738-090-7985');
insert into primaryinsured values (20579, 'Alberto Trevino', '280-093-1753');
insert into primaryinsured values (21499, 'Cornelius Lutz', '191-415-1449');
insert into primaryinsured values (23054, 'Lee Phelps', '434-270-0233');
insert into primaryinsured values (23858, 'Lance Lawrence', '358-511-5809');
insert into primaryinsured values (23937, 'Joanne Wang', '100-806-2051');
insert into primaryinsured values (25547, 'Terri Kemp', '867-410-2885');
insert into primaryinsured values (29092, 'Alana Hardin', '107-082-7416');
insert into primaryinsured values (29184, 'Trenton Eaton', '518-680-0136');
insert into primaryinsured values (33586, 'Darryl Dalton', '386-264-8857');
insert into primaryinsured values (35466, 'Erick Yates', '782-475-3439');
insert into primaryinsured values (38578, 'Everett Greer', '514-672-4046');
insert into primaryinsured values (40025, 'Rodolfo Patel', '264-472-4324');
insert into primaryinsured values (46559, 'Bobbi Mathis', '728-394-5427');
insert into primaryinsured values (47559, 'Andrew Norman', '417-469-4442');
insert into primaryinsured values (47962, 'Kristin Dickerson', '210-027-4100');
insert into primaryinsured values (52166, 'Morgan Hanson', '504-328-9362');
insert into primaryinsured values (53202, 'Trevor Noble', '641-811-6777');
insert into primaryinsured values (55975, 'Josh Marks', '655-490-9334');
insert into primaryinsured values (56563, 'Laura James', '478-557-6803');
insert into primaryinsured values (57055, 'Neal Costa', '598-759-9065');
insert into primaryinsured values (57293, 'Lorenzo Maddox', '133-658-6456');
insert into primaryinsured values (59188, 'Maggie Schmitt', '770-239-4501');
insert into primaryinsured values (61066, 'Kerry Mccoy', '495-243-3881');
insert into primaryinsured values (61791, 'Kristina Briggs', '862-226-8074');
insert into primaryinsured values (62090, 'Jermaine Simon', '218-188-1095');
insert into primaryinsured values (62812, 'Shad Hunter', '117-755-0903');
insert into primaryinsured values (64006, 'Kimberly Cisneros', '673-812-2335');
insert into primaryinsured values (66111, 'Kendra Ferrell', '529-571-5321');
insert into primaryinsured values (68779, 'Lance Pollard', '209-421-2543');
insert into primaryinsured values (69829, 'Jonathan Dawson', '921-020-3136');
insert into primaryinsured values (72224, 'Evan Dougherty', '937-895-4140');
insert into primaryinsured values (75603, 'Emily Case', '397-438-9651');
insert into primaryinsured values (81393, 'Brooke Summers', '329-720-0953');
insert into primaryinsured values (81492, 'Mason Duffy', '459-865-2037');
insert into primaryinsured values (82114, 'Ricardo Rowland', '490-571-2986');
insert into primaryinsured values (84955, 'Loren Holder', '541-463-4438');
insert into primaryinsured values (85508, 'Demond Cobb', '475-494-1630');
insert into primaryinsured values (87051, 'Tameka Knox', '750-431-5618');
insert into primaryinsured values (93096, 'Angelina Mckee', '843-629-3418');
insert into primaryinsured values (93306, 'Kelly Paul', '337-708-5048');
insert into primaryinsured values (93885, 'Darin Buckley', '706-792-9517');
insert into primaryinsured values (97180, 'Pamela Cervantes', '636-099-6741');

-- policy
insert into policy values (1, 19, 68779, 14023120, '2021/12/9');
insert into policy values (2, 21, 81393, 6644730, '2022/1/12');
insert into policy values (3, 20, 72224, 13929383, '2021/2/4');
insert into policy values (4, 14, 57055, 2500144, '2024/3/28');
insert into policy values (5, 6, 23054, 15085634, '2023/4/22');
insert into policy values (6, 14, 57055, 1177892, '2025/1/29');
insert into policy values (7, 23, 87051, 8560691, '2021/6/3');
insert into policy values (8, 12, 47962, 17925033, '2024/10/24');
insert into policy values (9, 25, 93885, 12016355, '2024/9/14');
insert into policy values (10, 7, 25547, 4426401, '2025/7/8');
insert into policy values (11, 8, 29092, 11871874, '2023/5/21');
insert into policy values (12, 12, 52166, 18652161, NULL);
insert into policy values (13, 16, 61791, 18165129, '2022/1/11');
insert into policy values (14, 12, 52166, 19857715, '2023/8/17');
insert into policy values (15, 25, 97180, 18504625, '2021/2/11');
insert into policy values (16, 1, 11519, 6104447, '2022/5/13');
insert into policy values (17, 22, 84955, 12049586, '2023/12/22');
insert into policy values (18, 25, 97180, 19880558, '2022/9/17');
insert into policy values (19, 17, 62812, 3595168, '2020/12/28');
insert into policy values (20, 8, 29184, 1875094, '2024/7/15');
insert into policy values (21, 21, 81393, 4189923, '2024/6/26');
insert into policy values (22, 22, 82114, 15807979, '2021/10/12');
insert into policy values (23, 25, 97180, 9153033, '2025/4/23');
insert into policy values (24, 1, 11519, 3995220, '2024/4/26');
insert into policy values (25, 18, 64006, 12310761, '2021/1/6');
insert into policy values (26, 14, 56563, 1218820, '2020/8/5');
insert into policy values (27, 24, 93096, 9153450, '2024/6/29');
insert into policy values (28, 18, 64006, 17701966, '2021/11/16');
insert into policy values (29, 14, 57055, 15712454, '2021/6/2');
insert into policy values (30, 3, 15475, 1551763, '2022/7/15');
insert into policy values (31, 5, 21499, 229599, '2020/12/9');
insert into policy values (32, 12, 47962, 8858788, '2023/11/3');
insert into policy values (33, 8, 29092, 13095801, '2024/3/22');
insert into policy values (34, 25, 97180, 7789775, '2020/8/10');
insert into policy values (35, 17, 62090, 9285741, '2025/1/18');
insert into policy values (36, 20, 72224, 12196774, '2020/8/19');
insert into policy values (37, 1, 11519, 3100144, '2023/11/10');
insert into policy values (38, 10, 40025, 9180910, '2022/7/21');
insert into policy values (39, 9, 35466, 8309193, '2025/3/14');
insert into policy values (40, 24, 93306, 19084573, '2022/3/11');
insert into policy values (41, 13, 55975, 5779989, '2024/6/23');
insert into policy values (42, 18, 66111, 5245824, '2025/1/6');
insert into policy values (43, 3, 15572, 589860, '2021/6/11');
insert into policy values (44, 7, 25547, 5341129, '2024/6/8');
insert into policy values (45, 23, 87051, 14868870, '2024/8/3');
insert into policy values (46, 20, 75603, 2311371, '2021/8/1');
insert into policy values (47, 9, 33586, 15859739, '2024/8/22');
insert into policy values (48, 12, 47962, 11531406, '2025/4/5');
insert into policy values (49, 4, 19945, 8494794, '2024/5/11');
insert into policy values (50, 6, 23858, NULL, '2021/6/5');
insert into policy values (51, 11, 46559, 3536803, '2024/5/31');
insert into policy values (52, 18, 66111, 11639943, '2022/2/28');
insert into policy values (53, 16, 61066, 13162226, '2024/10/1');
insert into policy values (54, 13, 53202, 9560725, '2025/4/30');
insert into policy values (55, 5, 21499, 2737126, '2024/6/19');
insert into policy values (56, 22, 84955, 13381309, '2021/3/20');
insert into policy values (57, 21, 81492, 18215141, '2022/3/1');
insert into policy values (58, 19, 68779, 17491697, '2023/4/1');
insert into policy values (59, 22, 82114, 10134162, '2020/8/10');
insert into policy values (60, 17, 62812, 10189383, '2024/3/3');
insert into policy values (61, 16, 61791, 14066813, '2024/5/5');
insert into policy values (62, 6, 23054, 12024443, '2023/9/25');
insert into policy values (63, 23, 85508, 10858725, '2020/7/12');
insert into policy values (64, 23, 85508, 2412579, '2022/10/22');
insert into policy values (65, 3, 15475, 10664591, '2024/4/17');
insert into policy values (66, 21, 81492, 4396802, '2022/3/16');
insert into policy values (67, 5, 20579, 3213085, '2024/9/10');
insert into policy values (68, 17, 62090, 5756360, '2021/12/13');
insert into policy values (69, 21, 81492, 10575354, '2024/2/10');
insert into policy values (70, 6, 23054, 10771974, '2021/1/4');
insert into policy values (71, 25, 97180, 6507850, '2024/1/14');
insert into policy values (72, 13, 53202, 3204302, '2021/12/13');
insert into policy values (73, 17, 62090, 3068676, '2023/1/16');
insert into policy values (74, 18, 66111, 11771364, '2024/5/1');
insert into policy values (75, 21, 81393, 4510596, '2020/8/2');
insert into policy values (76, 3, 15572, 16095105, '2024/12/31');
insert into policy values (77, 19, 68779, 18944099, NULL);
insert into policy values (78, 18, 66111, 15418119, '2020/11/12');
insert into policy values (79, 4, 18609, 4011904, '2021/5/26');
insert into policy values (80, 23, 87051, 9126351, '2025/4/5');
insert into policy values (81, 5, 21499, 10199390, '2024/12/18');
insert into policy values (82, 12, 52166, 5359082, '2021/6/27');
insert into policy values (83, 14, 57055, 17622044, '2024/10/6');
insert into policy values (84, 9, 33586, 9407172, '2023/1/18');
insert into policy values (85, 17, 62812, 12375650, '2025/7/11');
insert into policy values (86, 12, 52166, 9911821, '2023/8/27');
insert into policy values (87, 21, 81492, 7067374, '2024/4/23');
insert into policy values (88, 21, 81393, 19298063, '2024/8/14');
insert into policy values (89, 20, 75603, 10558675, '2024/6/4');
insert into policy values (90, 20, 72224, 14408467, '2021/9/3');
insert into policy values (91, 24, 93096, 11070600, '2024/5/11');
insert into policy values (92, 8, 29092, 14705077, '2024/1/1');
insert into policy values (93, 14, 56563, 12965983, '2021/2/20');
insert into policy values (94, 17, 62812, 18991527, '2022/6/21');
insert into policy values (95, 9, 33586, 14242380, '2021/7/22');
insert into policy values (96, 8, 29092, NULL, '2023/5/19');
insert into policy values (97, 21, 81492, 7260130, '2021/4/10');
insert into policy values (98, 6, 23858, 14921264, '2025/1/5');
insert into policy values (99, 5, 21499, 3033245, '2024/3/2');
insert into policy values (100, 2, 14719, 9925269, '2020/9/2');
insert into policy values (101, 16, 61791, 1144327, '2022/11/29');
insert into policy values (102, 18, 64006, 11855784, '2022/6/3');
insert into policy values (103, 16, 61791, 16555012, '2023/3/21');
insert into policy values (104, 24, 93096, 5484385, '2021/9/5');
insert into policy values (105, 6, 23858, 959432, '2023/11/17');
insert into policy values (106, 24, 93096, 2186943, '2022/12/3');
insert into policy values (107, 2, 14719, 532500, '2022/12/28');
insert into policy values (108, 23, 87051, 8771267, '2024/8/25');
insert into policy values (109, 17, 62812, 1590861, '2020/12/12');
insert into policy values (110, 3, 15475, 5250129, '2025/4/8');
insert into policy values (111, 4, 19945, 6642021, '2024/12/30');
insert into policy values (112, 3, 15572, 14437210, '2020/11/17');
insert into policy values (113, 16, 61066, 2997022, '2021/4/17');
insert into policy values (114, 24, 93306, 13679793, '2023/7/9');
insert into policy values (115, 13, 53202, 1207811, '2021/3/5');
insert into policy values (116, 4, 19945, 19989993, NULL);
insert into policy values (117, 17, 62812, 8907730, '2023/3/19');
insert into policy values (118, 15, 57293, 14402399, '2025/2/9');
insert into policy values (119, 6, 23858, 1651553, '2021/3/18');
insert into policy values (120, 16, 61066, 10036929, '2020/7/15');
insert into policy values (121, 1, 11257, 952770, '2024/9/7');
insert into policy values (122, 10, 38578, 17329428, '2025/7/7');
insert into policy values (123, 22, 82114, 3915023, '2023/2/13');
insert into policy values (124, 2, 14719, 15197686, '2020/10/17');
insert into policy values (125, 8, 29092, 16166887, '2020/10/20');

-- section
insert into section values ('AK', 175, 'silty', 0.99);
insert into section values ('AL', 2777, 'silty', 0.83);
insert into section values ('AR', 2078, 'silty', 0.82);
insert into section values ('AZ', 2520, 'loamy', 0.11);
insert into section values ('CA', 2488, 'loamy', 0.19);
insert into section values ('CO', 3137, 'sandy', 0.08);
insert into section values ('CT', 3308, 'peaty', 0.47);
insert into section values ('DE', 4334, 'peaty', 0.01);
insert into section values ('FL', 795, 'sandy', 0.01);
insert into section values ('GA', 2244, 'clay', 0.93);
insert into section values ('HI', 38, 'silty', 0.5);
insert into section values ('IA', 186, 'clay', 0.21);
insert into section values ('ID', 190, 'chalky', 0.04);
insert into section values ('IL', 1563, 'chalky', 0.98);
insert into section values ('IN', 861, 'loamy', 0.46);
insert into section values ('KS', 4487, 'loamy', 0.33);
insert into section values ('KY', 4222, 'silty', 0.24);
insert into section values ('LA', 4300, 'clay', 0.11);
insert into section values ('MA', 2637, 'chalky', 0.6);
insert into section values ('MD', 3306, 'peaty', 0.28);
insert into section values ('ME', 746, 'silty', 0.21);
insert into section values ('MI', 3586, 'peaty', 0.6);
insert into section values ('MN', 4927, 'sandy', 0.15);
insert into section values ('MO', 4122, 'clay', 0.14);
insert into section values ('MS', 2210, 'loamy', 0.96);
insert into section values ('MT', 1775, 'silty', 0.26);
insert into section values ('NC', 4026, 'clay', 0.6);
insert into section values ('ND', 1825, 'peaty', 0.85);
insert into section values ('NE', 2459, 'loamy', 0.99);
insert into section values ('NH', 798, 'chalky', 0.17);
insert into section values ('NJ', 4212, 'silty', 0.02);
insert into section values ('NM', 126, 'silty', 0.58);
insert into section values ('NV', 416, 'chalky', 0.79);
insert into section values ('NY', 4996, 'clay', 0.08);
insert into section values ('OH', 1099, 'clay', 0.34);
insert into section values ('OK', 957, 'loamy', 0.72);
insert into section values ('OR', 3264, 'chalky', 0.84);
insert into section values ('PA', 3862, 'loamy', 0.33);
insert into section values ('RI', 3772, 'sandy', 0.89);
insert into section values ('SC', 3097, 'clay', 0.8);
insert into section values ('SD', 438, 'silty', 0.91);
insert into section values ('TN', 389, 'sandy', 0.94);
insert into section values ('TX', 841, 'silty', 0.05);
insert into section values ('UT', 4439, 'loamy', 0.54);
insert into section values ('VA', 593, 'clay', 0.78);
insert into section values ('VT', 212, 'clay', 0.53);
insert into section values ('WA', 1641, 'clay', 0.05);
insert into section values ('WI', 3758, 'loamy', 0.25);
insert into section values ('WV', 2437, 'peaty', 0.98);
insert into section values ('WY', 461, 'sandy', 0.51);

-- field
insert into field values (1, 103, 'RI', 3772, 37568);
insert into field values (2, 70, 'ME', 746, 47992);
insert into field values (3, 70, 'FL', 795, 12653);
insert into field values (4, 56, 'WY', 461, 26775);
insert into field values (5, 35, 'CO', 3137, 43957);
insert into field values (6, 59, 'KS', 4487, 20817);
insert into field values (7, 59, 'SD', 438, 1227);
insert into field values (8, 4, 'MN', 4927, 31339);
insert into field values (9, 125, 'IA', 186, 38878);
insert into field values (10, 40, 'AK', 175, 14479);
insert into field values (11, 107, 'RI', 3772, 47424);
insert into field values (12, 5, 'AL', 2777, 25319);
insert into field values (13, 66, 'AK', 175, NULL);
insert into field values (14, 86, 'MT', 1775, 30351);
insert into field values (15, 11, 'MD', 3306, 40762);
insert into field values (16, 57, 'IL', 1563, 24778);
insert into field values (17, 124, 'OK', 957, 15284);
insert into field values (18, 96, 'IA', 186, 36380);
insert into field values (19, 48, 'OR', 3264, 17664);
insert into field values (20, 120, 'CA', 2488, 49992);
insert into field values (21, 90, 'CA', 2488, 6561);
insert into field values (22, 35, 'KY', 4222, 39622);
insert into field values (23, 100, 'KY', 4222, 49721);
insert into field values (24, 58, 'OR', 3264, 9466);
insert into field values (25, 28, 'VA', 593, 15962);
insert into field values (26, 90, 'SD', 438, 18076);
insert into field values (27, 61, 'NV', 416, 12179);
insert into field values (28, 110, 'WA', 1641, 14529);
insert into field values (29, 92, 'CA', 2488, 42046);
insert into field values (30, 85, 'OH', 1099, 36521);
insert into field values (31, 28, 'WA', 1641, 48897);
insert into field values (32, 113, 'WY', 461, 25811);
insert into field values (33, 105, 'CO', 3137, 10976);
insert into field values (34, 81, 'AL', 2777, 1737);
insert into field values (35, 28, 'LA', 4300, 7796);
insert into field values (36, 61, 'TX', 841, 20725);
insert into field values (37, 90, 'OH', 1099, 7869);
insert into field values (38, 13, 'PA', 3862, 34478);
insert into field values (39, 90, 'OH', 1099, 1718);
insert into field values (40, 114, 'CA', 2488, 22826);
insert into field values (41, 60, 'AR', 2078, 32767);
insert into field values (42, 41, 'IL', 1563, 23662);
insert into field values (43, 59, 'IL', 1563, 42888);
insert into field values (44, 102, 'MS', 2210, 9324);
insert into field values (45, 96, 'WV', 2437, 29612);
insert into field values (46, 37, 'ND', 1825, 36972);
insert into field values (47, 83, 'AK', 175, 20224);
insert into field values (48, 36, 'MS', 2210, 26921);
insert into field values (49, 28, 'LA', 4300, 33842);
insert into field values (50, 9, 'MS', 2210, 42403);
insert into field values (51, 87, 'NV', 416, 1931);
insert into field values (52, 116, 'NM', 126, 508);
insert into field values (53, 117, 'AZ', 2520, 48737);
insert into field values (54, 113, 'VA', 593, 28975);
insert into field values (55, 12, 'NH', 798, 27970);
insert into field values (56, 14, 'MI', 3586, 25091);
insert into field values (57, 120, 'AZ', 2520, 37848);
insert into field values (58, 19, 'MI', 3586, 38526);
insert into field values (59, 72, 'CA', 2488, 46691);
insert into field values (60, 78, 'IN', 861, 8698);
insert into field values (61, NULL, 'NV', 416, 31778);
insert into field values (62, 107, 'UT', 4439, 6287);
insert into field values (63, 36, 'LA', 4300, 9181);
insert into field values (64, 120, 'NC', 4026, 44818);
insert into field values (65, 49, 'CA', 2488, 39981);
insert into field values (66, 36, 'SC', 3097, 38669);
insert into field values (67, 67, 'WA', 1641, 36448);
insert into field values (68, 36, 'WV', 2437, 23582);
insert into field values (69, 106, 'FL', 795, 22555);
insert into field values (70, 14, 'NC', 4026, 20036);
insert into field values (71, 51, 'NH', 798, 16909);
insert into field values (72, 17, 'WI', 3758, 30806);
insert into field values (73, 77, 'ND', 1825, 34661);
insert into field values (74, 86, 'NM', 126, 44838);
insert into field values (75, 22, 'AR', 2078, 17225);
insert into field values (76, 77, 'SD', 438, 32899);
insert into field values (77, 125, 'AZ', 2520, 46734);
insert into field values (78, 8, 'TN', 389, 40396);
insert into field values (79, 106, 'RI', 3772, 29854);
insert into field values (80, 81, 'KY', 4222, 28990);
insert into field values (81, 122, 'SC', 3097, 47852);
insert into field values (82, 65, 'FL', 795, 35258);
insert into field values (83, 102, 'NH', 798, 30687);
insert into field values (84, 72, 'NJ', 4212, 49643);
insert into field values (85, 85, 'AR', 2078, 34589);
insert into field values (86, 38, 'KS', 4487, 48389);
insert into field values (87, 59, 'VT', 212, 27074);
insert into field values (88, 28, 'HI', 38, 32001);
insert into field values (89, 29, 'MN', 4927, 23767);
insert into field values (90, 56, 'VT', 212, 32705);
insert into field values (91, 3, 'RI', 3772, 32878);
insert into field values (92, 103, 'ID', 190, 19344);
insert into field values (93, 115, 'NV', 416, 37787);
insert into field values (94, 64, 'MD', 3306, 43020);
insert into field values (95, 125, 'MI', 3586, 41049);
insert into field values (96, 82, 'FL', 795, 26479);
insert into field values (97, 121, 'WA', 1641, 14481);
insert into field values (98, 97, 'OR', 3264, 48070);
insert into field values (99, 53, 'ME', 746, 19344);
insert into field values (100, 111, 'FL', 795, 40944);
insert into field values (101, 32, 'NM', 126, 524);
insert into field values (102, 113, 'AR', 2078, 46643);
insert into field values (103, 111, 'KS', 4487, 4366);
insert into field values (104, 99, 'SD', 438, 13805);
insert into field values (105, 45, 'VA', 593, 25494);
insert into field values (106, 5, 'OH', 1099, 21126);
insert into field values (107, 16, 'AZ', 2520, 15847);
insert into field values (108, 63, 'MI', 3586, 3898);
insert into field values (109, 33, 'TX', 841, 11750);
insert into field values (110, 31, 'SC', 3097, 45072);
insert into field values (111, 17, 'LA', 4300, 28357);
insert into field values (112, 70, 'ID', 190, 47453);
insert into field values (113, 43, 'NY', 4996, 8671);
insert into field values (114, 13, 'PA', 3862, 17700);
insert into field values (115, 89, 'MT', 1775, 10846);
insert into field values (116, 82, 'MS', 2210, 46520);
insert into field values (117, 34, 'IN', 861, 25601);
insert into field values (118, 25, 'OR', 3264, 9538);
insert into field values (119, 62, 'MS', 2210, 10228);
insert into field values (120, 40, 'SC', 3097, 41593);
insert into field values (121, 31, 'UT', 4439, 11594);
insert into field values (122, 77, 'OR', 3264, 4446);
insert into field values (123, NULL, 'NC', 4026, 49815);
insert into field values (124, 121, 'IL', 1563, 39850);
insert into field values (125, 97, 'PA', 3862, 37159);
