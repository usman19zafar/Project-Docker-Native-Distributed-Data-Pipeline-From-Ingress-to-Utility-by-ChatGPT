#!/bin/bash

set -e

echo "Waiting for Postgres to be healthy..."
sleep 10

echo "Creating test table..."
docker exec level1-postgres psql -U level1 -d level1db -c \
"CREATE TABLE IF NOT EXISTS test_table (id SERIAL PRIMARY KEY, name TEXT);"

echo "Inserting test row..."
docker exec level1-postgres psql -U level1 -d level1db -c \
"INSERT INTO test_table (name) VALUES ('docker-test');"

echo "Restarting Postgres container..."
docker restart level1-postgres
sleep 10

echo "Checking persisted data..."
RESULT=$(docker exec level1-postgres psql -U level1 -d level1db -t -c \
"SELECT name FROM test_table WHERE name='docker-test';" | xargs)

if [[ "$RESULT" != "docker-test" ]]; then
  echo "Data persistence failed."
  exit 1
fi

echo "Checking nginx endpoint..."
curl -s http://localhost:8080 > /dev/null

echo "✔ Nginx reachable"
echo "✔ Postgres accepting connections"
echo "✔ Data persisted after container restart"
echo "LEVEL 1 STATUS: PASS"

exit 0
