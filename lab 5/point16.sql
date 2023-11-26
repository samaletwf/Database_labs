-- Active: 1699770253704@@127.0.0.1@3306@cd
/*Составьте список трех крупнейших объектов, приносящих доход (включая связи). Вывод названия и ранга объекта, отсортированный по рангу и названию объекта.
Примечание: используйте функцию ранжирования*/
USE cd;
SELECT f.facility, RANK() OVER (ORDER BY SUM(IF(b.memid = 0, f.guestcost * b.slots, f.membercost * b.slots)) DESC) as ranks
FROM facilities f
JOIN bookings b ON f.facid = b.facid 
GROUP BY f.facility 
ORDER BY ranks, f.facility
LIMIT 3;