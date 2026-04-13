create database college_db;
use college_db;

CREATE TABLE student_details (id INT,age MEDIUMINT,fees DECIMAL(10,2),register_no BIGINT,name VARCHAR(50),section CHAR(2),
                              description LONGTEXT,remarks MEDIUMTEXT,admission_date DATE,login_time TIME,created_at DATETIME,
                              updated_at TIMESTAMP,is_active BOOLEAN,is_verified BOOLEAN);
desc student_details;
insert into student_details values
(1,21,25000.50,100001,'Yogesh','A','Student info','Good',
 '2024-01-01','10:00:00','2024-01-01 10:00:00',NOW(),1,1);
 select * from student_details;
 
create table teacher_details (id INT,age MEDIUMINT,fees DECIMAL(10,2),register_no BIGINT,name VARCHAR(50),
                              section CHAR(2),description LONGTEXT,remarks MEDIUMTEXT,admission_date DATE,
							  login_time TIME,created_at DATETIME,updated_at TIMESTAMP,is_active BOOLEAN,
							  is_verified BOOLEAN);
desc teacher_details;
insert into teacher_details values
(2,35,50000.75,200001,'Ramesh','T','Teacher info','Excellent',
 '2023-05-01','09:00:00','2023-05-01 09:00:00',NOW(),1,1);
select * from teacher_details;

create table course_details (id INT,age MEDIUMINT,fees DECIMAL(10,2),register_no BIGINT,name VARCHAR(50),
							section CHAR(2),description LONGTEXT,remarks MEDIUMTEXT,admission_date DATE,
							login_time TIME,created_at DATETIME,updated_at TIMESTAMP,is_active BOOLEAN,
							is_verified BOOLEAN);
desc course_details;
insert into course_details values
(3,0,15000.00,300001,'Java','C','Course details','Important',
 '2024-02-01','11:00:00','2024-02-01 11:00:00',NOW(),1,0);
select * from course_details;

create table department_details (id INT,age MEDIUMINT,fees DECIMAL(10,2),register_no BIGINT,
								name VARCHAR(50),section CHAR(2),description LONGTEXT,remarks MEDIUMTEXT,
								admission_date DATE,login_time TIME,created_at DATETIME,
								updated_at TIMESTAMP,is_active BOOLEAN,is_verified BOOLEAN);
desc department_details;
insert into department_details values
(4,0,0.00,400001,'CSE','D','Department info','Core dept',
 '2020-01-01','08:00:00','2020-01-01 08:00:00',NOW(),1,1);
select * from department_details;

create table employee_details (id INT,age MEDIUMINT,fees DECIMAL(10,2),register_no BIGINT,
								name VARCHAR(50),section CHAR(2),description LONGTEXT,remarks MEDIUMTEXT,
								admission_date DATE,login_time TIME,created_at DATETIME,
								updated_at TIMESTAMP,is_active BOOLEAN,is_verified BOOLEAN);
desc employee_details;
insert into employee_details values
(5,30,40000.00,500001,'Arun','E','Employee data','Staff',
 '2022-03-01','10:30:00','2022-03-01 10:30:00',NOW(),1,0);
select * from  employee_details;

create table salary_details (
    id INT, age MEDIUMINT, fees DECIMAL(10,2), register_no BIGINT,
    name VARCHAR(50), section CHAR(2), description LONGTEXT, remarks MEDIUMTEXT,
    admission_date DATE, login_time TIME, created_at DATETIME, updated_at TIMESTAMP,
    is_active BOOLEAN, is_verified BOOLEAN);
desc salary_details;
insert into salary_details values
(6,40,60000.00,600001,'Salary','S','Salary info','Monthly',
 '2024-01-01','09:30:00','2024-01-01 09:30:00',NOW(),1,1);
select * from salary_details;

create table attendance_details (
    id INT, age MEDIUMINT, fees DECIMAL(10,2), register_no BIGINT,
    name VARCHAR(50), section CHAR(2), description LONGTEXT, remarks MEDIUMTEXT,
    admission_date DATE, login_time TIME, created_at DATETIME, updated_at TIMESTAMP,
    is_active BOOLEAN, is_verified BOOLEAN);
desc attendance_details;
insert into attendance_details values
(7,0,0.00,700001,'Attendance','A','Attendance info','Daily',
 '2024-01-02','08:30:00','2024-01-02 08:30:00',NOW(),1,1);
select * from attendance_details;

create table exam_details (
    id INT, age MEDIUMINT, fees DECIMAL(10,2), register_no BIGINT,
    name VARCHAR(50), section CHAR(2), description LONGTEXT, remarks MEDIUMTEXT,
    admission_date DATE, login_time TIME, created_at DATETIME, updated_at TIMESTAMP,
    is_active BOOLEAN, is_verified BOOLEAN);
desc exam_details;
insert into exam_details values
(8,0,0.00,800001,'Exam','E','Exam info','Semester',
 '2024-03-01','10:00:00','2024-03-01 10:00:00',NOW(),1,0);
select * from exam_details;

create table result_details (
    id INT, age MEDIUMINT, fees DECIMAL(10,2), register_no BIGINT,
    name VARCHAR(50), section CHAR(2), description LONGTEXT, remarks MEDIUMTEXT,
    admission_date DATE, login_time TIME, created_at DATETIME, updated_at TIMESTAMP,
    is_active BOOLEAN, is_verified BOOLEAN);
desc result_details;
insert into result_details values
(9,0,0.00,900001,'Result','R','Result info','Published',
 '2024-04-01','11:00:00','2024-04-01 11:00:00',NOW(),1,1);
select * from result_details;

create table library_details (id INT,age MEDIUMINT,fees DECIMAL(10,2),register_no BIGINT,name VARCHAR(50),
								section CHAR(2),description LONGTEXT,remarks MEDIUMTEXT,
								admission_date DATE,login_time TIME,created_at DATETIME,
								updated_at TIMESTAMP,is_active BOOLEAN,is_verified BOOLEAN);
desc library_details;
insert into library_details values
(10,0,0.00,1000001,'Library','L','Library info','Books',
 '2024-05-01','12:00:00','2024-05-01 12:00:00',NOW(),1,1);
select * from library_details;

create table hostel_details (id INT,age MEDIUMINT,fees DECIMAL(10,2),register_no BIGINT,
							name VARCHAR(50),section CHAR(2),description LONGTEXT,remarks MEDIUMTEXT,
							admission_date DATE,login_time TIME,created_at DATETIME,updated_at TIMESTAMP,
							is_active BOOLEAN,is_verified BOOLEAN);
desc hostel_details;
insert into hostel_details values
(11,0,20000.00,1100001,'Hostel','H','Hostel info','Stay',
 '2024-06-01','01:00:00','2024-06-01 01:00:00',NOW(),1,0);
select * from hostel_details;

create table transport_details (id INT,age MEDIUMINT,fees DECIMAL(10,2),register_no BIGINT,
								name VARCHAR(50),section CHAR(2),description LONGTEXT,
								remarks MEDIUMTEXT,admission_date DATE,login_time TIME,
								created_at DATETIME,updated_at TIMESTAMP,is_active BOOLEAN,
								is_verified BOOLEAN);
desc transport_details;
insert into transport_details values
(12,0,15000.00,1200001,'Bus','T','Transport info','Daily',
 '2024-07-01','02:00:00','2024-07-01 02:00:00',NOW(),1,1);
select * from transport_details;

create table fee_details (id INT,age MEDIUMINT,fees DECIMAL(10,2),register_no BIGINT,
							name VARCHAR(50),section CHAR(2),description LONGTEXT,remarks MEDIUMTEXT,
							admission_date DATE,login_time TIME,created_at DATETIME,updated_at TIMESTAMP,
							is_active BOOLEAN,is_verified BOOLEAN);
desc fee_details;
insert into fee_details values
(13,0,30000.00,1300001,'Fees','F','Fee info','Paid',
 '2024-08-01','03:00:00','2024-08-01 03:00:00',NOW(),1,1);
select * from fee_details;

create table event_details (id INT,age MEDIUMINT,fees DECIMAL(10,2),register_no BIGINT,
							name VARCHAR(50),section CHAR(2),description LONGTEXT,remarks MEDIUMTEXT,
							admission_date DATE,login_time TIME,created_at DATETIME,updated_at TIMESTAMP,
							is_active BOOLEAN,is_verified BOOLEAN);
desc event_details;
insert into event_details values
(14,0,5000.00,1400001,'Event','E','Event info','Fest',
 '2024-09-01','04:00:00','2024-09-01 04:00:00',NOW(),1,0);
select * from event_details;

create table alumni_details (id INT,age MEDIUMINT,fees DECIMAL(10,2),register_no BIGINT,name VARCHAR(50),
							section CHAR(2),description LONGTEXT,remarks MEDIUMTEXT,admission_date DATE,
							login_time TIME,created_at DATETIME,updated_at TIMESTAMP,is_active BOOLEAN,
							is_verified BOOLEAN);
desc alumni_details;
insert into alumni_details values
(16,26,0.00,1600001,'Suresh','A','Alumni info','Passed out',
 '2020-06-01','10:15:00','2020-06-01 10:15:00',NOW(),1,1);
select * from alumni_details;