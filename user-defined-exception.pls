-- borrowed from elsewhere

DECLARE
      huge_quantity EXCEPTION;
     CURSOR product_quantity IS
            SELECT p.product_name as name, sum(o.total_units) as units
            FROM order_tems o, product p
           WHERE o.product_id = p.product_id;
     quantity order_tems.total_units%type;
     up_limit CONSTANT order_tems.total_units%type := 20;
     message VARCHAR2(50);
BEGIN
      FOR product_rec in product_quantity

     LOOP
         quantity := product_rec.units;
         IF quantity > up_limit THEN
                 message := 'The number of units of product ' || product_rec.name ||' is more than 20. Special discounts should be                                       provided.Rest of the records are skipped. '
                 RAISE huge_quantity;
         ELSIF quantity < up_limit THEN

                          v_message:= 'The number of unit is below the discount limit.';
         END IF;
         DBMS_OUTPUT.put_line (message);
    END LOOP;
EXCEPTION
           WHEN huge_quantity THEN
            DBMS_OUTPUT.put_line (message);
END;
