CREATE OR REPLACE FUNCTION fn_calculate_tax (
    p_salary IN NUMBER
)
RETURN NUMBER
IS
    v_tax NUMBER(12,2);
BEGIN

    IF p_salary <= 500000 THEN
        v_tax := 0;

    ELSIF p_salary <= 700000 THEN
        v_tax := p_salary * 0.10;

    ELSE
        v_tax := p_salary * 0.20;
    END IF;

    RETURN v_tax;

END;
/