USE hotel1;
INSERT INTO gostinnica (id, name) VALUES
(1, 'Hotel Alpha'),
(2, 'Hotel Beta'),
(3, 'Hotel Gamma'),
(4, 'Hotel Delta'),
(5, 'Hotel Epsilon'),
(6, 'Hotel Zeta');
INSERT INTO members (passport, fio, sex, name, datavsel, datavisel) VALUES
('P1234567', 'Ivanov Ivan', 'Male', 'Hotel Alpha', '2023-01-01', '2023-01-05'),
('P2345678', 'Petrova Maria', 'Female', 'Hotel Beta', '2023-01-02', '2023-01-06'),
('P3456789', 'Sidorov Alexey', 'Male', 'Hotel Gamma', '2023-01-03', '2023-01-07'),
('P4567890', 'Kuznetsov Nikolay', 'Male', 'Hotel Delta', '2023-01-04', '2023-01-08'),
('P5678901', 'Sokolova Anna', 'Female', 'Hotel Epsilon', '2023-01-05', '2023-01-09'),
('P6789012', 'Morozov Dmitry', 'Male', 'Hotel Zeta', '2023-01-06', '2023-01-10');
INSERT INTO numbers (name, class, numcount, countmest, price) VALUES
('Hotel Alpha', 'Standard', 20, 2, 100.00),
('Hotel Beta', 'Economy', 30, 1, 80.00),
('Hotel Gamma', 'Deluxe', 15, 3, 150.00),
('Hotel Delta', 'Standard', 20, 2, 100.00),
('Hotel Epsilon', 'Suite', 10, 4, 200.00),
('Hotel Zeta', 'Economy', 30, 1, 80.00);