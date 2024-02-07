SELECT
    *
    ,s.quantity * p.purchase_price AS purchase_cost
    ,s.revenue - (s.quantity * p.purchase_price) AS margin
    ,{{margin_percent(revenue,purchase_cost)}} AS margin_percent 
FROM
    {{ ref("stg_raw__sales") }} s 
JOIN
    {{ ref("stg_raw__product") }} p 
USING
    (products_id)