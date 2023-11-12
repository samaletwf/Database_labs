/*удаляем все записи в таблице bookings и возвращаем их обратно*/
USE cd;
start TRANSACTION;
DELETE FROM bookings;
SELECT * FROM bookings;
ROLLBACK;
SELECT * FROM bookings;