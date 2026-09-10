select
    cast(enrollment_id as integer) as enrollment_id,
    cast(student_id as integer) as student_id,
    cast(course_id as integer) as course_id,
    cast(enrolled_at as date) as enrolled_at,
    upper(trim(status)) as status
from {{ ref('enrollments') }}
where enrollment_id is not null

