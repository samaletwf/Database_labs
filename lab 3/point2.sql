-- Active: 1699770253704@@127.0.0.1@3306@cd
/* Выберите теннисные корты, забронированные пользователями на 19 сентября 2012 года. */
USE cd;
SELECT DISTINCT facility, starttime FROM facilities
JOIN bookings ON facilities.facid = bookings.facid
WHERE facilities.facility LIKE "Tennis Court%" AND starttime > '2012.09.18' AND starttime < '2012.09.19';