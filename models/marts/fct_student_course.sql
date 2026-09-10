with enrollments as (
    select * from {{ ref('stg_enrollments') }}
),
students as (
    select * from {{ ref('stg_students') }}
),
courses as (
    select * from {{ ref('stg_courses') }}
)

select
    e.enrollment_id,
    e.enrolled_at,
    e.status,
    s.student_id,
    s.student_name,
    s.email,
    c.course_id,
    c.course_name,
    c.category
from enrollments e
inner join students s on e.student_id = s.student_id
inner join courses c on e.course_id = c.course_id

