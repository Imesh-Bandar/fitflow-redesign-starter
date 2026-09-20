# FitFlow Redesign — Technology Stack Summary

## Frontend: Flutter
Single codebase for iOS, Android and Web with near-native performance and the highest
code-reuse of the cross-platform options evaluated (vs. React Native, Kotlin Multiplatform,
Swift/SwiftUI). See the full comparison in `comparison-matrix.md`.

## Backend: Python / FastAPI
Chosen for native alignment with the AI/ML personalization engine, async performance close
to Node.js, automatic OpenAPI documentation, and a gentle learning curve.

## Database: PostgreSQL (+ MongoDB for social content)
PostgreSQL is the system of record for structured, transactional health/workout/nutrition
data, chosen for ACID guarantees and mature compliance tooling. MongoDB supplements it for
flexible, high-volume social content.

## Authentication: AWS Cognito
Selected for HIPAA-eligibility under a signed BAA, mature MFA/SSO/social login support, and
pay-as-you-go pricing appropriate for a mid-sized team.

## Supporting Infrastructure
- **Redis** — caching layer for plans/profiles and low-latency reads.
- **Event bus / message queue** — decouples services for async workloads (e.g. recomputing
  recommendations after a new workout is logged).
- **Object storage (S3-compatible)** — images and media for social posts.

See `docs/comparison-matrix.md` for the full weighted scoring and `docs/adr/0001-fitflow-architecture.md`
for the architecture decision record.
