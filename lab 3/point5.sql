-- Active: 1698135558995@@127.0.0.1@3306@cd
USE cd;
SELECT DISTINCT surname,firstname FROM members 
JOIN bookings ON bookings.memid=members.memid
JOIN facilities ON bookings.facid=facilities.facid
WHERE facility LIKE "%Tennis Court%" AND firstname NOT LIKE "GUEST";