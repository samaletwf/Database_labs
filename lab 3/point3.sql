/* Выберите членов клуба, которые рекомендовали других членов для вступления. */
USE cd;
SELECT m1.surname, m1.firstname 
FROM members m1, members m2
WHERE m1.memid=m2.recommendedby;