SELECT 
    date_date
    ,ROUND(SUM(operational_margin-ads_cost),0) as ads_margin
    ,SUM(average_basket) as average_basket
    ,SUM(operational_margin) as operational_margin
    ,SUM(ads_cost) as ads_cost
FROM {{ref("int_campaigns_day")}}
JOIN {{ref("finance_days")}}
USING (date_date)
GROUP BY date_date
ORDER BY date_date DESC