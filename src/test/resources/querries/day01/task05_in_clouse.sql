SELECT * FROM EMPLOYEES;
/*
    IN CLOUSE
    It is kind of or logic
 */


SELECT * FROM EMPLOYEES
WHERE JOB_ID = 'IT_PROG' OR JOB_ID = 'SA_REP' OR JOB_ID = 'ST_MAN' OR JOB_ID = 'MK_REP';

SELECT * FROM EMPLOYEES
WHERE JOB_ID IN ('IT_PROG', 'SA_REP', 'ST_MAN', 'MK_REP');


-- Display city WHere country_id is IT, US, UK
SELECT CITY, COUNTRY_ID FROM LOCATIONS
WHERE COUNTRY_ID IN ('IT', 'US', 'UK');



-- Display Postal Code, City where country_id is not IT, US
SELECT * FROM LOCATIONS;

SELECT  POSTAL_CODE, CITY, COUNTRY_ID FROM LOCATIONS
WHERE COUNTRY_ID NOT IN ('IT', 'US');


-- Display all information where employee_id is 134, 123, 145, 146
SELECT * FROM EMPLOYEES
WHERE EMPLOYEE_ID IN (134, 123, 145, 146);

-- Display all information for employees whose department id is NULL
-- Display all information for employees whose department id is not available / is empty
SELECT * FROM EMPLOYEES
WHERE DEPARTMENT_ID IS NULL;

--Display all information for employees whose department id is NOT NULL
SELECT * FROM EMPLOYEES
WHERE DEPARTMENT_ID IS NOT NULL;

