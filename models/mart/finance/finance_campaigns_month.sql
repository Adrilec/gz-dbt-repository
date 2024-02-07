WITH monthgroup AS(
    SELECT *
        ,DATE_TRUNC(date_date, MONTH) AS datemonth
    FROM {{ref("finance_campaigns_day")}}
)
SELECT
    datemonth
    ,ROUND(SUM(operational_margin-ads_cost),1) as ads_margin
    ,ROUND(SUM(average_basket),1) as average_basket
    ,ROUND(SUM(operational_margin),1) as operational_margin
    ,ROUND(SUM(ads_cost),1) as ads_cost
FROM monthgroup
GROUP BY datemonth
ORDER BY datemonth DESC