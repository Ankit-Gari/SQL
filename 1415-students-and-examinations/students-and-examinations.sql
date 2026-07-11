-- Write your PostgreSQL query statement below

select stu.student_id, stu.student_name, sub.subject_name, count(exm.student_id) as attended_exams
from Subjects sub
cross join Students stu
left join Examinations exm
on stu.student_id = exm.student_id
and sub.subject_name = exm.subject_name

group by stu.student_id, stu.student_name, sub.subject_name
order by stu.student_id, stu.student_name, sub.subject_name






