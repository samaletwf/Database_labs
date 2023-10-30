-- Active: 1698135558995@@127.0.0.1@3306@cd
USE cd;
SELECT m1.surname, m1.firstname, m2.surname, m2.firstname
FROM members m1
LEFT JOIN members m2 ON m1.recommendedby = m2.memid
ORDER BY m1.surname, m1.firstname;