SELECT * FROM EMPLOYEES;



-- LETS say we want to print the employee's full name with their manager's name
-- There is not a lot of times, the structure the table to join to itself. DO NOT SPEND a lot of time on this.
SELECT E1.FIRST_NAME, E1.LAST_NAME,E1.EMPLOYEE_ID, E1.MANAGER_ID, E2.FIRST_NAME
FROM EMPLOYEES E1 INNER JOIN EMPLOYEES E2
                             ON E1.MANAGER_ID = E2.EMPLOYEE_ID;