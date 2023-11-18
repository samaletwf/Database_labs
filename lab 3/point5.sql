-- Active: 1699770253704@@127.0.0.1@3306@cd
/* Выберите ФИО (== имя + фамилия) всех, кто покупал корты 1 и 2. */
USE cd;
SELECT DISTINCT surname, firstname FROM members
JOIN bookings ON members.memid = bookings.memid
JOIN facilities ON facilities.facid = bookings.facid
WHERE facilities.facility LIKE '%Tennis court%';