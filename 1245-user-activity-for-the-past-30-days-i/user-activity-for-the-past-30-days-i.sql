-- Write your PostgreSQL query statement below

select
    activity_date as day,
    count(distinct user_id) as active_users
from Activity
where
    activity_date between Date '2019-07-27' - INTERVAL '29 Days' AND Date '2019-07-27'
group by activity_date