USE cd;
/* Добавляем spa с такими же параметрами как в первом задании */
INSERT INTO facilities (facid, facility, membercost, guestcost, initialoutlay,monthlymaintenance )
SELECT 12, facility, membercost, guestcost, initialoutlay,monthlymaintenance  FROM facilities WHERE facid = 9;
SELECT * FROM facilities;