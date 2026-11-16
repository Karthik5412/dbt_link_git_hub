{{config( database="dbt_play")}}

select 
    airline,
    count(*) as total_flights,
    sum(passenger_count) as total_pasengers,
    round(avg(passenger_count),0) as avg_passengers
from {{source('raw', 'flights')}}
group by airline
