SELECT * FROM DOCUMENT.users
WHERE first_name = 'AcADFf';

SELECT * FROM DOCUMENT.users
WHERE supervisor_user_id IS NOT NULL;

SELECT * FROM DOCUMENT.users
WHERE users.department_id IS NOT NULL;

--Get me all info for users where the role name is advisor
SELECT COUNT(*) FROM document.users
WHERE role_name = 'advisor';

SELECT * FROM identity.departments;


SELECT * FROM document.users;