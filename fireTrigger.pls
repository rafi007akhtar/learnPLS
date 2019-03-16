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

DECLARE   
   total_rows number(2);  
BEGIN  
   UPDATE  customers  
   SET salary = salary + 5000;  
   IF sql%notfound THEN  
      dbms_output.put_line('no customers updated');  
   ELSIF sql%found THEN  
      total_rows := sql%rowcount;  
      dbms_output.put_line( total_rows || ' customers updated ');  
   END IF;   
END;  
/  

/* Output
Old salary: 20000
New salary: 25000
Salary difference: 5000
Old salary: 22000
New salary: 27000
Salary difference: 5000
Old salary: 24000
New salary: 29000
Salary difference: 5000
Old salary: 26000
New salary: 31000
Salary difference: 5000
Old salary: 28000
New salary: 33000
Salary difference: 5000
Old salary: 30000
New salary: 35000
Salary difference: 5000
6 customers updated 
*/
