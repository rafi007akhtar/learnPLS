-- FOR loops

DECLARE
	mid INT;
	pattern INT;

BEGIN
	/* FOR LOOP SYNTAX
	FOR variable IN initial..final LOOP
		statements;
	END LOOP;
	*/
	
	-- find all factors of 100 (apart from 1 and itself)
	dbms_output.put_line('Factors of 100:');
	mid := 100 / 2;
	FOR i IN 2..mid LOOP  -- note that `i` was not initialized
		IF (MOD(100, i) = 0) THEN
			dbms_output.put_line(i);
		END IF;
	END LOOP;
	
	
	/* REVERSE FOR LOOP SYNTAX
	FOR variable IN REVERSE initial..final LOOP
		statements;
	END LOOP;
	*/
	
	-- print all numbers from 10 to 1 except 7
	dbms_output.put_line('Print 10 to 1 sans 7:');
	FOR i IN REVERSE 1..10 LOOP
		IF (i = 7) THEN continue; -- this is how continue is used 
		END IF;
		dbms_output.put_line(i);
	END LOOP;
	
	/* OUPUT:
	Factors of 100:
	2
	4
	5
	10
	20
	25
	50
	Print 10 to 1 sans 7:
	10
	9
	8
	6
	5
	4
	3
	2
	1
	*/

	

END;
