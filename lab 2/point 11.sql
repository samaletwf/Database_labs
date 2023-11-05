-- Active: 1698135558995@@127.0.0.1@3306@cd
/*создаём новый столбец, называем его "расположение" и в нём указываем то, откуда был взят объект, после объединяем две таблицы через UNION*/
USE cd;
SELECT firstname AS "union", "member" AS "members/facilies" FROM members WHERE firstname !="GUEST"
UNION ALL
SELECT facility, "facility" FROM facilities;