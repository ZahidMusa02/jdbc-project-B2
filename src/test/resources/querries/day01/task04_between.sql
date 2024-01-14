SELECT * FROM EMPLOYEES;

/*
    BETWEEN clause
    it helps to apply the range to filter the result.
    It will do the range inclusively
 */


-- GET me FN, Salary, who is making salary more than 7000 and less than 10000
SELECT  FIRST_NAME, SALARY from EMPLOYEES
WHERE SALARY>7000 AND SALARY< 10000;

SELECT  FIRST_NAME, SALARY from EMPLOYEES
WHERE SALARY>=7000 AND SALARY<= 10000;

-- BETWEEN lower AND higher (INCLUDED)
SELECT  FIRST_NAME, SALARY from EMPLOYEES
WHERE SALARY BETWEEN 7000 AND 10000;


-- Samples for AND and OR
-- DO I have any relation between salary and email?
SELECT * FROM EMPLOYEES;
-- GET me FN, LN, Salary who is making salary more than 7000 and their department_id is 80
SELECT FIRST_NAME, LAST_NAME, SALARY FROM EMPLOYEES
WHERE SALARY > 7000 AND DEPARTMENT_ID = 80;


-- GET me ALL information who is working as "IT_PROG" or "SA_REP"
SELECT * FROM EMPLOYEES
WHERE JOB_ID = 'IT_PROG' OR JOB_ID = 'SA_REP';
