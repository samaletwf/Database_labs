-- Active: 1698135558995@@127.0.0.1@3306@cd
/*делаем выборку,где члены клуба зарегестрированы с сентября 2012 года*/
USE cd;
SELECT memid,surname,firstname FROM members WHERE joindate>"2012-08-31";