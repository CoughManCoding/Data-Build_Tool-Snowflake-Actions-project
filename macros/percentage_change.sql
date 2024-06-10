--Here col1 is the new value.
--here we have to wrape col1 and col2 in the double curly brackets as they are not defined any where.
{% macro percentage_change_func(col1,col2) %}
(({{col1}}-{{col2}})/{{col2}})*100
{%- endmacro %}