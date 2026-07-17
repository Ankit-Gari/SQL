-- Write your PostgreSQL query statement below


select 
    E.employee_id,
    E.name,
    count(*) reports_count,
    round(avg(R.age), 0) as average_age
from Employees E
left join Employees R
on E.employee_id = R.reports_to
group by E.employee_id, E.name
having count(R.reports_to) > 0
order by employee_id asc

