-- Write your PostgreSQL query statement below

select id from
(
select *,
    lag(temperature) over(order by recordDate) as prevTemp,
    lag(recordDate) over(order by recordDate) as prevDate
from Weather
)
where temperature > prevtemp and recorddate - prevdate = 1