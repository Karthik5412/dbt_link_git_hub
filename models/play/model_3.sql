{{config(database= 'dbt_play')}}

select 
    make,
    count(model) as total_models,
    sum(sale_price) as revenue
from {{source("raw","cars")}}
group by make