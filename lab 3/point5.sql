-- Active: 1698135558995@@127.0.0.1@3306@cd
USE cd;
SELECT DISTINCT firstname, surname FROM members
JOIN bookings ON members.memid = bookings.memid
JOIN facilities ON facilities.facid = bookings.facid
WHERE facilities.facility LIKE '%Tennis court%';