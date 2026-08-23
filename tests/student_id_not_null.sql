select *
from {{ ref('stg_student') }}
where id is null