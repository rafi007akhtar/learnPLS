-- IF-ELSE ladder and CASE

DECLARE
	n real := dbms_random.value(1,100);  -- this function is used to generate random numbers in PL/SQL
	
	friend int := dbms_random.value(1,6); 
	
BEGIN
	/* SYNTAX FOR IF-ELSE LADDER:
	IF (condition) THEN
		statements
	ELSIF (condition) THEN
		statements
	ELSE
		statements
	END IF;
	*/
	
	if (n < 10) then
		dbms_output.put_line('approaching decade');
	elsif (n < 50) then
		dbms_output.put_line('approaching half-century');
	else
		dbms_output.put_line('approaching century');
	end if;

	/* SYNTAX FOR CASE
	CASE variable
		WHEN value1 THEN statement;
		WHEN value2 THEN statement; -- and so on
		ELSE default statement;
	END CASE;
	*/
	
	CASE friend
		WHEN 1 THEN dbms_output.put_line('I am bee, I drink tea! Wont you dance around with me?'); -- ross
		WHEN 2 THEN dbms_output.put_line('seven! seven, seven, seven, seven, seven! ... seven'); -- monica
		WHEN 3 THEN dbms_output.put_line('smelly cat, smelly cat, what are they feeding you?'); -- phebe
		WHEN 4 THEN dbms_output.put_line('this hand is your hand, this hand is my hand, oh wait its your hand, no wait thats my hand'); -- joey
		WHEN 5 THEN dbms_output.put_line('baby got back'); -- rachel
		WHEN 6 THEN dbms_output.put_line('im not very good with songs, can i interest you in a sarcastic comment?'); -- chandler
		ELSE dbms_output.put_line('i could sing a song'); -- mr heckles
	END CASE;
END;
