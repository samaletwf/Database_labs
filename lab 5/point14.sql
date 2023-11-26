-- Active: 1699770253704@@127.0.0.1@3306@cd
/*Выведите идентификатор объекта, в котором забронировано наибольшее количество мест (slot). Убедитесь, что в случае ничьей все результаты привязки будут выведены.
Примечание: используйте функцию ранжирования*/
USE cd;
SELECT DISTINCT facid, slots 
FROM (SELECT facid, slots, RANK() OVER (ORDER BY slots DESC) as maxrank FROM bookings) ranked_bookings
WHERE maxrank = 1;