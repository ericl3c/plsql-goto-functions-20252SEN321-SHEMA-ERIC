SET SERVEROUTPUT ON;

DECLARE
    v_number NUMBER := 10;
BEGIN

    IF v_number > 0 THEN
        GOTO positive_number;
    ELSE
        GOTO not_positive;
    END IF;

    <<positive_number>>
    DBMS_OUTPUT.PUT_LINE('The number is positive.');
    GOTO finish;

    <<not_positive>>
    DBMS_OUTPUT.PUT_LINE('The number is zero or negative.');

    <<finish>>
    DBMS_OUTPUT.PUT_LINE('Program completed.');

END;
/