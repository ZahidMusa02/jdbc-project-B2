SELECT * FROM EMPLOYEES;

/*
    ORDER BY
        It allows us to sort the data based on the provided column name
        It can be sorted ASC or DESC order
 */

-- Display all information based on who is making high salary to low salary
SELECT * FROM EMPLOYEES
ORDER BY SALARY DESC;


-- Display all information based on who is making low salary to high salary
SELECT * FROM EMPLOYEES
ORDER BY SALARY;
--or
SELECT * FROM EMPLOYEES
ORDER BY SALARY ASC;

-- It is also possible to sort based on index number as well
-- In DB, column index numbers start from 1
SELECT * FROM EMPLOYEES
ORDER BY 11 ASC;


-- SELECT * FROM EMPLOYEES
-- ORDER BY 12 ASC; -- Since 12 is out of bond index, it will give an ERROR

-- GET me email and sort them in asc order by salary
SELECT EMAIL, FIRST_NAME, LAST_NAME from EMPLOYEES
ORDER BY 3 ASC; -- Once we Apply SELECT statement with certain number of column names, the max index we can give is the max column number we provided in SELECT




--Display all info from employees where employee_id < 110, sort them based on their first_name
SELECT * FROm EMPLOYEES
WHERE EMPLOYEE_ID < 110
ORDER BY FIRST_NAME;
--or
SELECT * FROm EMPLOYEES
WHERE EMPLOYEE_ID < 110
ORDER BY 2;


--Display all information from employees based on first name ascending, last name descending
SELECT * FROM EMPLOYEES
ORDER BY FIRST_NAME ASC, LAST_NAME DESC;
--or
SELECT * FROM EMPLOYEES
ORDER BY FIRST_NAME, LAST_NAME DESC;
--or
SELECT * FROM EMPLOYEES
ORDER BY 2 ASC, 3 DESC;


-- Display all info sorted on who is making high salary to low
SELECT * FROM EMPLOYEES
ORDER BY SALARY DESC;
