# learnPLS
Containing codes in PL/SQL when I was learning PL/SQL for the first time.

## Syntax of PL-SQL
Jump to: [[basic-structure]](#basic-structure) [[if-else]](#if-else) [[case]](#case) [[exit-loop-1]](#exit-loop-1) [[exit-loop-2]](#exit-loop-2) [[while-loop]](#while-loop) [[for-loop]](#for-loop) [[reverse-for-loop]](#reverse-for-loop) [[explicit-cursor]](#explicit-cursor)

### basic-structure
```pls
DECLARE
  -- variables are declared and/or initialized here
BEGIN
  -- processing statements are written here
END;
```

### if-else
```pls
IF (condition) THEN
  statements
ELSIF (condition) THEN
  statements
ELSE
  statements
END IF;
```

### case
```pls
CASE variable
  WHEN value1 THEN statement;
  WHEN value2 THEN statement; -- and so on
  ELSE default statement;
END CASE;
```

### exit-loop-1
```pls
LOOP
  statements;
  IF condition THEN EXIT
  END IF;
  statements;
END LOOP
```

### exit-loop-2
```pls
LOOP EXIT WHEN condition;
  statements;
END LOOP;
```
### while-loop
```pls
WHILE condition LOOP
  statements;
END LOOP;
```

### for-loop
```pls
FOR variable IN initial..final LOOP
  statements;
END LOOP;
```
### reverse-for-loop
```pls
FOR variable IN REVERSE initial..final LOOP
  statements;
END LOOP;
```

### explicit-cursor
```pls
variable_name relation_name.attribute%type;  -- declare cursor variable
CURSOR cursor_name IS SELECT attribute, datatype;  -- initialize a cursor
OPEN cursor_name;  -- allocate memeory for the cursor
FETCH cursor_name INTO variable_list;  -- get the next value for the selected attribute (in a LOOP)
CLOSE cursor_name;  -- deallocate cursor
```
Variable declaration and cursor initialization (as shown in the first two lines) are written in the `DECLARE` portion of the PL/SQL code. The rest are placed inside the `BEGIN` block.
