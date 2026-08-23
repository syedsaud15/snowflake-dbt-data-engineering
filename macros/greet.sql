{% macro greet(name) %}

    {% do log("Hello " ~ name, info=True) %}

{% endmacro %}