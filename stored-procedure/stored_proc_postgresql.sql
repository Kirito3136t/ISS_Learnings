-- stored procedure without parameters

CREATE OR REPLACE PROCEDURE pr_buy_products()
LANGUAGE plpgsql
AS $$

DECLARE
    v_product_code varchar(20);
    v_product_price float;

BEGIN
    SELECT product_code, price
    INTO v_product_code, v_product_price
    FROM products
    WHERE product_name = 'iPhone 13 Pro Max';

    INSERT INTO sales (order_date, product_code, quantity_ordered, sale_price)
    VALUES (current_date, v_product_code, 1, (v_product_price*1));

    UPDATE products
    SET quantity_remaining = (quantity_remaining - 1),
        quantity_sold = (quantity_sold + 1)
    WHERE product_code = v_product_code;

    raise notice 'PRODUCT SOLD!';
end;
$$

call pr_buy_products();
-- stored procedure with parameters

CREATE OR REPLACE PROCEDURE pr_buy_products_with_param(p_product_name varchar, p_quantity int)
LANGUAGE plpgsql
AS $$
DECLARE
    v_cnt int;
BEGIN
    SELECT count(1)
    INTO v_cnt
    FROM products
    WHERE product_name = p_product_name
    AND quantity_remaining >= p_quantity;

    if v_cnt > 0 then 
        SELECT product_code, price
        INTO v_product_code, v_product_price
        FROM products
        WHERE product_name = p_product_name;

        INSERT INTO sales (order_date, product_code, quantity_ordered, sale_price)
        VALUES (current_date, v_product_code, p_quantity, (v_product_price*p_quantity));

        UPDATE products
        SET quantity_remaining = (quantity_remaining - 1),
            quantity_sold = (quantity_sold + 1)
        WHERE product_code = v_product_code;

        raise notice 'PRODUCT SOLD!';
    else
        raise notice 'Insufficient Quantity'
    end if;
end ; 
$$


call pr_buy_products_with_param('iPad Air' , 3);
    