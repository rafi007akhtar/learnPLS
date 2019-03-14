/* write code to peek inside the employee realtion (table), 
  and count all the values of the attribute salary 
  that are greater than 2000 and less than 5000
*/

DECLARE
  num INT;
  c_sal employee.salary%type;
  cursor c_emp is
  select salary from employee;
  
BEGIN
  num := 0;
  open c_emp;
    loop
      fetch c_emp into c_sal;
      exit when c_emp%notfound;
      if (c_sal > 2000 and c_sal < 50000) then
        num := num + 1;
      end if;
    end loop;
  close c_emp;
  dbms_output.put_line(num);

END;
