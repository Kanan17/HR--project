SELECT
    employee_id,
    first_name,
    last_name,
    hire_date,
    job_id,
    salary,
    commission_pct,
    manager_id,
    department_id,
    (
        SELECT
            COUNT(employee_id)
        FROM
            employees e1
        WHERE
            e1.department_id = e.department_id
    ) as dpt_count,
    (
        SELECT
            SUM(commission_pct)
        FROM
            employees e1
        WHERE
            e.manager_id = e1.manager_id
    ) AS coms_sum,
    (
        SELECT
            SUM(salary)
        FROM
            employees e1
        WHERE
            e1.department_id = e.department_id
    ) AS dpt_sum,
    (
        SELECT
            round(AVG(salary))
        FROM
            employees e1
        WHERE
            e1.department_id = e.department_id
    ) AS dpt_avg,
    (
        SELECT
            MIN(salary)
        FROM
            employees e1
        WHERE
            e1.department_id = e.department_id
    ) AS dpt_min
FROM
    employees e;
    
select * from departments; 
select * from job_history;
select * from jobs;
select * from locations;
select * from regions;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    