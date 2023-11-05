-- Active: 1698135558995@@127.0.0.1@3306@cd
/*выводим только некоторые столбцы и  строки для которых membercost = 0 с помощью условия после функции WHERE*/
USE cd;
SELECT facility FROM facilities WHERE membercost = 0 ;