SELECT emp.FIRST_NAME, emp.LAST_NAME, emp.DEPARTMENT_ID, jobs.JOB_TITLE
FROM employees emp
LEFT JOIN jobs
    ON emp.JOB_ID = jobs.JOB_ID
LEFT JOIN departments dep
    ON dep.DEPARTMENT_ID = emp.DEPARTMENT_ID
LEFT JOIN locations loc
    ON loc.LOCATION_ID = dep.LOCATION_ID
WHERE loc.CITY = 'London'
