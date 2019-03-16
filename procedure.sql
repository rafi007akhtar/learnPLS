CREATE  PROCEDURE print_average (num1 IN REAL, num2 IN REAL, num3 IN REAL) 
IS
	mean REAL;
BEGIN
	mean := (num1 + num2 + num3) / 3.0;
	dbms_output.put_line('Mean = ' || mean);
END;

