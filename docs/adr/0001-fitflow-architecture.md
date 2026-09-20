# ADR 0001: FitFlow Redesign — High-Level Architecture & Technology Stack

## Status
Accepted

## Context
FitFlow's redesign requires a mobile + web application with real-time workout tracking,
AI-driven personalization, social sharing, and nutrition tracking, handling sensitive health
data for a mid-sized team under HIPAA/GDPR obligations.

## Decision
Adopt a microservices architecture behind a single API Gateway (NestJS), with Flutter as the
unified frontend (iOS/Android/Web), FastAPI-based Python services for AI/ML workloads,
PostgreSQL as the system of record, Redis for caching, an event bus for asynchronous
workflows, and AWS Cognito for authentication.

## Alternatives Considered
1. **Monolithic backend** — rejected: would slow independent scaling of the AI workload and
   complicate compliance boundaries.
2. **React Native + Node/NestJS single-language stack** — rejected: weaker native AI/ML
   tooling and a slightly lower cross-platform score in the weighted decision matrix.
3. **Fully native apps (Kotlin + Swift)** — rejected: no web code reuse, higher long-term
   maintenance cost for a mid-sized team.

## Consequences
**Positive:**
- Independent scaling and deployment of the AI personalization feature.
- Strong compliance posture (encryption, HIPAA-eligible auth, ACID data store).
- Single frontend codebase reduces long-term maintenance cost.

**Negative:**
- Microservices add operational complexity (service discovery, monitoring, inter-service
  auth) that the team must budget for.
- Running both PostgreSQL and MongoDB increases operational surface area.

## Revisit Trigger
Reassess if user growth significantly exceeds initial projections (may require re-evaluating
DynamoDB for specific high-throughput read paths), or if the AI workload's language/framework
needs change.

## Diagram
See `docs/architecture-diagram.png` for the full high-level system architecture diagram.
