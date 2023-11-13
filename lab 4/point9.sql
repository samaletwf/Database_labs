-- Active: 1699770253704@@127.0.0.1@3306@cd
/* Выводим всех членов клуба, которые не арендовали объекты клуба, затем 
удаляем всех членов клуба, которые не арендовали объекты клуба
и проверяем есть ли член клуба с memid = 37  */
USE cd;
SELECT * FROM members
WHERE memid NOT  IN (SELECT memid FROM bookings);
DELETE FROM members
WHERE memid NOT IN (SELECT memid FROM bookings);
SELECT * FROM members WHERE memid = 37;
