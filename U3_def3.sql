--display employee salary by employee name using exception no_data_found
set serveroutput on

declare

	name char(10):='&name';
	sal number(10);

begin

	select ename,salary into name,sal from emp where ename=name;
	dbms_output.put_line('Name is:'||name);
	dbms_output.put_line('Salary is:'||sal);
	
	EXCEPTION when
			no_data_found 
		  then
			dbms_output.put_line('add records first into table');

end;
/