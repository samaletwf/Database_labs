-- Active: 1699770253704@@127.0.0.1@3306@hotel
USE hotel;
-- Создание базы данных
CREATE DATABASE Hotel;
USE Hotel;

-- Создание таблиц
CREATE TABLE Hotels (
    HotelID INT PRIMARY KEY,
    Name VARCHAR(255)
);

CREATE TABLE Rooms (
    RoomID INT PRIMARY KEY,
    HotelID INT,
    Class INT,
    NumRooms INT,
    NumBeds INT,
    Price DECIMAL(10, 2),
    FOREIGN KEY (HotelID) REFERENCES Hotels(HotelID)
);

CREATE TABLE Guests (
    Passport VARCHAR(20) PRIMARY KEY,
    FullName VARCHAR(255),
    Gender CHAR(1),
    HotelID INT,
    RoomID INT,
    CheckInDate DATE,
    CheckOutDate DATE,
    FOREIGN KEY (HotelID) REFERENCES Hotels(HotelID),
    FOREIGN KEY (RoomID) REFERENCES Rooms(RoomID)
);
-- Заполнение таблиц данными
-- Hotels
INSERT INTO Hotels VALUES (1, 'Hotel1');
INSERT INTO Hotels VALUES (2, 'Hotel2');

-- Rooms
INSERT INTO Rooms VALUES (1, 1, 1, 10, 20, 100.00);
INSERT INTO Rooms VALUES (2, 1, 2, 5, 10, 150.00);
INSERT INTO Rooms VALUES (3, 2, 1, 8, 16, 120.00);

-- Guests
INSERT INTO Guests VALUES ('1234567890', 'John Doe', 'M', 1, 1, '2023-01-01', '2023-01-10');
INSERT INTO Guests VALUES ('9876543210', 'Jane Smith', 'F', 2, 2, '2023-02-15', '2023-02-25');
INSERT INTO Guests VALUES ('1112223334', 'David Johnson', 'M', 1, 3, '2023-03-10', '2023-03-20');
-- Создание представлений
-- Количество свободных мест по гостиницам
CREATE VIEW FreeSeatsPerHotel AS
SELECT
    Hotels.HotelID,
    Hotels.Name AS HotelName,
    SUM(Rooms.NumBeds - COUNT(Guests.RoomID)) AS FreeSeats
FROM Hotels
LEFT JOIN Rooms ON Hotels.HotelID = Rooms.HotelID
LEFT JOIN Guests ON Rooms.RoomID = Guests.RoomID AND Hotels.HotelID = Guests.HotelID
GROUP BY Hotels.HotelID, Hotels.Name;

-- Стоимость заказа постояльца
CREATE VIEW GuestOrderCost AS
SELECT
    Guests.Passport,
    Guests.FullName,
    Hotels.Name AS HotelName,
    Rooms.RoomID,
    Rooms.Price * DATEDIFF(Guests.CheckOutDate, Guests.CheckInDate) AS OrderCost
FROM Guests
JOIN Hotels ON Guests.HotelID = Hotels.HotelID
JOIN Rooms ON Guests.RoomID = Rooms.RoomID;

-- Доход гостиницы за период
CREATE VIEW HotelIncome AS
SELECT
    Hotels.HotelID,
    Hotels.Name AS HotelName,
    SUM(Rooms.Price * DATEDIFF(Guests.CheckOutDate, Guests.CheckInDate)) AS TotalIncome
FROM Hotels
JOIN Rooms ON Hotels.HotelID = Rooms.HotelID
JOIN Guests ON Rooms.RoomID = Guests.RoomID AND Hotels.HotelID = Guests.HotelID
GROUP BY Hotels.HotelID, Hotels.Name;