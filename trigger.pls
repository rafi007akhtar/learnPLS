-- borrowed from https://www.javatpoint.com/pl-sql-trigger
/*
Customers
---------
ID	NAME	AGE	ADDRESS	SALARY
1	Ramesh	23	Allahabad	20000
2	Suresh	22	Kanpur	22000
3	Mahesh	24	Ghaziabad	24000
4	Chandan	25	Noida	26000
5	Alex	21	Paris	28000
6	Sunita	20	Delhi	30000
*/

CREATE OR REPLACE TRIGGER display_salary_changes  
BEFORE DELETE OR INSERT OR UPDATE 
ON customers  
FOR EACH ROW  
WHEN (NEW.ID > 0)  
DECLARE  
   sal_diff number;  
BEGIN  
   sal_diff := :NEW.salary  - :OLD.salary;  
   dbms_output.put_line('Old salary: ' || :OLD.salary);  
   dbms_output.put_line('New salary: ' || :NEW.salary);  
   dbms_output.put_line('Salary difference: ' || sal_diff);  
END;  
/  
