-- Active: 1699770253704@@127.0.0.1@3306@hotel
-- Количество свободных мест по гостиницам
USE hotel;
CREATE VIEW FreeSeatsPerHotel AS
SELECT
    HotelID,
    HotelName,
    SUM(NumBeds - OccupiedSeats) AS FreeSeats
FROM (
    SELECT
        Hotels.HotelID,
        Hotels.Name AS HotelName,
        Rooms.NumBeds,
        COUNT(Guests.RoomID) AS OccupiedSeats
    FROM Hotels
    LEFT JOIN Rooms ON Hotels.HotelID = Rooms.HotelID
    LEFT JOIN Guests ON Rooms.RoomID = Guests.RoomID AND Hotels.HotelID = Guests.HotelID
    GROUP BY Hotels.HotelID, Hotels.Name, Rooms.NumBeds
) AS Subquery
GROUP BY HotelID, HotelName;
--нормализация
-- Удаляем столбец HotelID из таблицы Rooms
ALTER TABLE Rooms
DROP COLUMN HotelID;

-- Добавляем внешний ключ к новой таблице Hotels
ALTER TABLE Rooms
ADD COLUMN HotelID INT,
ADD FOREIGN KEY (HotelID) REFERENCES Hotels(HotelID);
-- Удаляем столбец RoomID из таблицы Guests
ALTER TABLE Guests
DROP COLUMN RoomID;

-- Добавляем внешний ключ к новой таблице Rooms
ALTER TABLE Guests
ADD COLUMN RoomID INT,
ADD FOREIGN KEY (RoomID) REFERENCES Rooms(RoomID);