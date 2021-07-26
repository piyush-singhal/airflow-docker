#!/usr/bin/env bash

while ! nc $DB_HOST $DB_PORT; do
  >&2 echo "Waiting for postgres to be up and running..."
  sleep 1
done

export PGPASSWORD=${DB_PASSWORD}
export AIRFLOW__CORE__SQL_ALCHEMY_CONN="postgresql+psycopg2://${DB_USER}:${DB_PASSWORD}@${DB_HOST}:${DB_PORT}/${DB_NAME}"

# Airflow DB Initialize
airflow db upgrade
# Start scheduler 
airflow scheduler &
# Run webserver
exec airflow webserver
