"""Credential-free checks for the repository's dbt project structure."""
from pathlib import Path
import csv

ROOT = Path(__file__).resolve().parents[1]
required = [
    "dbt_project.yml",
    "models/staging/stg_students.sql",
    "models/staging/stg_courses.sql",
    "models/staging/stg_enrollments.sql",
    "models/marts/fct_student_course.sql",
    "models/schema.yml",
    "dags/dbt_student_analytics.py",
    "profiles.example.yml",
]
missing = [path for path in required if not (ROOT / path).is_file()]
if missing:
    raise SystemExit(f"Missing required files: {missing}")

for seed in ("students.csv", "courses.csv", "enrollments.csv"):
    with (ROOT / "seeds" / seed).open(encoding="utf-8", newline="") as handle:
        rows = list(csv.DictReader(handle))
    if not rows:
        raise SystemExit(f"Seed has no data rows: {seed}")

mart = (ROOT / "models/marts/fct_student_course.sql").read_text(encoding="utf-8")
for model in ("stg_students", "stg_courses", "stg_enrollments"):
    if f"ref('{model}')" not in mart:
        raise SystemExit(f"Mart does not reference {model}")

print("Repository structure and sample seeds are valid.")

