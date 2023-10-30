-- Active: 1698135558995@@127.0.0.1@3306@cd
USE cd;
SELECT DISTINCT m1.surname, m1.firstname
FROM members m1, members m2
WHERE m1.memid = m2.recommendedby;