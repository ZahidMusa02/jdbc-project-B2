SELECT * FROM EMPLOYEES;


/*
    DISTINCT
    Removes duplicates from you request.
 */

--Display street address and postal code from locations
SELECT STREET_ADDRESS, POSTAL_CODE FROM LOCATIONS;


-- All first names including duplicates
SELECT FIRST_NAME FROM EMPLOYEES;

-- GET me a unique firstName from employees
SELECT DISTINCT FIRST_NAME FROM EMPLOYEES;


-- GET me unique job_ids from employees
SELECT DISTINCT JOB_ID FROM EMPLOYEES;


--GET me unique country_id from locations
SELECT DISTINCT COUNTRY_ID FROM LOCATIONS;


-- GET me unique job_id
SELECT DISTINCT JOB_ID FROM JOBS;
SELECT  JOB_ID FROM JOBS;


SELECT JOB_ID FROM EMPLOYEES;