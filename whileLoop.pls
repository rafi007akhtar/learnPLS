-- WHILE and FOR loops

DECLARE
	i INT;

BEGIN
	/* WHILE LOOP SYNTAX
	WHILE condition LOOP
		statements;
	END LOOP;
	*/
	-- print all even numbers from 1 to 30
	i := 1;
	WHILE (i <= 30) LOOP
		IF (MOD(i,2) = 0) -- remainder is obtained with the MOD function
		THEN
			dbms_output.put_line(i);
		END IF;
		i := i+1;
	END LOOP;

END;
