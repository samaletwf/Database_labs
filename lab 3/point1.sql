-- Active: 1698135558995@@127.0.0.1@3306@cd
USE cd;
SELECT starttime
FROM bookings
JOIN members ON bookings.memid = members.memid
WHERE members.firstname = 'David' AND members.surname = 'Farrell';