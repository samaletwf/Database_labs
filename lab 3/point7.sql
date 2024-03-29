-- Active: 1699770253704@@127.0.0.1@3306@cd
/*Выбираем список членов клуба, включая рекомендованных людей, без объединений и дубликатов. Сортируем по ФИО*/
 USE cd;
SELECT DISTINCT CONCAT(m1.firstname, ' ', m1.surname) AS fiomember, (SELECT CONCAT(m2.firstname, ' ', m2.surname) FROM members m2 
WHERE m2.memid = m1.recommendedby) AS fiorecommendedby 
FROM members m1
WHERE m1.memid != 0 
ORDER BY fiomember; 