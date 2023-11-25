-- Active: 1699770253704@@127.0.0.1@3306@cd
/*Рассчитайте количество аренд каждого из объектов клуба.*/
USE cd;
SELECT facility, sum(b.slots) AS 'Количество аренд' 
FROM facilities f 
INNER JOIN bookings AS b ON b.facid = f.facid 
GROUP BY f.facid;