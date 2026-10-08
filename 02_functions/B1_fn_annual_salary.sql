CREATE OR REPLACE FUNCTION fn_annual_salary (
    p_employee_id IN NUMBER
)
RETURN NUMBER
IS
    v_salary NUMBER(12,2);
BEGIN
    SELECT salary
    INTO v_salary
    FROM employee
    WHERE employee_id = p_employee_id;

    RETURN v_salary * 12;

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN NULL;
END;
/