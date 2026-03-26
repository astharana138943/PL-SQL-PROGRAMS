--program to demonstrate the use of zero divide named exception
set serveroutput on
declare
	no1 number:=&no1;
	no2 number:=&no2;
	ans number;
begin
	dbms_output.put_line('entered no1='||no1);
	dbms_output.put_line('entered no2='||no2);
	ans:=no1/no2;
	dbms_output.put_line('no1/no2='||ans);
	
	
	EXCEPTION
		when ZERO_DIVIDE then
		dbms_output.put_line('you can not divide number by zero');
		dbms_output.put_line('Enter value for no 2>0');
end;
/