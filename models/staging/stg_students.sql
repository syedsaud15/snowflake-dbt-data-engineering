select
    cast(student_id as integer) as student_id,
    trim(student_name) as student_name,
    lower(trim(email)) as email,
    cast(enrolled_at as date) as enrolled_at
from {{ ref('students') }}
where student_id is not null

