-- Write your PostgreSQL query statement below
with cte as (select
        num,
        lead(num,1,null) over(order by id) num1,
        lead(num,2,null) over(order by id) num2
    from Logs
)

select distinct
    num as ConsecutiveNums
from cte
where num = num1 and num = num2