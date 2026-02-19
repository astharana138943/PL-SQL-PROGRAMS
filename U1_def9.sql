
set serveroutput on
declare
BEGIN
    
    FOR i IN (SELECT empid, empname FROM employee 
              WHERE department = 'HR' AND gender = 'MALE') 
    LOOP
        
        DBMS_OUTPUT.PUT_LINE('ID: ' || i.empid || ' | Name: ' || i.empname);
    END LOOP;
END;
/