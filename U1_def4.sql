--mesure in feet
set serveroutput on
declare
 	v_feet number:=&enter_feet;
	v_inch number;
	v_cm number;
	v_meter number;
begin
	v_inch:=v_feet*12;
	v_cm:=v_feet*30.48;
	v_meter:=v_feet*0.3048;

dbms_output.put_line('feet is ='||v_feet);
dbms_output.put_line('cm of feet is ='||v_cm);
dbms_output.put_line('meter of feet is ='||v_meter);

end;
/