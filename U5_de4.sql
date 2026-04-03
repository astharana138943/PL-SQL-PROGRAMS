--Write a trigger to insert the existing values of the EMP table into

--NEWEMP table when the record is updated in EMP table.


create or replace trigger trig_def4
before update on emp
for each row
begin
insert into newemp (EMPID,ENAME,SALARY)
values(:OLD.EMPID, :OLD.ENAME ,:OLD.SALARY);
end;
/