-- Write your PostgreSQL query statement below

select
    class
from(
    select 
        class,
        count(*) class_count
    from Courses
    group by class
)
where class_count >= 5;