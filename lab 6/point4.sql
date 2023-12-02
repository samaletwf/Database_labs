-- Active: 1699770253704@@127.0.0.1@3306@cd
/*Выведите список членов клуба, отформатированных как 'Surname, Firstname'*/
USE cd;
SELECT CONCAT(surname, ',', firstname) AS Участники 
FROM members
WHERE memid != 0;