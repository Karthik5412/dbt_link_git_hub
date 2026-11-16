{{config(database= 'steel')}}

select 
    make,
    count(model) as total_models,
    sum(sale_price) as revenue,
    round(avg(kms_run),3) as avg_run
from {{source("raw","cars")}}
group by make