select * from EMPLOYEES;



/*
 WHERE clause
 This clause comes after FROM clause of the Select statement
 */


-- get me FIRST_NAME, LAST_NAME, SALARY where First Name is David
SELECT FIRST_NAME, LAST_NAME, SALARY from EMPLOYEES
WHERE FIRST_NAME = 'David';

-- get me firstname , last name, salary where first name is david and last name is Lee
SELECT FIRST_NAME, LAST_NAME, SALARY from EMPLOYEES
WHERE FIRST_NAME = 'David' AND LAST_NAME = 'Lee';

-- GET me all information who is making salary more than 6000
SELECT * from EMPLOYEES
WHERE SALARY > 6000;


-- GET me all information who is making salary less or equal 6000
SELECT * from EMPLOYEES
WHERE SALARY <= 6000;

SELECT * from EMPLOYEES
WHERE SALARY = 6000 or SALARY < 6000;

SELECT EMAIL FROM EMPLOYEES
WHERE SALARY <= 6000;