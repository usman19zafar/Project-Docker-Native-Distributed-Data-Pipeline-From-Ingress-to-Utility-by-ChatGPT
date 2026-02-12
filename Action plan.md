THE EXECUTABLE PLAN — DOCKER + DISTRIBUTED SYSTEMS

(Small parts, zero drift, public-grade engineering)

Core principle:

Docker is not a tool. Docker is the control plane of engineering thought.

You will build one coherent system, not random demos.

LEVEL 1 — DOCKER FOUNDATIONS (CONTROL & MENTAL MODELS)

Objective: Absolute confidence with containers, images, networks, volumes.

Module 1.1 — Container Fundamentals

Tasks

Install Docker Engine + Docker Compose

Run: nginx, postgres, redis

Inspect containers, logs, ports, env vars

Exec into running containers

KPIs

Explain container lifecycle without notes

Restart container → data loss understood

Ports + env vars mapped correctly

Module 1.2 — Images & Dockerfiles

Tasks

Write Dockerfile for Python app

Use multi-stage build

Compare python:slim vs alpine

Reduce image size by 50%+

KPIs

Image < 200MB

Rebuild uses cache correctly

You can explain each Dockerfile line

Module 1.3 — Volumes & Persistence

Tasks

Run Postgres with named volume

Kill container → data survives

Bind mount vs volume comparison

KPIs

Persistent state proven

Volume lifecycle clearly documented

No “magic thinking” about data

LEVEL 2 — DOCKER COMPOSE AS A SYSTEM TOOL

Objective: Compose is architecture, not YAML.

Module 2.1 — Multi-Container Application

Tasks

App + DB + Cache via docker-compose

Custom bridge network

Service discovery via DNS

KPIs

No localhost hacks

Containers talk by service name

Network diagram in README

Module 2.2 — Configuration & Secrets

Tasks

Use .env files

Override configs per environment

Inject secrets safely

KPIs

Same compose runs dev/prod-like

No secrets hardcoded

Config changes without rebuild

Module 2.3 — Failure by Design

Tasks

Kill DB container

Restart app container

Simulate network partition

KPIs

System degrades predictably

Logs explain failure clearly

No silent corruption

LEVEL 3 — DISTRIBUTED DATA PIPELINE (REAL UTILITY)

Objective: Build a utility-producing pipeline, not a demo.

Module 3.1 — Ingress Layer

Containers

NiFi

Kafka (KRaft)

Schema Registry

Tasks

HTTP + file ingress

Normalize to Avro

Publish to Kafka

KPIs

Multiple inputs → one contract

Backpressure demonstrated

Bad data rejected

Module 3.2 — Transport & Contract

Tasks

Enforce schema compatibility

Break schema intentionally

Observe producer failure

KPIs

Schema violations visible

No silent data drift

Contract documented

Module 3.3 — Processing & Decision

Containers

ksqlDB or Kafka Streams app

Tasks

Create rule (threshold / anomaly)

Route alerts to separate topic

KPIs

Pipeline makes decisions

Alert topic populated

Decision logic documented

Module 3.4 — Egress & State

Containers

Kafka Connect

Postgres / Elasticsearch

Tasks

Sink clean data

Sink alert data separately

Query results

KPIs

Data queryable

At-least-once proven

Restart without duplicates

LEVEL 4 — OPERABILITY, OBSERVABILITY, CONFIDENCE

Objective: You trust the system under stress.

Module 4.1 — Observability

Containers

Prometheus

Grafana

AKHQ

Tasks

Collect Kafka + app metrics

Create latency + throughput panels

KPIs

One SLA defined

Metrics survive restarts

Dashboard committed to repo

Module 4.2 — Performance & Scale

Tasks

Increase producers 10×

Increase partitions

Observe rebalance

KPIs

Throughput scales linearly

Rebalance behavior explained

No data loss

Module 4.3 — Chaos & Recovery

Tasks

Kill broker

Kill Connect

Kill NiFi mid-flow

KPIs

System recovers automatically

No manual patching

Failure report written

Module 4.4 — Engineering Artifact (Public Proof)

Tasks

Architecture diagram

Failure modes table

Runbook (how to operate)

README with KPIs

KPIs

Repo reads like production

Anyone can run it

You can defend every choice

FINAL OUTCOME (THIS IS THE REAL KPI)

After this:

Docker no longer scares you

Large systems feel reducible

You stop chasing tools

You start owning systems

This is how people become project-ready.
