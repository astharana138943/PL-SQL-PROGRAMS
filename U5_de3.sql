--Write a trigger to insert the values into the NEWEMP table when the
--records are inserted into the EMP table.
create or replace trigger tri_def3
before insert on emp
for each row
begin
insert into newemp
values(:new.empid,
:new.ename,
:new.deptno,
:new.desig,
:new.salary,
:new.gross_salary);
end;
/