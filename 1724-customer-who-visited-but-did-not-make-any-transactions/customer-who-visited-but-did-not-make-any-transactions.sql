-- Write your PostgreSQL query statement below

-- select customer_id, count_no_trans
select V.customer_id, count(*) as count_no_trans
from Visits as V
full join Transactions as T
on V.visit_id = T.visit_id
where transaction_id is null
group by V.customer_id