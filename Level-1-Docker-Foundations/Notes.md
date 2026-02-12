# Engineering Notes — Level 1

## What This Level Demonstrates

- Explicit network isolation via custom bridge
- Named volume lifecycle control
- Deterministic container naming
- Healthcheck usage for service readiness

---

## Failure Scenarios Tested

1. Removing the named volume → Data loss on restart.
2. Removing network definition → Services cannot resolve by DNS.
3. Removing healthcheck → Race condition during verification.
4. Killing container without restart → Compose handles recovery.

---

## What Is Intentionally NOT Included

- No Kafka
- No distributed streaming
- No monitoring stack
- No secrets management
- No production hardening

This level focuses purely on Docker fundamentals.

---

## Production Considerations (Future)

- Do not expose database ports publicly.
- Use Docker secrets for credentials.
- Add resource limits.
- Add structured logging.

---

Level 1 establishes control.
All distributed complexity builds on this foundation.
