-- Write your PostgreSQL query statement below

-- select query_name,
--     round(avg(rating*1.0/position), 2) as quality,
--     round(count(*) filter (where rating<3)*100.0 / count(*), 2) as poor_query_percentage
-- from Queries
-- group by query_name

select query_name,
    round(sum(quality)/count(*), 2) as quality,
    round(sum(rating)*100.0/count(*), 2) as poor_query_percentage
from (
    select
        query_name,
        (rating*1.0)/position as quality,
        case when rating < 3 then 1 else 0 end as rating
    from Queries
)
group by query_name
order by quality desc