SET SERVEROUTPUT ON;

DECLARE
    v_salary NUMBER := 650000;
BEGIN
    IF v_salary < 500000 THEN
        GOTO low_salary;
    ELSIF v_salary <= 700000 THEN
        GOTO medium_salary;
    ELSE
        GOTO high_salary;
    END IF;

    <<low_salary>>
    DBMS_OUTPUT.PUT_LINE(
        'Salary: ' || v_salary || ' - LOW salary review.'
    );
    GOTO finish;

    <<medium_salary>>
    DBMS_OUTPUT.PUT_LINE(
        'Salary: ' || v_salary || ' - MEDIUM salary review.'
    );
    GOTO finish;

    <<high_salary>>
    DBMS_OUTPUT.PUT_LINE(
        'Salary: ' || v_salary || ' - HIGH salary review.'
    );

    <<finish>>
    DBMS_OUTPUT.PUT_LINE('Salary review completed.');

END;
/