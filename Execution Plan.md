# Project Execution Plan (Canonical Roadmap)

## Authoritative plan governing scope, sequence, KPIs, and public execution (Levels 1–4).

Docker-Native Distributed Data Pipeline — Detailed Execution Plan

Purpose: Build a full, utility-producing, observable, and resilient distributed data pipeline using Docker, Docker Compose, Kafka, NiFi, Postgres, Elasticsearch, and streaming/decision logic. The project is public-grade, structured to demonstrate mastery, reproducibility, and engineering rigor.

Execution Principles

Levels → Modules → Tasks → KPIs: Every action must have a measurable outcome.

Zero drift: No assumptions, no guessing — every component documented and tested.

Utility-first: Pipeline produces decisions, not just data.

Failure-proofed: Deliberate failure scenarios are first-class citizens.

Competition-aware: Structured, observable, and public-ready — higher maturity than peer repos.

Level 1 — Foundations & Docker Mastery

Objective: Absolute confidence in Docker, images, volumes, networks, and Compose orchestration.

Modules:

Container Fundamentals

Run base containers: nginx, postgres, redis.

Inspect lifecycle, logs, ports, env.

KPI: Containers can be started, stopped, destroyed, restarted without errors.

Dockerfiles & Images

Build custom images for Python apps and Kafka components.

Multi-stage builds to reduce size.

KPI: Images <200MB, cache usage efficient, reproducible builds.

Volumes & Persistence

Use named volumes and bind mounts.

Confirm data survives container restarts.

KPI: Persistent state verified and documented.

Level 2 — Multi-Container Orchestration

Objective: Compose as architecture, not YAML.

Modules:

Docker Compose Setup

Multi-service orchestration: Kafka, NiFi, Postgres, Elasticsearch, Streams app.

Custom networks, bridge communication.

KPI: Services communicate via service names, no localhost hacks.

Environment & Secrets

Use .env files, config overrides, secrets management.

KPI: Config changes without rebuild; secrets never hard-coded.

Failure Simulations

Kill services mid-flow.

KPI: System degrades predictably, logs explain failure.

Level 3 — Distributed Pipeline & Utility

Objective: Build a real, decision-producing, multi-ingress pipeline.

Modules:

Ingress

NiFi handles HTTP, file, and streaming ingestion.

Normalize data to Avro/Protobuf.

KPI: Multiple inputs → single governed schema; backpressure works.

Transport & Contract

Kafka (KRaft) + Schema Registry enforce contract.

Test schema violations.

KPI: Bad schema rejected; data integrity preserved.

Processing & Decision

Kafka Streams or ksqlDB to detect anomalies, thresholds.

Route alerts to separate topic.

KPI: Decisions produced; alerts visible.

Egress & Persistence

Sink clean data to Postgres and Elasticsearch.

KPI: Queryable state; at-least-once delivery; recoverable after container restart.

Level 4 — Observability & Operability

Objective: Prove reliability, performance, and recoverability.

Modules:

Metrics & Dashboards

Prometheus + Grafana + AKHQ.

Track latency, throughput, failures.

KPI: SLA met; metrics survive restarts.

Performance & Scale

Scale producers and partitions.

Measure throughput, rebalances.

KPI: Linear scaling; no data loss.

Chaos & Recovery

Kill brokers, connectors, ingress mid-flow.

KPI: System recovers predictably; logs traceable.

Public-Proof Documentation

Architecture diagrams, pipeline flow, KPIs.

Scripts for bootstrap, stop, verification.

KPI: Anyone can clone → run → verify results.

Level 5 — Completion & Mastery

All modules implemented and tested.

Documentation complete.

All KPIs passed.

Failure modes documented.

Pipeline utility-first, resilient, observable, and reproducible.

Usage of This Plan:

Copy-paste this as your official execution blueprint.

Any future conversation, code, or Docker artifact will refer back to this path.

Any deviation without consulting this plan is considered silent failure.
