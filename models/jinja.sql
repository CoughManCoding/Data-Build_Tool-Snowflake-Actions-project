-- to display something use {.   {}   } in other words we use to output something.
-- when we dont want to output but rahter work on our logic we use sing curly brackets { }
{{'sid'}}
{{2}}
{{true}}

-- declaring or setting variables.
{% set var1="sidSama" %}
{#commenting this in jinja #}
{{var1}}
{% set var1="sidSama" %}
{#there will be one line gap between the outpus sidSama#}
{{var1}}  {#Outputting to the compile area.#}


-- to remove the gap we use - sign
{{var1}}
{%- set var1="sidSama" -%}
{# does not allocate any space before or after th above line#}
{{var1}}  {#Outputting to the compile area.#}
-- conditional logic
--If condition. this is case sensitive
{% if 1==1 %}
    {{"Condition Met"}}
{% else %}
    {{"Condition not met"}}
{% endif %}
