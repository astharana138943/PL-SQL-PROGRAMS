--calculate gross salary

set serveroutput on

declare

xeid number(10):=&xeid;
xename varchar2(10);
xbasic number(10);
xhra number(10);
xda number(10);
xmedical number(10):=500;
xpf number(10);
xgross number(10);

begin
	select ename,basicsal into xename,xbasic from gross_salary where eid=xeid;


xhra:=xbasic*0.15;
xda:=xbasic*0.50;
xpf:=xbasic*0.10;

xgross:=xbasic+(xda+xhra+xmedical)-xpf;

dbms_output.put_line('employee name:'||xename);
dbms_output.put_line('basic salary:'||xbasic);
dbms_output.put_line('gross salary:'||xgross);
update gross_salary set gross=xgross where eid=xeid;


end;
/







 
