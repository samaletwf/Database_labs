-- Active: 1698135558995@@127.0.0.1@3306@cd
/*вносим строку с установленными значениями в имеющуюся таблицу*/
USE cd;
INSERT INTO facilities (facid, facility, membercost, guestcost, initialoutlay, monthlymaintenance)
VALUES (9, 'spa', 20, 30, 100000, 800);
SELECT * FROM facilities;