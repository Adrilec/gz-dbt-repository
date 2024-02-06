SELECT
 s.quantity * p.purchase_price AS purchase_cost
FROM
    {{ ref("stg_raw__sales") }} s 
JOIN
    {{ ref("stg_raw__product") }} p 
USING
    (products_id)