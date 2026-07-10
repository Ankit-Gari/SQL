-- Write your PostgreSQL query statement below

select machine_id, round(avg(timediff)::numeric,3) as processing_time
from
(
select machine_id, process_id, activity_type, timestamp, last_time,
last_time-timestamp as timediff
from
(
    select machine_id, process_id, activity_type, timestamp,
    lead(timestamp) over(partition by machine_id, process_id order by timestamp) as last_time
    from Activity
)
)
group by machine_id




