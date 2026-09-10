select
    cast(course_id as integer) as course_id,
    trim(course_name) as course_name,
    trim(category) as category
from {{ ref('courses') }}
where course_id is not null

