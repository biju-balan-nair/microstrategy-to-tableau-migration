SELECT
    o.order_id,
    o.order_date,
    o.customer_id,
    o.product_id,
    o.region,
    o.sales_amount_clean AS sales_amount,
    o.quantity,
    o.discount_clean AS discount,

    (o.sales_amount_clean * (1 - o.discount_clean)) AS net_sales

FROM validated_orders o;
