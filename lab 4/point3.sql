-- Active: 1698135558995@@127.0.0.1@3306@cd
USE cd;
INSERT INTO facilities (facid, facility, membercost, guestcost, initialoutlay,monthlymaintenance )
select max(facid)+1 ,'spa', 20, 30 , 100000, 800 from facilities;
select * from facilities;