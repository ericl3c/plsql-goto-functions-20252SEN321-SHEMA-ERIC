CREATE OR REPLACE FUNCTION fn_years_of_service (
    p_employee_id IN NUMBER
)
RETURN NUMBER
IS
    v_hire_date DATE;
    v_years NUMBER;
BEGIN
    SELECT hire_date
    INTO v_hire_date
    FROM employee
    WHERE employee_id = p_employee_id;

    v_years := TRUNC(MONTHS_BETWEEN(SYSDATE, v_hire_date) / 12);

    RETURN v_years;

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN NULL;
END;
/