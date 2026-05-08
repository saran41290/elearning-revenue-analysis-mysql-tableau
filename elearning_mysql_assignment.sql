-- =========================================
-- MODULE END ASSIGNMENT
-- Analyzing E-Learning Platform Purchases using MySQL
-- =========================================
-- 1. Create Database and Use Database
CREATE DATABASE elearning_platform_db;
USE elearning_platform_db;
-- 2. Create Tables
CREATE TABLE learners(
learner_id int primary key,
full_name varchar(100),
country varchar(50)
);
CREATE TABLE courses(
course_id int primary key,
course_name varchar(200),
category varchar(100),
unit_price decimal(10,2)
);
CREATE TABLE purchases(
purchase_id int primary key,
learner_id int,
course_id int,
quantity int,
purchase_date date,
foreign key(learner_id) references learners(learner_id) on delete cascade on update cascade,
foreign key(course_id) references courses(course_id) on delete cascade on update cascade
);
-- 3. Insert Sample Data
INSERT INTO learners(learner_id,full_name,country) VALUES
(101,'Saranya D','India'),
(102,'Alex Johnson','UAE'),
(103,'Priya Nair','UAE'),
(104,'Daniel Lee','Singapore'),
(105,'Maria Gomez','Canada');
INSERT INTO learners (learner_id, full_name, country) VALUES
(106,'Neha Sharma','India'),
(107,'Rahul Verma','India'),
(108,'Ananya Iyer','India'),
(109,'Karthik Raj','India'),
(110,'Sanjay Kumar','India'),
(111,'Meera Nair','India'),
(112,'Divya Menon','India'),
(113,'Rohit Sharma','India'),
(114,'Aisha Khan','UAE'),
(115,'Omar Ali','UAE'),
(116,'Fatima Noor','UAE'),
(117,'Zayed Hassan','UAE'),
(118,'Liam Carter','Canada'),
(119,'Sophia Wilson','Canada'),
(120,'Noah Brown','Canada'),
(121,'Emma Taylor','Canada'),
(122,'Lucas Martin','Canada'),
(123,'Olivia Davis','Canada'),
(124,'Ethan Clark','Singapore'),
(125,'Chloe Tan','Singapore'),
(126,'Ryan Lim','Singapore'),
(127,'Grace Wong','Singapore'),
(128,'Daniel Koh','Singapore'),
(129,'Mia Lee','Singapore'),
(130,'Jacob Harris','USA'),
(131,'Emily White','USA'),
(132,'Michael Scott','USA'),
(133,'Jessica Hall','USA'),
(134,'David Green','USA'),
(135,'Sarah Adams','USA'),
(136,'Benjamin Young','UK'),
(137,'Ella Walker','UK'),
(138,'James King','UK'),
(139,'Amelia Wright','UK'),
(140,'Logan Hill','UK'),
(141,'Harper Lewis','UK'),
(142,'Yuki Tanaka','Japan'),
(143,'Hina Suzuki','Japan'),
(144,'Kenji Sato','Japan'),
(145,'Aarav Patel','India'),
(146,'Ishita Rao','India'),
(147,'Vihaan Singh','India'),
(148,'Nidhi Kapoor','India'),
(149,'Aditya Joshi','India'),
(150,'Riya Bansal','India'),
(151,'Kabir Malhotra','India'),
(152,'Pooja Reddy','India'),
(153,'Arnav Desai','India'),
(154,'Sneha Pillai','India');
INSERT INTO learners(learner_id, full_name, country)
VALUES
(155,'Priya Natarajan','India'),
(156,'Ethan Cooper','USA'),
(157,'Sophia Martinez','Canada');
INSERT INTO courses(course_id,course_name,category,unit_price)VALUES
(201,'Excel for Business Analytics','Analytics Basics',49.99),      
(202,'Power BI Dashboarding','Business Intelligence',69.99),      
(203,'SQL for Data Analysis','Database Analytics',79.99),      
(204,'Python for Data Analysis','Programming',89.99),      
(205,'Tableau Storytelling','Business Intelligence',59.99); 
INSERT INTO courses(course_id, course_name, category, unit_price)
VALUES(206,'Machine Learning Fundamentals','AI & Data Science',129.99); 
INSERT INTO purchases
(purchase_id, learner_id, course_id, quantity, purchase_date)
VALUES
(201,105,201,1,'2025-01-05'),
(202,106,202,2,'2025-01-06'),
(203,107,203,1,'2025-01-07'),
(204,108,204,1,'2025-01-08'),
(205,109,205,2,'2025-01-09'),
(206,110,201,1,'2025-01-10'),
(207,111,202,2,'2025-01-11'),
(208,112,203,1,'2025-01-12'),
(209,113,204,1,'2025-01-13'),
(210,114,205,2,'2025-01-14'),
(211,115,201,1,'2025-01-15'),
(212,116,202,2,'2025-01-16'),
(213,117,203,1,'2025-01-17'),
(214,118,204,1,'2025-01-18'),
(215,119,205,2,'2025-01-19'),
(216,120,201,1,'2025-01-20'),
(217,121,202,2,'2025-01-21'),
(218,122,203,1,'2025-01-22'),
(219,123,204,1,'2025-01-23'),
(220,124,205,2,'2025-01-24'),
(221,125,201,1,'2025-01-25'),
(222,126,202,2,'2025-01-26'),
(223,127,203,1,'2025-01-27'),
(224,128,204,1,'2025-01-28'),
(225,129,205,2,'2025-01-29'),
(226,130,201,1,'2025-01-30'),
(227,131,202,2,'2025-02-01'),
(228,132,203,1,'2025-02-02'),
(229,133,204,1,'2025-02-03'),
(230,134,205,2,'2025-02-04'),
(231,135,201,1,'2025-02-05'),
(232,136,202,2,'2025-02-06'),
(233,137,203,1,'2025-02-07'),
(234,138,204,1,'2025-02-08'),
(235,139,205,2,'2025-02-09'),
(236,140,201,1,'2025-02-10'),
(237,141,202,2,'2025-02-11'),
(238,142,203,1,'2025-02-12'),
(239,143,204,1,'2025-02-13'),
(240,144,205,2,'2025-02-14'),
(241,145,201,1,'2025-02-15'),
(242,146,202,2,'2025-02-16'),
(243,147,203,1,'2025-02-17'),
(244,148,204,1,'2025-02-18'),
(245,149,205,2,'2025-02-19'),
(246,150,201,1,'2025-02-20'),
(247,151,202,2,'2025-02-21'),
(248,152,203,1,'2025-02-22'),
(249,153,204,1,'2025-02-23'),
(250,154,205,2,'2025-02-24'),
(251,105,201,1,'2025-03-01'),
(252,106,202,2,'2025-03-02'),
(253,107,203,1,'2025-03-03'),
(254,108,204,1,'2025-03-04'),
(255,109,205,2,'2025-03-05'),
(256,110,201,1,'2025-03-06'),
(257,111,202,2,'2025-03-07'),
(258,112,203,1,'2025-03-08'),
(259,113,204,1,'2025-03-09'),
(260,114,205,2,'2025-03-10'),
(261,115,201,1,'2025-03-11'),
(262,116,202,2,'2025-03-12'),
(263,117,203,1,'2025-03-13'),
(264,118,204,1,'2025-03-14'),
(265,119,205,2,'2025-03-15'),
(266,120,201,1,'2025-03-16'),
(267,121,202,2,'2025-03-17'),
(268,122,203,1,'2025-03-18'),
(269,123,204,1,'2025-03-19'),
(270,124,205,2,'2025-03-20'),
(271,125,201,1,'2025-03-21'),
(272,126,202,2,'2025-03-22'),
(273,127,203,1,'2025-03-23'),
(274,128,204,1,'2025-03-24'),
(275,129,205,2,'2025-03-25'),
(276,130,201,1,'2025-03-26'),
(277,131,202,2,'2025-03-27'),
(278,132,203,1,'2025-03-28'),
(279,133,204,1,'2025-03-29'),
(280,134,205,2,'2025-03-30');    
INSERT INTO purchases(purchase_id, learner_id, course_id, quantity, purchase_date)VALUES
(301,101,201,1,'2025-03-05'),
(302,101,203,1,'2025-03-12'),
(303,101,202,1,'2025-03-15'),
(304,102,202,2,'2025-03-18'),
(305,103,201,1,'2025-03-22'),
(306,103,204,1,'2025-03-28'),
(307,104,203,2,'2025-04-02'),
(308,104,201,1,'2025-04-09');
-- =========================================================
-- 4. DATA EXPLORATION USING JOINS
/*(Data Presentation Guidelines for the following query  
● Format currency values to 2 decimal places. 
● Use aliases for column names (e.g., AS total_revenue). 
● Sort results appropriately (e.g., highest total_spent first). */
-- =========================================================
-- 4.1 INNER JOIN
-- Display each learner's purchase details(course name, category,quantity, total amount, and purchase date)
select full_name LearnerName,
purchase_id PurchaseID,
category Category,
quantity Quantity,
round((quantity*unit_price),2) as TotalAmount,
purchase_date PurchaseDate from 
learners l join purchases p on l.learner_id=p.learner_id join
courses c on c.course_id=p.course_id order by PurchaseDate;
-- 4.2 LEFT JOIN
-- Show all learners, including learners with no purchases
select l.full_name,
    l.country,
    p.purchase_id,
    p.purchase_date from learners l left join purchases p on l.learner_id=p.learner_id;
-- 4.3 RIGHT JOIN
-- Show all courses, including courses that were never purchased
select c.course_id CourseID,
c.course_name CourseName,
Category,
purchase_id PurchaseID,
learner_id LearnerID,
purchase_date PurchaseDate
 from purchases p right join courses c on p.course_id=c.course_id;
-- =========================================================
-- 5. ANALYTICAL QUERIES
-- =========================================================
-- Q1. Display each learner’s total spending (quantity × unit_price) along with their country.
with cte_Learner_TotalSpending as(
select full_name LearnerName,Country,round(coalesce(sum(quantity*unit_price),0),2) TotalSpending from 
learners l  left join purchases p on l.learner_id=p.learner_id join
courses c on c.course_id=p.course_id group by l.learner_id,full_name order by TotalSpending desc)
select * from cte_Learner_TotalSpending;
-- Q2. Find the top 3 most purchased courses based on total quantity sold.
with cte_quantities_sold as( 
select distinct course_name Course,sum(quantity) over(partition by c.course_id) TotalQuantitiesSold from 
purchases p left join courses c on c.course_id=p.course_id )
select Course,TotalQuantitiesSold ,dense_rank() over(order by TotalQuantitiesSold desc ) QuanityWiseSaleRank from cte_quantities_sold limit 3;
-- group by c.course_id order by TotalQuantitiesSold desc limit 3;
-- Q3. Show each course category’s total revenue and the number of unique learners who purchased from that category.
select Category,format(sum(unit_price*quantity),2) TotalRevenue,count(distinct p.learner_id) LearnersCount,group_concat(p.learner_id) ListOfLearners
from courses c join purchases p on c.course_id=p.course_id join learners l on l.learner_id=p.learner_id
group by category order by TotalRevenue desc;
-- Q4. List all learners who have purchased courses from more than one category.
select full_name LearnerName,count(distinct category) CategoriesPurchased,group_concat(distinct category) ListOfCategories
from courses c join purchases p on c.course_id=p.course_id join learners l on l.learner_id=p.learner_id
group by p.learner_id,LearnerName 
having CategoriesPurchased>1;
-- Q5. Identify courses that have not been purchased at all.
select c.course_id CourseID,
c.course_name CourseName,Category,purchase_id PurchaseID,learner_id LearnerID,purchase_date PurchaseDate
 from courses c left join purchases p on c.course_id=p.course_id 
 where p.purchase_id is null;