SELECT T1.FIRST_NAME, T1.LAST_NAME, T1.SALARY 
FROM employees T1
INNER JOIN employees T2
ON T1.SALARY > T2.SALARY
WHERE T2.LAST_NAME = 'Bell';


-- SELECT T1.FIRST_NAME, T1.LAST_NAME, T1.SALARY 
-- FROM employees T1
-- WHERE SALARY > (SELECT SALARY FROM employees WHERE LAST_NAME = 'Bell')


