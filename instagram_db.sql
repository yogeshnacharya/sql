CREATE DATABASE instagram_db;
USE instagram_db;

CREATE TABLE user_info (
    user_id CHAR(4) PRIMARY KEY,
    userName VARCHAR(20) not null UNIQUE,
    phone_number BIGINT UNIQUE CHECK(phone_number BETWEEN 1000000000 AND 9999999999),
    dob DATE NOT NULL CHECK (dob BETWEEN '2000-01-01' AND '2015-12-31'),
    country VARCHAR(10) DEFAULT 'India'
);
DESC user_info;
INSERT INTO user_info 
VALUES ('A0014', 'yogeshnacharya', 9742059274, '2010-03-01', 'India');
-- 0	5	21:43:51	INSERT INTO user_info 
--  VALUES ('A0014', 'yogeshnacharya', 9742059274, '2010-03-01', 'India')	Error Code: 1406. Data too long for column 'user_id' at row 1	0.000 sec
INSERT INTO user_info 
VALUES ('A001',9742059274, '2010-03-01', 'India');
-- 0	6	21:44:58	INSERT INTO user_info 
 -- VALUES ('A001',9742059274, '2010-03-01', 'India')	Error Code: 1136. Column count doesn't match value count at row 1	0.000 sec
 INSERT INTO user_info 
VALUES ('A002', 'yogeshnacharya', 97420592741, '2010-03-01', 'India');
-- 0	9	21:47:09	INSERT INTO user_info 
 -- VALUES ('A002', 'yogeshnacharya', 97420592741, '2010-03-01', 'India')	Error Code: 3819. Check constraint 'user_info_chk_1' is violated.	0.000 sec
 INSERT INTO user_info 
VALUES ('A003', 'yogeshnacharya', 9742059274, '2020-03-01', 'India');
-- 0	10	21:48:28	INSERT INTO user_info 
--  VALUES ('A003', 'yogeshnacharya', 9742059274, '2020-03-01', 'India')	Error Code: 3819. Check constraint 'user_info_chk_2' is violated.	0.000 sec
INSERT INTO user_info 
VALUES ('A004','yogeshn',9742059274, '2010-03-01', 'japan');
-- 0	11	21:50:08	INSERT INTO user_info 
 -- VALUES ('A004','yogeshn',9742059274, '2010-03-01', 'japan')	Error Code: 1062. Duplicate entry '9742059274' for key 'user_info.phone_number'	0.015 sec
 
 CREATE TABLE stories (
    story_id INT PRIMARY KEY,
    title VARCHAR(50) NOT NULL UNIQUE,
    views INT DEFAULT 0 CHECK (views >= 0),
    duration INT NOT NULL CHECK (duration BETWEEN 5 AND 60),
    status VARCHAR(10) DEFAULT 'active'
);
desc stories;
INSERT INTO stories VALUES (1,  100, 30, 'active');
-- 0	3	22:00:39	INSERT INTO stories VALUES (1,  100, 30, 'active')	Error Code: 1136. Column count doesn't match value count at row 1	0.000 sec
INSERT INTO stories VALUES (1, 'morining story', 0, 30, 'active');
	#	Time	Action	Message	Duration / Fetch
-- 0	1	22:02:08	INSERT INTO stories VALUES (1, 'morining story', 0, 30, 'active')	Error Code: 1062. Duplicate entry '1' for key 'stories.PRIMARY'	0.000 sec
INSERT INTO stories VALUES (1, 'morining story', 10, 30, 'active');
-- 0	2	22:02:53	INSERT INTO stories VALUES (1, 'morining story', 10, 30, 'active')	Error Code: 1062. Duplicate entry '1' for key 'stories.PRIMARY'	0.000 sec
INSERT INTO stories VALUES (2, 'morining story', 10, 4, 'active');
	#	Time	Action	Message	Duration / Fetch
-- 0	1	22:05:04	INSERT INTO stories VALUES (2, 'morining story', 10, 4, 'active')	Error Code: 3819. Check constraint 'stories_chk_2' is violated.	0.000 sec
INSERT INTO stories VALUES (3, 'morining story', 10, 6, 'activenog');
-- 0	2	22:05:54	INSERT INTO stories VALUES (3, 'morining story', 10, 6, 'activenog')	Error Code: 1062. Duplicate entry 'morining story' for key 'stories.title'	0.000 sec

CREATE TABLE messages (
    message_id INT PRIMARY KEY,
    message_text VARCHAR(100) NOT NULL UNIQUE,
    length INT DEFAULT 1 CHECK (length > 0),
    priority INT NOT NULL CHECK (priority BETWEEN 1 AND 5),
    status VARCHAR(10) DEFAULT 'sent'
);
desc messages;
INSERT INTO messages VALUES (1, 12, 3, 'sent');
-- 0	3	22:07:40	INSERT INTO messages VALUES (1, 12, 3, 'sent')	Error Code: 1136. Column count doesn't match value count at row 1	0.000 sec
INSERT INTO messages VALUES (1,'Hi Bobby', 0, 3, 'sent');
-- 	#	Time	Action	Message	Duration / Fetch
-- 0	1	22:09:02	INSERT INTO messages VALUES (1,'Hi Bobby', 0, 3, 'sent')	Error Code: 3819. Check constraint 'messages_chk_1' is violated.	0.000 sec
INSERT INTO messages VALUES (1,'Hi Bobby', 90, 3, 'sent');
-- 0	2	22:09:43	INSERT INTO messages VALUES (1,'Hi Bobby', 90, 3, 'sent')	Error Code: 1062. Duplicate entry '1' for key 'messages.PRIMARY'	0.000 sec
INSERT INTO messages VALUES (2,'Hi Bobby', 90, 6, 'sent');
-- 0	3	22:10:32	INSERT INTO messages VALUES (2,'Hi Bobby', 90, 6, 'sent')	Error Code: 3819. Check constraint 'messages_chk_2' is violated.	0.000 sec
INSERT INTO messages VALUES (3,'Hi Bobby', 90, 4, 'senet');
-- 0	4	22:11:23	INSERT INTO messages VALUES (3,'Hi Bobby', 90, 4, 'senet')	Error Code: 1062. Duplicate entry 'Hi Bobby' for key 'messages.message_text'	0.000 sec

CREATE TABLE notifications (
    notification_id INT PRIMARY KEY,
    notification_text VARCHAR(100) NOT NULL UNIQUE,
    count INT DEFAULT 1 CHECK (count >= 1),
    type VARCHAR(20) NOT NULL CHECK (type IN ('like', 'comment', 'follow')),
    status VARCHAR(10) DEFAULT 'unread'
);
desc notifications;
INSERT INTO notifications VALUES (1,1, 'like', 'unread');
-- 0	2	22:13:23	INSERT INTO notifications VALUES (1,1, 'like', 'unread')	Error Code: 1136. Column count doesn't match value count at row 1	0.015 sec
INSERT INTO notifications VALUES (1,'you dont like why',0, 'like', 'unread');
-- 0	3	22:15:39	INSERT INTO notifications VALUES (1,'you dont like why',0, 'like', 'unread')	Error Code: 3819. Check constraint 'notifications_chk_1' is violated.	0.000 sec
INSERT INTO notifications VALUES (1,'you dont like why',1, 'likes', 'unread');
	-- #	Time	Action	Message	Duration / Fetch
-- 0	1	22:17:25	INSERT INTO notifications VALUES (1,'you dont like why',1, 'likes', 'unread')	Error Code: 3819. Check constraint 'notifications_chk_2' is violated.	0.000 sec
INSERT INTO notifications VALUES (1,'you dont like why',1, 'like', 'unread');
-- 0	2	22:18:12	INSERT INTO notifications VALUES (1,'you dont like why',1, 'like', 'unread')	Error Code: 1062. Duplicate entry '1' for key 'notifications.PRIMARY'	0.000 sec
INSERT INTO notifications VALUES (2,'you dont like why',1, 'like', 'unreads');
-- 0	3	22:19:13	INSERT INTO notifications VALUES (2,'you dont like why',1, 'like', 'unreads')	Error Code: 1062. Duplicate entry 'you dont like why' for key 'notifications.notification_text'	0.000 sec

CREATE TABLE reels (
    reel_id INT PRIMARY KEY,
    title VARCHAR(50) NOT NULL UNIQUE,
    views INT DEFAULT 0 CHECK (views >= 0),
    duration INT NOT NULL CHECK (duration BETWEEN 10 AND 120),
    category VARCHAR(20) DEFAULT 'general'
);
desc reels;
INSERT INTO reels VALUES (1,500, 45, 'general');
-- 0	3	22:20:43	INSERT INTO reels VALUES (1,500, 45, 'general')	Error Code: 1136. Column count doesn't match value count at row 1	0.000 sec
INSERT INTO reels VALUES (1,'funny reels',-1, 45, 'general');
-- 0	4	22:21:36	INSERT INTO reels VALUES (1,'funny reels',-1, 45, 'general')	Error Code: 3819. Check constraint 'reels_chk_1' is violated.	0.000 sec
INSERT INTO reels VALUES (1,'funny reels',550, 4, 'general');
-- 0	5	22:22:20	INSERT INTO reels VALUES (1,'funny reels',550, 4, 'general')	Error Code: 3819. Check constraint 'reels_chk_2' is violated.	0.000 sec
INSERT INTO reels VALUES (1,'funny reels',550, 40, 'general');
INSERT INTO reels VALUES (1,'funny reels',550, 40, 'general');
-- 0	8	22:24:28	INSERT INTO reels VALUES (1,'funny reels',550, 40, 'general')	Error Code: 1062. Duplicate entry '1' for key 'reels.PRIMARY'	0.000 sec
INSERT INTO reels VALUES (3,'funny reels',550, 40, 'genersal');
-- 0	10	22:25:19	INSERT INTO reels VALUES (3,'funny reels',550, 40, 'genersal')	Error Code: 1062. Duplicate entry 'funny reels' for key 'reels.title'	0.000 sec