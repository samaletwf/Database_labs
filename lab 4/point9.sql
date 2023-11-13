USE cd;
/* Выводим всех членов клуба, которые не арендовали объекты клуба, затем 
удаляем всех членов клуба, которые не арендовали объекты клуба
и проверяем есть ли член клуба с memid = 37  */
SELECT * FROM members
WHERE memid NOT  IN (SELECT memid FROM bookings);
DELETE FROM members
WHERE memid NOT IN (SELECT memid FROM bookings);
SELECT * FROM members WHERE memid = 37;
