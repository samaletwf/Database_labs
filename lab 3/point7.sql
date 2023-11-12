-- Выбираем список членов клуба, включая рекомендованных людей, без объединений и дубликатов. Сортируем по ФИО
 USE cd;
SELECT DISTINCT concat(mem.surname,' ',mem.firstname) AS Full_membername,
concat(rec.surname,' ',rec.firstname) AS Full_recname
FROM members mem, (SELECT memid, recommendedby, surname, firstname FROM members) rec 
WHERE mem.recommendedby=rec.memid; 