# learnPLS
Containing codes in PL/SQL when I was learning PL/SQL for the first time.

## Syntax of PL-SQL
Jump to: [[if-else]](#if-else) [[case]](#case) [[exit-loop-1]](#exit-loop-1) [[exit-loop-2]](#exit-loop-2) [[while-loop]](while-loop)

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

