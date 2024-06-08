{% macro date_diff_in_days(date1, date2) %}
    datediff(day, {{ date1 }}, {{ date2 }})
{% endmacro %}