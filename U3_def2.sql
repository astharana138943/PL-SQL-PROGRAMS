--display result of student if  that name not found then (no_data_found)
error message display
set serveroutput on
declare
	name char(10):='&name';
	id number(10);
	sresult number(10,4);

	
begin
	select sid,sname,result into id,name,sresult from student where sname=name;
	dbms_output.put_line('Student name='||name);
	dbms_output.put_line('Student id='||id);
	dbms_output.put_line('Result='||sresult);

		EXCEPTION
			when NO_DATA_FOUND then
			dbms_output.put_line('ID inputted by user is not avilable in student table');
end;
/ 