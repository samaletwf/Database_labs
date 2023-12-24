-- Active: 1699770253704@@127.0.0.1@3306@proj5-2-1
use project;
CREATE TABLE data (
  id INTEGER PRIMARY KEY,
  ir_value FLOAT,
  ir_strength FLOAT,
  us_value FLOAT,
  acc_x FLOAT,
  acc_y FLOAT,
  acc_z FLOAT,
  gyr_acc_x FLOAT,
  gyr_acc_y FLOAT,
  gyr_acc_z FLOAT,
  gyr_x FLOAT,
  gyr_y FLOAT,
  gyr_z FLOAT,
  angle FLOAT,
  water_level FLOAT
);

LOAD DATA INFILE '"C:\Users\aleks\Desktop\water-level_turbidity-high1.csv"'
INTO TABLE data
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY ''
IGNORE 1 ROWS;

LOAD DATA INFILE '"C:\Users\aleks\Desktop\water-level_turbidity-medium1.csv"'
INTO TABLE data
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY ''
IGNORE 1 ROWS;

LOAD DATA INFILE '"C:\Users\aleks\Desktop\water-level_turbidity-low1.csv"'
INTO TABLE data
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY ''
IGNORE 1 ROWS;