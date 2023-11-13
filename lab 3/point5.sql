/* Выберите ФИО (== имя + фамилия) всех, кто покупал корты 1 и 2. */
USE cd;
SELECT DISTINCT surname,firstname FROM members 
JOIN bookings ON bookings.memid=members.memid
JOIN facilities ON bookings.facid=facilities.facid
WHERE facility LIKE "%Court 1%" OR facility LIKE "%Court 2%";