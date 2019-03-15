# learnPLS
Containing codes in PL/SQL when I was learning PL/SQL for the first time.

## Syntax of PL-SQL
Jump to: [[basic-structure]](#basic-structure) [[if-else]](#if-else) [[case]](#case) [[exit-loop-1]](#exit-loop-1) [[exit-loop-2]](#exit-loop-2) [[while-loop]](#while-loop) [[for-loop]](#for-loop) [[reverse-for-loop]](#reverse-for-loop) [[explicit-cursor]](#explicit-cursor)

### basic-structure
```cool
DECLARE
  -- variables are declared and/or initialized here
BEGIN
  -- processing statements are written here
END;
```
Example file: [plBasics.pls](https://github.com/rafi007akhtar/learnPLS/blob/master/plBasics.pls)

### if-else
```cool
IF (condition) THEN
  statements;
ELSIF (condition) THEN
  statements;
ELSE
  statements;
END IF;
```
Example file: [if-else.pls](https://github.com/rafi007akhtar/learnPLS/blob/master/if-else.pls)

### case
```cool
CASE variable
  WHEN value1 THEN statement;
  WHEN value2 THEN statement; -- and so on
  ELSE default statement;
END CASE;
```
Example file: [if-else.pls](https://github.com/rafi007akhtar/learnPLS/blob/master/if-else.pls)


### exit-loop-1
```cool
LOOP
  statements;
  IF condition THEN EXIT
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
