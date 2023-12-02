-- Active: 1699770253704@@127.0.0.1@3306@cd
/*Выведите наименования всех объектов клуба заглавными буквами, 
если они содержат в названии слово ‘Tennis’*/
USE cd;
SELECT UPPER(facility) AS 'Названия c заглавными буквами' 
FROM facilities 
WHERE BINARY facility LIKE '%Tennis%';