-- Active: 1698135558995@@127.0.0.1@3306@cd
/*Вводим новое значение параметра initialoutlay в строке с facid = 1*/
USE cd;
UPDATE facilities
SET initialoutlay = 10000
WHERE facid = 1;
SELECT * FROM facilities;