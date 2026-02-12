# Level 1 — Docker Foundations

## Objective

Establish absolute control over:
- Container lifecycle
- Networking
- Volumes & persistence
- Service discovery via Docker DNS

This level intentionally avoids Kafka or distributed systems.
This is about mastering Docker fundamentals first.

---

## What This Level Proves

- Containers start and stop cleanly
- Services communicate via service name (not localhost)
- Postgres data persists after container restart
- Custom bridge network is explicitly defined
- Verification script confirms system behavior

---

## How To Run

```bash
docker compose up -d
```

Run verification:

```bash
chmod +x verify.sh
./verify.sh
```

# Expected Result

✔ Nginx reachable
✔ Postgres accepting connections
✔ Data persisted after container restart
LEVEL 1 STATUS: PASS

If any step fails, Level 1 is not complete.

KPI Checklist

 Containers run without crash

 Named volume persists data

 Services reachable via container DNS

 No localhost usage between containers

 verify.sh exits with status 0

 
