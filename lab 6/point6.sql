-- Active: 1699770253704@@127.0.0.1@3306@cd
/*Выведите все объектов клуба, если они содержат 
в названии слово  ‘Tennis’ в произвольном регистре.*/
USE cd;
SELECT facility AS 'Объекты' FROM facilities
WHERE facility LIKE '%Tennis%';