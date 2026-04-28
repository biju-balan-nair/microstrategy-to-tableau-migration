SELECT
    *,
    CASE 
        WHEN sales_amount < 0 THEN 0
        WHEN sales_amount > 50000 THEN 50000
        ELSE sales_amount
    END AS sales_amount_clean,

    CASE 
        WHEN discount > 1 THEN 0
        ELSE discount
    END AS discount_clean

FROM standardized_orders
WHERE order_date IS NOT NULL;
