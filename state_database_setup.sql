-- Step 1: Create the database
CREATE DATABASE CSD430;

-- Step 2: Create the user and grant privileges
CREATE USER 'student1'@'localhost' IDENTIFIED BY 'pass';
GRANT ALL PRIVILEGES ON CSD430.* TO 'student1'@'localhost';
FLUSH PRIVILEGES;

-- Step 3: Use the newly created database
USE CSD430;

-- Step 4: Create the table
CREATE TABLE anton_states_data (
    state_name VARCHAR(50) PRIMARY KEY,
    capital VARCHAR(50),
    population_millions DOUBLE,
    region VARCHAR(50),
    abbreviation VARCHAR(5)
);

-- Step 5: Populate the table with 10 state entries
INSERT INTO anton_states_data VALUES
('California', 'Sacramento', 39.24, 'West', 'CA'),
('Texas', 'Austin', 30.03, 'South', 'TX'),
('New York', 'Albany', 19.84, 'Northeast', 'NY'),
('Florida', 'Tallahassee', 22.24, 'South', 'FL'),
('Illinois', 'Springfield', 12.58, 'Midwest', 'IL'),
('Pennsylvania', 'Harrisburg', 12.76, 'Northeast', 'PA'),
('Ohio', 'Columbus', 11.76, 'Midwest', 'OH'),
('Georgia', 'Atlanta', 10.90, 'South', 'GA'),
('North Carolina', 'Raleigh', 10.55, 'South', 'NC'),
('Michigan', 'Lansing', 10.03, 'Midwest', 'MI');
