-- Example taken from: https://www.javatpoint.com/pl-sql-variables
DECLARE  
 -- Global variables   
   num1 number := 95;   
   num2 number := 85;   
BEGIN   
   dbms_output.put_line('Outer Variable num1: ' || num1);  -- 95
   dbms_output.put_line('Outer Variable num2: ' || num2);  -- 85
   DECLARE   
      -- Local variables  
      num1 number := 195;   
      num2 number := 185;   
   BEGIN   
      dbms_output.put_line('Inner Variable num1: ' || num1);  -- 195
      dbms_output.put_line('Inner Variable num2: ' || num2);  -- 185
   END;   
END; 
