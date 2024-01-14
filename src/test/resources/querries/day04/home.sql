-- 1. FIND OUT COUNTRY NAME AND REGION NAME FROM COUNTRIES AND REGION TABLE
SELECT COUNTRY_NAME, REGION_NAME
FROM COUNTRIES c
         JOIN REGIONS r
              ON c.REGION_ID = r.REGION_ID;
-- 2. FIND OUT FIRST_NAME AND JOB_TITLE FROM JOBS AND EMPLOYEES TABLE
SELECT FIRST_NAME, JOB_TITLE
FROM EMPLOYEES e
         JOIN JOBS j ON e.JOB_ID = J.JOB_ID;

-- 3. FIND OUT DEPARTMENT_NAME AND CITY
SELECT DEPARTMENT_NAME, CITY
FROM DEPARTMENTS d
         JOIN LOCATIONS l ON d.LOCATION_ID = l.LOCATION_ID;

-- 4. FIND OUT ALL CITIES  AND COUNTRY NAMES
select CITY, COUNTRY_NAME
from LOCATIONS l
         join COUNTRIES c
              on l.COUNTRY_ID = c.COUNTRY_ID;

-- 5. FIND OUT FIRST_NAME, LAST NAME, DEPARTMENT ID , DEPARTMENT NAME  FOR DEPARTMENT ID 80 OR 40
SELECT FIRST_NAME, LAST_NAME, e.DEPARTMENT_ID, DEPARTMENT_NAME
FROM EMPLOYEES e
         JOIN DEPARTMENTS d on e.DEPARTMENT_ID = d.DEPARTMENT_ID
WHERE e.DEPARTMENT_ID IN (80, 40);

-- 6. FIND OUT CITY , COUNTRY_NAME OF THAT CITY , REGION_NAME OF THAT CITY
SELECT CITY, COUNTRY_NAME, REGION_NAME
FROM LOCATIONS locations
         JOIN countries ON countries.country_id = locations.country_id
         JOIN regions ON countries.region_id = regions.region_id;

-- 7. FIND OUT EMPLOYEES FIRST_NAME , JOB_TITLE , DEPARTMENT_NAME , CITY
SELECT e.FIRST_NAME, j.JOB_TITLE, d.DEPARTMENT_NAME, l.CITY
FROM EMPLOYEES e
         LEFT JOIN JOBS j ON j.JOB_ID = e.JOB_ID
         LEFT JOIN DEPARTMENTS d ON d.DEPARTMENT_ID = E.DEPARTMENT_ID
         LEFT JOIN LOCATIONS l ON d.LOCATION_ID = l.LOCATION_ID;

-- 8. FIND OUT EMPLOYEES FIRST_NAME , JOB_TITLE , DEPARTMENT_NAME , CITY , COUNTRY_NAME , REGION_NAME
SELECT e.FIRST_NAME, j.JOB_TITLE, d.DEPARTMENT_NAME, l.CITY, c.COUNTRY_NAME, r.REGION_NAME
FROM EMPLOYEES e
         LEFT JOIN JOBS j ON j.JOB_ID = e.JOB_ID
         LEFT JOIN DEPARTMENTS d ON d.DEPARTMENT_ID = E.DEPARTMENT_ID
         LEFT JOIN LOCATIONS l ON d.LOCATION_ID = l.LOCATION_ID
         LEFT JOIN COUNTRIES c ON l.COUNTRY_ID = c.COUNTRY_ID
         LEFT JOIN REGIONS r ON c.REGION_ID = r.REGION_ID;

--9. FIND OUR  EMPLOYEES FIRST_NAME, LAST NAME, DEPARTMENT ID AND ALL DEPARTMENTS
--  INCLUDING  WHERE DO NOT HAVE ANY EMPLOYEE.
SELECT e.FIRST_NAME, e.LAST_NAME, e.DEPARTMENT_ID, d.DEPARTMENT_NAME
FROM EMPLOYEES e
         FULL JOIN DEPARTMENTS d ON e.DEPARTMENT_ID = d.DEPARTMENT_ID;

--10. FIND OUT ALL DEPARTMENT_NAME  , LOCATION_ID , AND COUNTRY_ID
-- INCLUDING THOSE LOCATIONS  WITH NO DEPARTMENT
SELECT d.DEPARTMENT_NAME, l.LOCATION_ID, c.COUNTRY_ID
FROM DEPARTMENTS d
         FULL JOIN LOCATIONS l ON d.LOCATION_ID = l.LOCATION_ID
         LEFT JOIN COUNTRIES c ON l.COUNTRY_ID = c.COUNTRY_ID;

--11.FIND OUT DEPARTMENT_NAME , LOCATION_ID , AND COUNTRY_NAME
-- INCLUDING THOSE COUNTRIES WITH NO DEPARTMENT
SELECT d.DEPARTMENT_NAME, l.LOCATION_ID, c.COUNTRY_NAME
FROM DEPARTMENTS d
         FULL JOIN LOCATIONS l ON d.LOCATION_ID = l.LOCATION_ID
         FULL JOIN COUNTRIES c ON l.COUNTRY_ID = c.COUNTRY_ID;

--12. FIND OUT EMPLOYEES FIRST_NAME, DEPARTMENT ID AND DEPARTMENT NAME
-- INCLUDING THOSE DOES NOT HAVE DEPARTMENT
-- INCLUDING THOSE DEPARTMENTS  DOES NOT HAVE ANY MATCHING EMPLOYEES
SELECT e.FIRST_NAME, d.DEPARTMENT_ID, d.DEPARTMENT_NAME
FROM EMPLOYEES e
         FULL JOIN DEPARTMENTS d ON e.DEPARTMENT_ID = d.DEPARTMENT_ID;

