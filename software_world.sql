create database software_world;
use software_world;

create table programming_languages (
    id int ,language_name varchar(50),type varchar(50));
desc programming_languages;
insert into programming_languages values
(1,'Java','Object-Oriented'),
(2,'Python','Interpreted'),
(3,'C','Procedural'),
(4,'C++','Object-Oriented'),
(5,'JavaScript','Scripting'),
(6,'Go','Compiled'),
(7,'Rust','Systems'),
(8,'Kotlin','JVM'),
(9,'Swift','iOS'),
(10,'Ruby','Scripting'),
(11,'PHP','Web'),
(12,'TypeScript','Web'),
(13,'Scala','Functional'),
(14,'Perl','Scripting'),
(15,'Dart','Mobile');
select * from programming_languages;
alter table programming_languages add release_year int,add creator varchar(50),
add popularity_rank int;
alter table programming_languages drop type;
alter table programming_languages rename column release_year to rel_year, rename column popularity_rank to pop_rank;
alter table programming_languages modify column language_name varchar(40), modify column creator varchar(40);
UPDATE programming_languages SET rel_year=1995, creator='James Gosling', pop_rank=1 WHERE id=1;
UPDATE programming_languages SET rel_year=1991, creator='Guido van Rossum', pop_rank=2 WHERE id=2;
UPDATE programming_languages SET rel_year=1972, creator='Dennis Ritchie', pop_rank=3 WHERE id=3;
UPDATE programming_languages SET rel_year=1985, creator='Bjarne Stroustrup', pop_rank=4 WHERE id=4;
UPDATE programming_languages SET rel_year=1995, creator='Brendan Eich', pop_rank=5 WHERE id=5;
UPDATE programming_languages SET rel_year=2009, creator='Robert Griesemer', pop_rank=6 WHERE id=6;
UPDATE programming_languages SET rel_year=2010, creator='Graydon Hoare', pop_rank=7 WHERE id=7;
UPDATE programming_languages SET rel_year=2011, creator='JetBrains', pop_rank=8 WHERE id=8;
UPDATE programming_languages SET rel_year=2014, creator='Apple', pop_rank=9 WHERE id=9;
UPDATE programming_languages SET rel_year=1995, creator='Yukihiro Matsumoto', pop_rank=10 WHERE id=10;
UPDATE programming_languages SET rel_year=1995, creator='Rasmus Lerdorf', pop_rank=11 WHERE id=11;
UPDATE programming_languages SET rel_year=2012, creator='Microsoft', pop_rank=12 WHERE id=12;
UPDATE programming_languages SET rel_year=2004, creator='Martin Odersky', pop_rank=13 WHERE id=13;
UPDATE programming_languages SET rel_year=1987, creator='Larry Wall', pop_rank=14 WHERE id=14;
UPDATE programming_languages SET rel_year=2011, creator='Google', pop_rank=15 WHERE id=15;
alter table programming_languages drop pop_rank;

create table frameworks (id int,framework_name varchar(50),language varchar(50));
desc frameworks;
insert into frameworks values
(1,'Spring','Java'),
(2,'Django','Python'),
(3,'Flask','Python'),
(4,'React','JavaScript'),
(5,'Angular','TypeScript'),
(6,'Vue','JavaScript'),
(7,'Laravel','PHP'),
(8,'Rails','Ruby'),
(9,'Express','JavaScript'),
(10,'ASP.NET','C#'),
(11,'Flutter','Dart'),
(12,'Next.js','JavaScript'),
(13,'Nuxt.js','JavaScript'),
(14,'Hibernate','Java'),
(15,'Bootstrap','CSS');
select * from frameworks;
alter table frameworks add release_year int,add developer varchar(50), add version varchar(20);
alter table frameworks drop language;
alter table  frameworks rename column release_year to rel_year,
rename column  version to ver;
alter table  frameworks modify framework_name VARCHAR(40),
modify developer varchar(40);
UPDATE frameworks SET rel_year=2002, developer='VMware', ver='5.0' WHERE id=1;
UPDATE frameworks SET rel_year=2005, developer='DSF', ver='4.0' WHERE id=2;
UPDATE frameworks SET rel_year=2010, developer='Armin', ver='2.0' WHERE id=3;
UPDATE frameworks SET rel_year=2013, developer='Meta', ver='18' WHERE id=4;
UPDATE frameworks SET rel_year=2016, developer='Google', ver='15' WHERE id=5;
UPDATE frameworks SET rel_year=2014, developer='Evan You', ver='3' WHERE id=6;
UPDATE frameworks SET rel_year=2011, developer='Taylor', ver='10' WHERE id=7;
UPDATE frameworks SET rel_year=2004, developer='DHH', ver='7' WHERE id=8;
UPDATE frameworks SET rel_year=2010, developer='TJ', ver='4' WHERE id=9;
UPDATE frameworks SET rel_year=2002, developer='Microsoft', ver='6' WHERE id=10;
UPDATE frameworks SET rel_year=2017, developer='Google', ver='3' WHERE id=11;
UPDATE frameworks SET rel_year=2016, developer='Vercel', ver='13' WHERE id=12;
UPDATE frameworks SET rel_year=2016, developer='Nuxt Team', ver='3' WHERE id=13;
UPDATE frameworks SET rel_year=2001, developer='RedHat', ver='6' WHERE id=14;
UPDATE frameworks SET rel_year=2011, developer='Twitter', ver='5' WHERE id=15;
alter table frameworks drop ver;

create table databse (id INT,database_name VARCHAR(50),type VARCHAR(50));
desc databse;
insert into databse values
(1,'MySQL','Relational'),
(2,'PostgreSQL','Relational'),
(3,'MongoDB','NoSQL'),
(4,'Oracle','Relational'),
(5,'SQLite','Relational'),
(6,'MariaDB','Relational'),
(7,'Cassandra','NoSQL'),
(8,'Redis','NoSQL'),
(9,'Firebase','Cloud'),
(10,'DynamoDB','Cloud'),
(11,'Neo4j','Graph'),
(12,'CouchDB','NoSQL'),
(13,'HBase','NoSQL'),
(14,'Snowflake','Cloud'),
(15,'BigQuery','Cloud');
select * from databse;
alter table databse add release_year int,add developer varchar(50),add license varchar(50);
alter table databse drop type;
alter table databse rename column release_year TO rel_year;
alter table databse modify database_name varchar(40),
modify developer varchar(40);
UPDATE databse SET rel_year=1995, developer='Oracle', license='Open' WHERE id=1;
UPDATE databse SET rel_year=1996, developer='PGDG', license='Open' WHERE id=2;
UPDATE databse SET rel_year=2009, developer='MongoDB Inc', license='SSPL' WHERE id=3;
UPDATE databse SET rel_year=1979, developer='Oracle Corp', license='Commercial' WHERE id=4;
UPDATE databse SET rel_year=2000, developer='Hipp', license='Public' WHERE id=5;
UPDATE databse SET rel_year=2009, developer='MariaDB', license='GPL' WHERE id=6;
UPDATE databse SET rel_year=2008, developer='Apache', license='Open' WHERE id=7;
UPDATE databse SET rel_year=2009, developer='Redis', license='BSD' WHERE id=8;
UPDATE databse SET rel_year=2011, developer='Google', license='Cloud' WHERE id=9;
UPDATE databse SET rel_year=2012, developer='Amazon', license='Cloud' WHERE id=10;
UPDATE databse SET rel_year=2007, developer='Neo4j', license='GPL' WHERE id=11;
UPDATE databse SET rel_year=2005, developer='Apache', license='Open' WHERE id=12;
UPDATE databse SET rel_year=2008, developer='Apache', license='Open' WHERE id=13;
UPDATE databse SET rel_year=2012, developer='Snowflake', license='Cloud' WHERE id=14;
UPDATE databse SET rel_year=2011, developer='Google', license='Cloud' WHERE id=15;
alter table databse drop license;

create table operating_systems (id int,os_name varchar(50),platform varchar(50));
desc operating_systems;
insert into operating_systems values
(1,'Windows','Desktop'),
(2,'Linux','Server'),
(3,'macOS','Desktop'),
(4,'Android','Mobile'),
(5,'iOS','Mobile'),
(6,'Ubuntu','Linux'),
(7,'Fedora','Linux'),
(8,'Debian','Linux'),
(9,'RedHat','Enterprise'),
(10,'Chrome OS','Desktop'),
(11,'Solaris','Server'),
(12,'FreeBSD','Unix'),
(13,'Kali Linux','Security'),
(14,'Arch Linux','Linux'),
(15,'OpenSUSE','Linux');
select * from operating_systems;
alter table operating_systems add release_year int,add developer varchar(50),
add version varchar(20);
alter table operating_systems drop platform;
alter table operating_systems rename column release_year TO rel_year;
alter table operating_systems modify os_name varchar(40),
modify developer varchar(40);
UPDATE operating_systems SET rel_year=1985, developer='Microsoft', version='11' WHERE id=1;
UPDATE operating_systems SET rel_year=1991, developer='Linus', version='6' WHERE id=2;
UPDATE operating_systems SET rel_year=2001, developer='Apple', version='Sonoma' WHERE id=3;
UPDATE operating_systems SET rel_year=2008, developer='Google', version='14' WHERE id=4;
UPDATE operating_systems SET rel_year=2007, developer='Apple', version='17' WHERE id=5;
UPDATE operating_systems SET rel_year=2004, developer='Canonical', version='22' WHERE id=6;
UPDATE operating_systems SET rel_year=2003, developer='RedHat', version='38' WHERE id=7;
UPDATE operating_systems SET rel_year=1993, developer='Debian', version='12' WHERE id=8;
UPDATE operating_systems SET rel_year=2000, developer='RedHat', version='9' WHERE id=9;
UPDATE operating_systems SET rel_year=2011, developer='Google', version='Flex' WHERE id=10;
UPDATE operating_systems SET rel_year=1993, developer='Oracle', version='11' WHERE id=11;
UPDATE operating_systems SET rel_year=1993, developer='FreeBSD', version='13' WHERE id=12;
UPDATE operating_systems SET rel_year=2013, developer='OffSec', version='2024' WHERE id=13;
UPDATE operating_systems SET rel_year=2002, developer='Arch', version='Rolling' WHERE id=14;
UPDATE operating_systems SET rel_year=2005, developer='SUSE', version='Leap' WHERE id=15;
alter table operating_systems drop version;

create table software_worldd (id int,company_name varchar(50),country varchar(50));
desc software_worldd;
insert into software_worldd values
(1,'Microsoft','USA'),
(2,'Google','USA'),
(3,'Apple','USA'),
(4,'Amazon','USA'),
(5,'Meta','USA'),
(6,'IBM','USA'),
(7,'Oracle','USA'),
(8,'Intel','USA'),
(9,'Adobe','USA'),
(10,'SAP','Germany'),
(11,'Infosys','India'),
(12,'TCS','India'),
(13,'Wipro','India'),
(14,'HCL','India'),
(15,'Zoho','India');
select * from software_worldd;
alter table software_worldd add founded_year int,add ceo varchar(50),add revenue varchar(20);
alter table software_worldd drop country;
alter table software_worldd rename column founded_year to f_year;
alter table software_worldd modify company_name varchar(40),
modify ceo varchar(40);
UPDATE software_worldd SET f_year=1975, ceo='Satya Nadella', revenue='200B' WHERE id=1;
UPDATE software_worldd SET f_year=1998, ceo='Sundar Pichai', revenue='280B' WHERE id=2;
UPDATE software_worldd SET f_year=1976, ceo='Tim Cook', revenue='390B' WHERE id=3;
UPDATE software_worldd SET f_year=1994, ceo='Andy Jassy', revenue='500B' WHERE id=4;
UPDATE software_worldd SET f_year=2004, ceo='Mark Zuckerberg', revenue='130B' WHERE id=5;
UPDATE software_worldd SET f_year=1911, ceo='Arvind Krishna', revenue='60B' WHERE id=6;
UPDATE software_worldd SET f_year=1977, ceo='Safra Catz', revenue='50B' WHERE id=7;
UPDATE software_worldd SET f_year=1968, ceo='Pat Gelsinger', revenue='70B' WHERE id=8;
UPDATE software_worldd SET f_year=1982, ceo='Shantanu Narayen', revenue='20B' WHERE id=9;
UPDATE software_worldd SET f_year=1972, ceo='Christian Klein', revenue='35B' WHERE id=10;
UPDATE software_worldd SET f_year=1981, ceo='Salil Parekh', revenue='18B' WHERE id=11;
UPDATE software_worldd SET f_year=1968, ceo='K Krithivasan', revenue='25B' WHERE id=12;
UPDATE software_worldd SET f_year=1945, ceo='Thierry Delaporte', revenue='12B' WHERE id=13;
UPDATE software_worldd SET f_year=1976, ceo='Vijayakumar', revenue='11B' WHERE id=14;
UPDATE software_worldd SET f_year=1996, ceo='Sridhar Vembu', revenue='1B' WHERE id=15;
alter table software_worldd drop revenue;