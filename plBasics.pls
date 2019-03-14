-- a PL/SQL file has 3 sections: DECLARE, BEGIN and END

DECLARE
    -- all the variables need to be declared here
    
    -- syntax for declaring variable: variable_name datatype;
    -- for example
    name VARCHAR(50);
	age INT;
	sex VARCHAR(1);  -- M/F/O for male/female/others
    
    -- rules for naming a variable: 
        -- start with a letter; 
        -- may continue with more letters, numerals, underscores, or dollar signs; 
        -- don't exceed 30 characters; 
        -- not case sensitive
	
	-- variables can also be assigned as they are declared; syntax: varname datatype := value;
	radius number(10,2) := 5.23;
	area real := 0.0;
	
	-- constants are initialized with a CONSTANT keyword between variable name and dataype
	pi CONSTANT number(10,4) := 3.1416;	

BEGIN
	-- all the programming, besides variable declarations, happens here
	
	-- variables are initialized using the assignment operator (:=) or DEFAULT keyword
	name := 'Md Rafi Akhtar';
	age := 23;
	sex := 'M';
	
	-- print the details
	-- syntax for printing: dbms_output.put_line(...);
	dbms_output.put_line('My name is: ' || name);
	dbms_output.put_line('I am ' || age || ' years old');
	dbms_output.put_line('Sex: ' || sex);
	
	-- area of circle
	area := pi * radius * radius;
	dbms_output.put_line('area of circle: ' || area);	
	
	
	/* OUTPUT: 
	My name is: Md Rafi Akhtar
	I am 23 years old
	Sex: M
	area of circle: 85.93187064
	*/

-- the END closes the program; note the semicolon
END;
