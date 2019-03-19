# learnPLS
Containing codes in PL/SQL when I was learning PL/SQL for the first time.

## Syntax of PL-SQL
Jump to: [[basic-structure]](#basic-structure) [[if-else]](#if-else) [[case]](#case) [[exit-loop-1]](#exit-loop-1) [[exit-loop-2]](#exit-loop-2) [[while-loop]](#while-loop) [[for-loop]](#for-loop) [[reverse-for-loop]](#reverse-for-loop) [[explicit-cursor]](#explicit-cursor) [[system-defined-exception]](#system-defined-exception) [[user-defined-exception]](#user-defined-exception) [[procedure]](#procedure) [[function]](#function) [[trigger]](#trigger)

### basic-structure
```cool
DECLARE
  -- variables are declared and/or initialized here
BEGIN
  -- processing statements are written here
EXCEPTION  -- optional
  -- exception handling statements go here
END;
```
Example file: [plBasics.pls](https://github.com/rafi007akhtar/learnPLS/blob/master/plBasics.pls)

### if-else
```cool
IF (condition) THEN
  statements;
ELSIF (condition) THEN
  statements;  -- and so on for as many ELSIFs needed 
ELSE  -- optional
  statements;
END IF;
```
Example file: [if-else.pls](https://github.com/rafi007akhtar/learnPLS/blob/master/if-else.pls)

### case
```cool
CASE variable
  WHEN value1 THEN statement;
  WHEN value2 THEN statement; -- and so on
  ELSE default_statement;
END CASE;
```
Example file: [if-else.pls](https://github.com/rafi007akhtar/learnPLS/blob/master/if-else.pls)


### exit-loop-1
```cool
LOOP
  statements;
  IF condition THEN EXIT;
  END IF;
  statements;
END LOOP
```
Example file: [exitLoops.pls](https://github.com/rafi007akhtar/learnPLS/blob/master/exitLoops.pls)

### exit-loop-2
```cool
LOOP EXIT WHEN condition;
  statements;
END LOOP;
```
Example file: [exitLoops.pls](https://github.com/rafi007akhtar/learnPLS/blob/master/exitLoops.pls)


### while-loop
```cool
WHILE condition LOOP
  statements;
END LOOP;
```
Example file: [while-loop.pls](https://github.com/rafi007akhtar/learnPLS/blob/master/whileLoop.pls)

### for-loop
```cool
FOR variable IN initial..final LOOP
  statements;
END LOOP;
```
Example file: [forLoop.pls](https://github.com/rafi007akhtar/learnPLS/blob/master/forLoop.pls)

### reverse-for-loop
```cool
FOR variable IN REVERSE initial..final LOOP
  statements;
END LOOP;
```
Example file: [forLoop.pls](https://github.com/rafi007akhtar/learnPLS/blob/master/forLoop.pls)

### explicit-cursor
```cool
variable_name relation_name.attribute%type;  -- declare cursor variable
CURSOR cursor_name IS SELECT attribute, datatype;  -- initialize a cursor
OPEN cursor_name;  -- allocate memeory for the cursor
FETCH cursor_name INTO variable_list;  -- get the next value for the selected attribute (in a LOOP)
CLOSE cursor_name;  -- deallocate cursor
```
Variable declaration and cursor initialization (as shown in the first two lines) are written in the `DECLARE` portion of the PL/SQL code. The rest are placed inside the `BEGIN` block.

Example file: [cursors.pls](https://github.com/rafi007akhtar/learnPLS/blob/master/cursors.pls)

### system-defined-exception
```cool
DECLARE
  -- declare variables here
BEGIN
  -- exception-prone statements go here
EXCEPTION
  WHEN exception1 THEN handling_statement;
  WHEN exception2 THEN handling_statement;  -- and so on
  WHEN OTHERS THEN default_handling_statement;  -- optional
END;
```
Example file: [system-defined-exception.pls](https://github.com/rafi007akhtar/learnPLS/blob/master/system-defined-exception.pls)

### user-defined-exception
```cool
DECLARE
  exception_name EXCEPTION;
BEGIN
  -- exception-prone statements go here, followed by exception-catching statemenets below
  IF (condition_for_catching_exception) THEN
    RAISE exception_name;  -- RAISE keyword used for throwing user-defined exception
  END IF; 
-- exception-handling statements are written below
EXCEPTION
  WHEN exception_name THEN handling_statement;  -- this exception was raised above
END;
```
Example file: [user-defined-exception.pls](https://github.com/rafi007akhtar/learnPLS/blob/master/user-defined-exception.pls)

### procedure
File with procedure body: 
```cool
CREATE [OR REPLACE] PROCEDURE procedure_name (parameters IN|OUT|IN OUT datatypes)
IS
  -- variables needed for procedure are declared here
BEGIN
  -- procedure body goes here
END;
```
Calling the procedure (in a different file): `procedure_name(parameters);` <br>
Example files:
  - procedure written in [procedure.sql](https://github.com/rafi007akhtar/learnPLS/blob/master/procedure.sql)
  - procedure called in [procedure.pls](https://github.com/rafi007akhtar/learnPLS/blob/master/procedure.pls)

### function
File with function body:
```cool
CREATE [OR REPLACE] FUNCTION function_name (parameters IN|OUT|IN OUT datatypes)
RETURN return_type
IS
  -- all variable declarations are written here
BEGIN
  -- function body is written here
  RETURN return_variable
END;
```
To call the function: `var := function_name(parameter_list);`
Example file: [function.sql](https://github.com/rafi007akhtar/learnPLS/blob/master/function.sql)

### trigger
```cool
CREATE [OR REPLACE] TRIGGER trigger_name
BEFORE | AFTER | trigger_events_separated_by_OR  -- events: INSERT, UPDATE, DELETE
ON table_name
[REFERENCING OLD AS o NEW AS n]
FOR EACH ROW
WHEN (trigger_condition)
DECLARE 
  -- variables to be declared here
BEGIN
  -- statements to happen when trigger happens
EXCEPTION  -- this block is optional
  -- exception-handling statements
END;
```
Example files:
  - trigger written in [trigger.pls](https://github.com/rafi007akhtar/learnPLS/blob/master/trigger.pls)
  - trigger fired in [fireTrigger.pls](https://github.com/rafi007akhtar/learnPLS/blob/master/fireTrigger.pls)
  

## Contribution
- If you catch a bug, [open an issue](https://github.com/rafi007akhtar/learnPLS/issues).
- If you can add to this repo by code or otherwise, or wish to correct the programs, do so by [creating a pull request](https://github.com/rafi007akhtar/learnPLS/pulls). [(Here's how you can create a pull request.)](https://help.github.com/en/articles/creating-a-pull-request)

## License
[MIT License](https://github.com/rafi007akhtar/learnPLS/blob/master/LICENSE)







