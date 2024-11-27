FROM mysql:8.0.33
LABEL "Project"="MyResume"
LABEL "Author"="Sirine"

COPY db_backup.sql docker-entrypoint-initdb.d/db_backup.sql
