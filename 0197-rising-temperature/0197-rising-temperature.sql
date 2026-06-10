select id
from(
    select
    id,
    temperature,
    recordDate,
    LAG(temperature)  over (order by recordDate) as prev_temp,
    LAG(recordDate)  over (order by recordDate) as prev_date
    from Weather
) w
where temperature>prev_temp
and DATEDIFF(recordDate,prev_date)=1
