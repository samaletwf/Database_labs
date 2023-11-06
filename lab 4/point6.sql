-- Active: 1698135558995@@127.0.0.1@3306@cd
/* Вводим значения переменных membercost и guestcost, равные их предыдущим значениям * 1.1, в поле с facid = 0*/
USE cd;
UPDATE facilities
SET membercost = membercost * 1.1, guestcost = guestcost * 1.1
WHERE facid = 0;
SELECT * FROM facilities;