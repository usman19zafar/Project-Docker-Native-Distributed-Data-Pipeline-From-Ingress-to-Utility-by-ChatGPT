🔹 Level 1 Verification — Step by Step

Start the stack

docker compose -f Level-1-Docker-Foundations/docker-compose.yml up -d

Check containers:

docker ps

You should see:

level1-nginx

level1-postgres

level1-redis

All status = Up.

Run the verification script

cd Level-1-Docker-Foundations
chmod +x verify.sh
./verify.sh

✅ Expected output:

✔ Nginx reachable
✔ Postgres accepting connections
✔ Data persisted after container restart
LEVEL 1 STATUS: PASS

If this passes → Level 1 KPIs are verified.

If any step fails, inspect logs:

docker logs level1-postgres
docker logs level1-nginx

Manual Checks (Optional)

Postgres persistence:

docker exec -it level1-postgres psql -U level1 -d level1db
SELECT * FROM test_table;

Should show: docker-test

Nginx reachability:

curl http://localhost:8080

Should return default nginx page.

If Verification Fails

Ensure Docker daemon is running

Ensure ports 8080/5432/6379 not blocked

Ensure script has chmod +x

✅ KPIs After Verification

 Containers start, stop, restart

 Services communicate via service name

 Postgres data persists after restart

 verify.sh exits 0 → PASS

 Nginx reachable on localhost:8080

Once this passes, Level 1 is complete, and we can move to Level 2 — multi-container orchestration + failure simulation.
