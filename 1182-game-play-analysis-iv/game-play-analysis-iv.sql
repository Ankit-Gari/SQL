-- Write your PostgreSQL query statement below

with login_data as (
    select *, 
    lead(event_date) over(partition by player_id order by event_date) as next_day,
    row_number() over(partition by player_id order by event_date) as played_continuously
    from Activity
)

select
    round(sum(case when next_day - event_date = 1 AND played_continuously = 1 then 1 else 0 end)*1.0/ count(distinct player_id), 2)as fraction 
from login_data