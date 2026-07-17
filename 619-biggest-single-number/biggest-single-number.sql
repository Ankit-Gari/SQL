-- Write your PostgreSQL query statement below

select max(num) as num
from(
    select
        distinct num,
        count(*) num_count
    from MyNumbers
    group by num
)
where num_count = 1