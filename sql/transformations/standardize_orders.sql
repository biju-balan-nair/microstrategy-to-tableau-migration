SELECT
    order_id,
    CAST(order_date AS DATE) AS order_date,
    customer_id,
    product_id,

    CASE 
        WHEN UPPER(region) IN ('WEST','WST') THEN 'West'
        WHEN UPPER(region) = 'EAST' THEN 'East'
        WHEN UPPER(region) = 'NORTH' THEN 'North'
        WHEN UPPER(region) = 'SOUTH' THEN 'South'
        ELSE 'Unknown'
    END AS region,

    sales_amount,
    quantity,
    discount
FROM deduplicated_orders;
