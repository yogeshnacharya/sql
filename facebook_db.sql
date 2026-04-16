create database facebook_db;
use  facebook_db;

create table user_info (
    user_id CHAR(4) PRIMARY KEY,
    userName VARCHAR(20) not null UNIQUE,
    phone_number BIGINT UNIQUE CHECK(phone_number BETWEEN 1000000000 AND 9999999999),
    dob DATE NOT NULL CHECK (dob BETWEEN '2000-01-01' AND '2015-12-31'),
    country VARCHAR(10) DEFAULT 'India'
);
desc user_info;
INSERT INTO user_info VALUES ('U001','Amit',9876543210,'2002-05-10','India');
INSERT INTO user_info VALUES ('U002','Ravi',9123456789,'2003-08-21','India');
INSERT INTO user_info VALUES ('U003','Sneha',9988776655,'2001-12-15','India');
INSERT INTO user_info VALUES ('U004','Kiran',9871234560,'2004-03-09','India');
INSERT INTO user_info VALUES ('U005','Pooja',9765432109,'2005-07-18','India');
INSERT INTO user_info VALUES ('U006','Rahul',9345678901,'2006-11-25','India');
INSERT INTO user_info VALUES ('U007','Neha',9234567810,'2007-01-30','India');
INSERT INTO user_info VALUES ('U008','Arjun',9123987654,'2008-06-14','India');
INSERT INTO user_info VALUES ('U009','Divya',9012345678,'2009-09-22','India');
INSERT INTO user_info VALUES ('U010','Vikram',9898765432,'2010-04-11','India');
INSERT INTO user_info VALUES ('U011','Anjali',9789654321,'2011-10-05','India');
INSERT INTO user_info VALUES ('U012','Manoj',9678543210,'2012-02-19','India');
INSERT INTO user_info VALUES ('U013','Kavya',9567432109,'2013-07-27','India');
INSERT INTO user_info VALUES ('U014','Suresh',9456321098,'2014-05-03','India');
INSERT INTO user_info VALUES ('U015','Meena',9345210987,'2015-12-01','India');
select * from user_info;

create table msg_info(message_id int primary key,user_name varchar(20) not null unique,
test_message varchar(100) not null,send boolean not null,user_id char(4),
foreign key(user_id) references user_info(user_id));
desc msg_info;
INSERT INTO msg_info VALUES (1,'Amit','Hello there!',1,'U001');
INSERT INTO msg_info VALUES (2,'Ravi','How are you?',1,'U002');
INSERT INTO msg_info VALUES (3,'Sneha','Good morning',0,'U003');
INSERT INTO msg_info VALUES (4,'Kiran','Let us meet',1,'U004');
INSERT INTO msg_info VALUES (5,'Pooja','Project done',1,'U005');
INSERT INTO msg_info VALUES (6,'Rahul','Call me later',0,'U006');
INSERT INTO msg_info VALUES (7,'Neha','Thank you!',1,'U007');
select * from msg_info;

create table posts_info (
    post_id INT PRIMARY KEY,
    post_content VARCHAR(200) NOT NULL,
    post_date DATE NOT NULL,
    user_id CHAR(4),
    FOREIGN KEY (user_id) REFERENCES user_info(user_id)
);
desc posts_info;
INSERT INTO posts_info VALUES (101,'Post 1','2024-01-01','U001');
INSERT INTO posts_info VALUES (102,'Post 2','2024-01-02','U002');
INSERT INTO posts_info VALUES (103,'Post 3','2024-01-03','U003');
INSERT INTO posts_info VALUES (104,'Post 4','2024-01-04','U004');
INSERT INTO posts_info VALUES (105,'Post 5','2024-01-05','U005');
INSERT INTO posts_info VALUES (106,'Post 6','2024-01-06','U006');
INSERT INTO posts_info VALUES (107,'Post 7','2024-01-07','U007');
INSERT INTO posts_info VALUES (108,'Post 8','2024-01-08','U008');
INSERT INTO posts_info VALUES (109,'Post 9','2024-01-09','U009');
INSERT INTO posts_info VALUES (110,'Post 10','2024-01-10','U010');
INSERT INTO posts_info VALUES (111,'Post 11','2024-01-11','U011');
INSERT INTO posts_info VALUES (112,'Post 12','2024-01-12','U012');
INSERT INTO posts_info VALUES (113,'Post 13','2024-01-13','U013');
INSERT INTO posts_info VALUES (114,'Post 14','2024-01-14','U014');
INSERT INTO posts_info VALUES (115,'Post 15','2024-01-15','U015');
select * from posts_info;

CREATE TABLE comments_info (
    comment_id INT PRIMARY KEY,
    comment_text VARCHAR(150) NOT NULL,
    post_id INT,
    user_id CHAR(4),
    FOREIGN KEY (post_id) REFERENCES posts_info(post_id),
    FOREIGN KEY (user_id) REFERENCES user_info(user_id)
);
desc comments_info;
INSERT INTO comments_info VALUES (1,'Nice!',101,'U002');
INSERT INTO comments_info VALUES (2,'Good post',102,'U003');
INSERT INTO comments_info VALUES (3,'Awesome',103,'U004');
INSERT INTO comments_info VALUES (4,'Great work',104,'U005');
INSERT INTO comments_info VALUES (5,'Interesting',105,'U006');
INSERT INTO comments_info VALUES (6,'Loved it',106,'U007');
INSERT INTO comments_info VALUES (7,'Well done',107,'U008');
select * from comments_info;

CREATE TABLE friends_info (
    friend_id INT PRIMARY KEY,
    user_id CHAR(4),
    friend_user_id CHAR(4),
    status VARCHAR(10) DEFAULT 'accepted'
);
desc friends_info;
INSERT INTO friends_info VALUES (1,'U001','U002','accepted');
INSERT INTO friends_info VALUES (2,'U003','U004','accepted');
INSERT INTO friends_info VALUES (3,'U005','U006','accepted');
INSERT INTO friends_info VALUES (4,'U007','U008','accepted');
INSERT INTO friends_info VALUES (5,'U009','U010','accepted');
INSERT INTO friends_info VALUES (6,'U011','U012','accepted');
INSERT INTO friends_info VALUES (7,'U013','U014','accepted');
INSERT INTO friends_info VALUES (8,'U015','U001','accepted');
INSERT INTO friends_info VALUES (9,'U002','U003','accepted');
INSERT INTO friends_info VALUES (10,'U004','U005','accepted');
INSERT INTO friends_info VALUES (11,'U006','U007','accepted');
INSERT INTO friends_info VALUES (12,'U008','U009','accepted');
INSERT INTO friends_info VALUES (13,'U010','U011','accepted');
INSERT INTO friends_info VALUES (14,'U012','U013','accepted');
INSERT INTO friends_info VALUES (15,'U014','U015','accepted');
select * from friends_info;

CREATE TABLE friend_requests (
    request_id INT PRIMARY KEY,
    sender_id CHAR(4),
    receiver_id CHAR(4),
    request_status VARCHAR(10) DEFAULT 'pending',
    FOREIGN KEY (sender_id) REFERENCES user_info(user_id),
    FOREIGN KEY (receiver_id) REFERENCES user_info(user_id)
);
desc friend_requests;
INSERT INTO friend_requests VALUES (1,'U001','U003','pending');
INSERT INTO friend_requests VALUES (2,'U002','U004','pending');
INSERT INTO friend_requests VALUES (3,'U005','U007','pending');
INSERT INTO friend_requests VALUES (4,'U006','U008','pending');
INSERT INTO friend_requests VALUES (5,'U009','U011','pending');
INSERT INTO friend_requests VALUES (6,'U010','U012','pending');
INSERT INTO friend_requests VALUES (7,'U013','U015','pending');
select * from friend_requests;

CREATE TABLE likes_info (
    like_id INT PRIMARY KEY,
    user_id CHAR(4),
    post_id INT
);
desc likes_info;
INSERT INTO likes_info VALUES (1,'U001',101);
INSERT INTO likes_info VALUES (2,'U002',102);
INSERT INTO likes_info VALUES (3,'U003',103);
INSERT INTO likes_info VALUES (4,'U004',104);
INSERT INTO likes_info VALUES (5,'U005',105);
INSERT INTO likes_info VALUES (6,'U006',106);
INSERT INTO likes_info VALUES (7,'U007',107);
INSERT INTO likes_info VALUES (8,'U008',108);
INSERT INTO likes_info VALUES (9,'U009',109);
INSERT INTO likes_info VALUES (10,'U010',110);
INSERT INTO likes_info VALUES (11,'U011',111);
INSERT INTO likes_info VALUES (12,'U012',112);
INSERT INTO likes_info VALUES (13,'U013',113);
INSERT INTO likes_info VALUES (14,'U014',114);
INSERT INTO likes_info VALUES (15,'U015',115);
select * from likes_info;

CREATE TABLE reactions_info (
    reaction_id INT PRIMARY KEY,
    reaction_type VARCHAR(20) NOT NULL,
    like_id INT,
    FOREIGN KEY (like_id) REFERENCES likes_info(like_id)
);
desc reactions_info;
INSERT INTO reactions_info VALUES (1,'Like',1);
INSERT INTO reactions_info VALUES (2,'Love',2);
INSERT INTO reactions_info VALUES (3,'Wow',3);
INSERT INTO reactions_info VALUES (4,'Haha',4);
INSERT INTO reactions_info VALUES (5,'Sad',5);
INSERT INTO reactions_info VALUES (6,'Angry',6);
INSERT INTO reactions_info VALUES (7,'Care',7);
select * from reactions_info;