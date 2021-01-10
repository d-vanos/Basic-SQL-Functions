-- Query 1 - selecting employees who live in Elgin, IL
SELECT * FROM EMPLOYEES
		WHERE ADDRESS like '%Elgin,IL';

-- Query 2 - selecting employees born in the 70s
SELECT * FROM EMPLOYEES
		WHERE B_DATE like '197%';

-- Query 3 - selecting employees with salaries between 60,000-70,000
SELECT * FROM EMPLOYEES
		WHERE SALARY between 60000 and 70000;
		
-- Query 4 - aordering employees by department and last name (descending)
SELECT * FROM EMPLOYEES
		ORDER BY DEP_ID, L_NAME DESC;
		
-- Query 5a - number of employees in each department
SELECT DEP_ID, count(DEP_ID) FROM EMPLOYEES
		GROUP BY DEP_ID;
		
-- Query 5b, 5c, 5d- number of employees and average salary, ordered by average salary
-- for departments with less than 4 employees 
SELECT 
	DEP_ID, 
	COUNT(DEP_ID) AS NUM_EMPLOYEES, 
	AVG(SALARY) AS AVG_SALARY
		FROM EMPLOYEES
	GROUP BY DEP_ID
	HAVING COUNT(DEP_ID) < 4	
	ORDER BY AVG_SALARY;
