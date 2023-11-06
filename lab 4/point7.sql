-- Active: 1698135558995@@127.0.0.1@3306@cd
/*удаляем все записи в таблице bookings и возвращаем их обратно*/
USE cd;
start TRANSACTION;
DELETE FROM bookings;
SELECT * FROM bookings;
ROLLBACK;
SELECT * FROM bookings;