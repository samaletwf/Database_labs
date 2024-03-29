-- Active: 1699770253704@@127.0.0.1@3306@cd
/* Составьте список имен и идентификаторов каждого участника, а также их первого бронирования после 1 сентября 2012 г. Упорядочите по идентификатору участника.*/
USE cd;
SELECT m.memid AS 'Идентификатор участника', CONCAT(m.firstname, ' ', m.surname) AS 'ФИО', MIN(b.starttime) AS 'Первое бронирование'
FROM members m 
LEFT JOIN bookings b ON m.memid = b.memid 
WHERE b.starttime > '2012-09-01' AND m.firstname != 'Guest'
GROUP BY m.memid, m.firstname, m.surname 
ORDER BY m.memid;