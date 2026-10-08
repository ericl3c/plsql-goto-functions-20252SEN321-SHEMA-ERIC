# Reflection

## 1. What I Learned About GOTO

I learned that the PL/SQL GOTO statement is used to transfer control from one part of a PL/SQL block to another labeled statement.

I also learned that GOTO has restrictions and cannot be used in every situation. The A3 exercise helped me understand that some GOTO statements are illegal and need to be corrected.

## 2. What I Learned About Functions

I learned how to create stored functions using CREATE OR REPLACE FUNCTION.

I learned how to:
- Define function parameters.
- Return a value from a function.
- Retrieve data from database tables.
- Use functions to perform calculations.
- Handle exceptions.

## 3. Functions Used in SQL

I learned that stored functions can be called directly inside a SELECT statement.

For example:

```sql
SELECT employee_id,
       employee_name,
       fn_annual_salary(employee_id)
FROM employee;
```

This allows calculated information to be displayed together with employee information.

## 4. Exception Handling

I learned how to use exception handling, especially the `NO_DATA_FOUND` exception.

For example, when an employee or department does not exist, the function can return a controlled result instead of causing the program to fail.

## 5. Debugging

During this assignment, I learned how to identify and fix Oracle errors.

I also learned how to:
- Check whether a function exists.
- Check whether a function is VALID.
- Check table data.
- Fix tablespace quota problems.
- Format SQL*Plus output.

## 6. Difference Between GOTO and Structured Programming

GOTO can transfer program execution directly to a label, but structured programming using IF, ELSIF, ELSE and other control structures can make code easier to understand and maintain.

The A4 exercise showed how a program using GOTO can be rewritten using normal structured control flow.

## 7. Challenges I Experienced

One challenge was working with Oracle SQL*Plus and understanding Oracle user privileges.

I also experienced errors when functions were not available or when database tables contained no data. I learned to check the database objects and table data before testing my functions.

## 8. AI Use

AI assistance was used to help explain PL/SQL concepts, understand Oracle errors, organize the SQL files, and troubleshoot problems during the assignment.

I tested the SQL code in Oracle SQL*Plus and remain responsible for understanding the code and the final submission.
