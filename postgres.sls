#
# Ensure Postgres is running
#
postgresql:
    service.running:
        - enable: True

postgres-pguser:
    postgres_user.present:
        - name: hardik
        - password: password
        - runas: postgres
        - createdb: True
        - require:
            - service: postgresql
