--print square and cube 

set serveroutput on

declare
	num1 number(10):=&num1;
	sq number(10);
	cub number(10);

begin
	sq:=num1*num1;
	cub:=sq*num1;
	dbms_output.put_line('sq of num1 is='||sq);
	dbms_output.put_line('cub of num1 is='||cub);

end;
/
	