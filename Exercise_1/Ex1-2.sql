SELECT MANAGER_ID, MIN(SALARY) AS LOWEST_SALARY
FROM employees
GROUP BY MANAGER_ID;


-- -- If you want more information about the lowest paid employee of each manager, use this query
-- WITH RankedSalaries AS (
--     SELECT
--         MANAGER_ID,
--         EMPLOYEE_ID,
--         FIRST_NAME,
--         LAST_NAME,
--         SALARY,
--         ROW_NUMBER() OVER (PARTITION BY MANAGER_ID ORDER BY SALARY ASC) AS SalaryRank
--     FROM employees
-- )
-- SELECT MANAGER_ID, EMPLOYEE_ID, FIRST_NAME, LAST_NAME, SALARY
-- FROM RankedSalaries
-- WHERE SalaryRank = 1;