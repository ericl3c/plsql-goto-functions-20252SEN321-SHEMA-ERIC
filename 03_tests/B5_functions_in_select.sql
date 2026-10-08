SET SERVEROUTPUT ON;
SET LINESIZE 200
SET PAGESIZE 50

COLUMN employee_id FORMAT 999
COLUMN employee_name FORMAT A15
COLUMN salary FORMAT 999,999,999
COLUMN annual_salary FORMAT 999,999,999
COLUMN years_of_service FORMAT 99
COLUMN tax FORMAT 999,999,999
COLUMN department_name FORMAT A22

SELECT
    employee_id,
    employee_name,
    salary,
    fn_annual_salary(employee_id) AS annual_salary,
    fn_years_of_service(employee_id) AS years_of_service,
    fn_calculate_tax(salary) AS tax,
    fn_dept_name(department_id) AS department_name
FROM employee
ORDER BY employee_id;