-- Write your PostgreSQL query statement below

select class
from Courses
group by class
having count(*)>=5



-- select
--     class
-- from(
--     select 
--         class,
--         count(*) class_count
--     from Courses
--     group by class
-- )
-- where class_count >= 5;