-- Write your PostgreSQL query statement below

-- select e1.id, e1.name, e2.managerid, count()
-- select *
-- from Employee e1
-- left join Employee e2
-- on e1.managerId = e2.id
-- and e1.managerId = e2.managerId

select E1.name
from Employee E1
join
(
    select managerId, count(*) as directReports
    from Employee
    group by managerId
    having count(*) >=5
) E2
on E1.id = E2.managerId
