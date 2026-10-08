SET SERVEROUTPUT ON;

SELECT
    employee_id,
    employee_name,
    fn_annual_salary(employee_id) AS annual_salary
FROM employee
ORDER BY employee_id;

SELECT
    employee_id,
    employee_name,
    fn_years_of_service(employee_id) AS years_of_service
FROM employee
ORDER BY employee_id;

SELECT
    employee_id,
    employee_name,
    fn_calculate_tax(salary) AS tax
FROM employee
ORDER BY employee_id;

SELECT
    employee_id,
    employee_name,
    fn_dept_name(department_id) AS department_name
FROM employee
ORDER BY employee_id;