
-- EXERCISE 2 - AGGREGATE FUNCTIONS
--  Query A1 - total cost of all animal rescues
SELECT SUM(COST) FROM PETRESCUE;

-- Query A2 - save total cost 
SELECT SUM(COST) AS SUM_OF_COST FROM PETRESCUE;

-- Query A3 - max quantity of animals rescued
SELECT MAX(QUANTITY) FROM PETRESCUE;

-- Query A4 - Average cost of animals rescued 
SELECT AVG(COST) FROM PETRESCUE;

-- EXERCISE 3 - SCALAR AND STRING FUNCTIONS 
-- Query B1 - rounded cost of each rescue 
SELECT ROUND(COST) FROM PETRESCUE;

-- Query B2 - Length of each animal name
SELECT LENGTH(ANIMAL) FROM PETRESCUE;

-- Query B3 - Animal names in uppercase
SELECT UCASE(ANIMAL) FROM PETRESCUE;

-- Query B4 - Animal names in uppercase without duplications
SELECT DISTINCT(UCASE(ANIMAL)) FROM PETRESCUE;

-- Query B5 - Only cats 
SELECT * FROM PETRESCUE
		WHERE LCASE(ANIMAL) = 'cat';
		
-- EXERCISE 4 - DATE AND TIME FUNCTIONS 
-- Query C1 - day of the month when cats have been rescued
SELECT DAY(RESCUEDATE) FROM PETRESCUE
		WHERE LCASE(ANIMAL) = 'cat';
		
-- Query C2 - Number of rescues on the 5th month
SELECT QUANTITY FROM PETRESCUE
		WHERE MONTH(RESCUEDATE) = 5;
		
-- Query C3 - Number of rescues on the 14th day of the month
SELECT QUANTITY FROM PETRESCUE
		WHERE DAY(RESCUEDATE) = 14;
		
-- Query C4 - the third day from each rescue
SELECT (RESCUEDATE + 3 DAYS) FROM PETRESCUE;

-- Query C5 - how long since animals were rescued
SELECT (CURRENT_DATE - RESCUEDATE) FROM PETRESCUE;
