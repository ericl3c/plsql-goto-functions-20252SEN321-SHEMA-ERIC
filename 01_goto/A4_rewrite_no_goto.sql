SET SERVEROUTPUT ON;

DECLARE
    v_salary NUMBER := 650000;
BEGIN

    IF v_salary < 500000 THEN

        DBMS_OUTPUT.PUT_LINE(
            'Salary: ' || v_salary || ' - LOW salary review.'
        );

    ELSIF v_salary <= 700000 THEN

        DBMS_OUTPUT.PUT_LINE(
            'Salary: ' || v_salary || ' - MEDIUM salary review.'
        );

    ELSE

        DBMS_OUTPUT.PUT_LINE(
            'Salary: ' || v_salary || ' - HIGH salary review.'
        );

    END IF;

    DBMS_OUTPUT.PUT_LINE('Salary review completed.');

END;
/
