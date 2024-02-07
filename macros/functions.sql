{% macro margin_percent (revnue, purchase_cost) %}
    ROUND((SAFE_DIVIDE(revenue - purchase_cost), revenue) * 100,2)

{% endmacro %}



