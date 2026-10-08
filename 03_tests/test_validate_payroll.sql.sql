SET SERVEROUTPUT ON;
SET LINESIZE 120
SET PAGESIZE 50

COLUMN employee_id FORMAT 999
COLUMN employee_name FORMAT A15
COLUMN salary FORMAT 999,999,999
COLUMN payroll_status FORMAT A15

SELECT
    employee_id,
    employee_name,
    salary,
    fn_validate_payroll(employee_id) AS payroll_status
FROM employee
ORDER BY employee_id;