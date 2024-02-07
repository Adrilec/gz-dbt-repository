{% macro margin_percent (revenue, purchase_price) %}
    ROUND((SAFE_DIVIDE(revenue - purchase_price), revenue) * 100,2)

{% endmacro %}



