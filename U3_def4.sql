--display salary of the employee whose age is 50 otherwise display appropriate msg.

set serveroutput on
declare
	 sal number(10);	
begin
	select salary into sal from employee where age=50;
	dbms_output.put_line('salary is:'||sal);


	EXCEPTION when
			no_data_found then

	dbms_output.put_line('enter records first');
end;
/