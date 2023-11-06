-- Active: 1698135558995@@127.0.0.1@3306@cd
/* Удаляем запись о госте с memid = 37, из таблицы members, потом возвращаем всё как было*/ 
USE cd;
START TRANSACTION;
DELETE FROM members WHERE memid = 37;
SELECT * FROM members;
ROLLBACK;
SELECT * FROM members;