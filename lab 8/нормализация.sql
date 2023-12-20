-- Active: 1699770253704@@127.0.0.1@3306@hotel
USE hotel;
-- Удаляем внешний ключ из таблицы Rooms
ALTER TABLE Rooms
DROP FOREIGN KEY rooms_ibfk_1;

-- Удаляем столбец HotelID из таблицы Rooms
ALTER TABLE Rooms
DROP COLUMN HotelID;

-- Добавляем столбец HotelID в таблицу Rooms
ALTER TABLE Rooms
ADD COLUMN HotelID INT;

-- Добавляем внешний ключ к новой таблице Hotels
ALTER TABLE Rooms
ADD FOREIGN KEY (HotelID) REFERENCES Hotels(HotelID);
