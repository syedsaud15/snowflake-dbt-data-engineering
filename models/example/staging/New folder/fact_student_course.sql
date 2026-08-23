select
    s.id as student_id,
    c.id as course_id
from {{ ref('stg_student') }} s
cross join {{ ref('stg_course') }} c