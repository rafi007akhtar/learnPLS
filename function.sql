--write the function to find the average of 3 numbers
--the name of the function should be findAverage. It will take the 3 numbers as input and return the average of the numbers as output.

SET SERVEROUTPUT ON;

CREATE OR REPLACE FUNCTION findAverage (n1 IN NUMBER, n2 IN NUMBER, n3 IN NUMBER)
RETURN NUMBER
IS
  mean NUMBER;
BEGIN
  mean := (n1+n2+n3) / 3.0;
  RETURN mean;
END;
