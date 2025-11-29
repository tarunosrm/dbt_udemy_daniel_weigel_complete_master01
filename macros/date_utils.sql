{% macro get_season(x)%}

CASE WHEN MONTH(TO_TIMESTAMP({{x}})) in (12,1,2)
    THEN 'WINTER'
    WHEN MONTH(TO_TIMESTAMP({{x}})) in (3,4,5)
    THEN 'SPRING'
    WHEN MONTH(TO_TIMESTAMP({{x}})) in (6,7,8)
    THEN 'SUMMER'
    ELSE 'AUTUMN' 
 end  

 {% endmacro %}   

 {% macro day_type(x) %}
 case
                when dayname(to_timestamp({{x}})) in ('Sat', 'Sun')
                then 'WEEKEND'
                else 'BUSINESSDAY'
            end 

 {% endmacro %}