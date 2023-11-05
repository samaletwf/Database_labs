-- Active: 1698135558995@@127.0.0.1@3306@cd
USE cd;
SELECT facility FROM facilities
JOIN bookings ON facilities.facid=bookings.facid
WHERE facilities.facility LIKE "%Tennis court%" and bookings.starttime LIKE "%2012-09-12%";