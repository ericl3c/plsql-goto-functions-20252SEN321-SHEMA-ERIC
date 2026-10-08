CREATE OR REPLACE FUNCTION fn_validate_payroll (
    p_employee_id IN NUMBER
)
RETURN VARCHAR2
IS
    v_salary employee.salary%TYPE;
    v_employee_name employee.employee_name%TYPE;
BEGIN
    SELECT employee_name, salary
    INTO v_employee_name, v_salary
    FROM employee
    WHERE employee_id = p_employee_id;

    IF v_salary IS NULL OR v_salary <= 0 THEN
        RETURN 'INVALID PAYROLL';
    ELSE
        RETURN 'VALID PAYROLL';
    END IF;

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN 'EMPLOYEE NOT FOUND';
END;
/