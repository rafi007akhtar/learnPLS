-- EXIT LOOPS 

DECLARE
	i int;

BEGIN
	/* EXIT LOOP - SYNTAX 1
	LOOP
		statements;
		IF condition THEN EXIT
		END IF;
		statements;
	END LOOP
	*/
	-- print numbers from 1 to 10
	dbms_output.put_line('Loop 1');	
	i := 1;
	LOOP
		dbms_output.put_line(i);
		IF (i = 10) THEN EXIT;
		END IF;
		i := i+1;
	END LOOP;
	
	/* EXIT LOOP - SYNTAX 2
	LOOP EXIT WHEN condition;
	statements;
	END LOOP;
	*/
	-- now print numbers from 10 to 1
	dbms_output.put_line('Loop 2');
	i := 10;
	LOOP EXIT WHEN i=0;
		dbms_output.put_line(i);
		i := i-1;
	END LOOP;
	
END;
