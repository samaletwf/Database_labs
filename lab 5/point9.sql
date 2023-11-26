-- Active: 1699770253704@@127.0.0.1@3306@cd
/*Создайте список объектов с общим доходом менее 1000. Создайте выходную таблицу, состоящую 
из названия объекта и дохода, отсортированного по доходу. Помните, что для гостей и участников действуют разные цены!*/
USE cd;
SELECT facility, SUM(IF(b.memid = 0, f.guestcost * b.slots, f.membercost * b.slots)) AS revenue 
FROM facilities f
LEFT JOIN bookings b ON b.facid = f.facid 
GROUP BY f.facility 
HAVING revenue < 1000 
ORDER BY revenue;