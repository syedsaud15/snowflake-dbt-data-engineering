# Snowflake and dbt Learning Labs

A dbt learning scaffold with consolidated Snowflake, dbt, and Airflow notes. An integrated Snowflake + dbt + Airflow ELT pipeline is not implemented.

## What is present

- `dbt_project.yml` and basic example models.
- Staging queries against `MYDB.PUBLIC.STUDENT` and `MYDB.PUBLIC.COURSE`.
- A student/course cross join, which produces all combinations rather than actual enrollment facts.
- An intentionally nullable starter model and not-null test examples.

## Setup limitations

The project expects a dbt profile named `my_project` and existing Snowflake tables. Credentials, source DDL, seed data, and complete environment setup are not supplied. A fresh clone is not a reproducible end-to-end run.

There are no Airflow DAGs in the source repositories being consolidated. Scheduling, production monitoring, and integrated ELT must not be claimed from these notes.

## Next implementation work

Provide synthetic seeds and documented sources, replace the cross join with a meaningful relationship, resolve starter-model test failures, add a profile example using environment variables, and only then integrate and test an Airflow DAG.

## Consolidated notes

- [snowflake-dbt-data-engineering](labs/snowflake-dbt-data-engineering/README.md)
- [snowflake-projects](labs/snowflake-projects/README.md)
- [dbt-projects](labs/dbt-projects/README.md)
- [airflow-projects](labs/airflow-projects/README.md)

Original repositories and history remain available. No cloud deployment or execution is implied by this consolidation.
