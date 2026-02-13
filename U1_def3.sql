--calculate discount on product

set serveroutput on

declare
	pname char(10):='&pname';
	pqty number(10):=&pqty;
	pprice number(10):=&pprice;	
	total number(10);
	discount number(10);
begin 
	total:=pprice*pqty;
	discount:=total*10/100;
	dbms_output.put_line('discount on this 	product is='||discount);
end;
/