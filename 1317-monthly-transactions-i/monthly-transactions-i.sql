-- Write your PostgreSQL query statement below

select 
    distinct to_char(trans_date, 'YYYY-MM') as month,
    country,
    count(trans_date) as trans_count,
    count(*) filter (where state = 'approved') as approved_count,
    sum(amount) trans_total_amount,
    coalesce(sum(amount) filter (where state = 'approved'), 0)as approved_total_amount
from Transactions
group by month, country
