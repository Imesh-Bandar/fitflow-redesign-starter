# FitFlow Redesign

Redesign of the FitFlow fitness application, delivering a seamless iOS, Android and Web
experience with real-time workout tracking, AI-driven personalization, social sharing, and
nutrition tracking.

This repository was produced for **IT3060 – Human Computer Interaction, Lab Exercise 05**
(BSc (Hons) in Information Technology, Year 3, Semester 2 2026).

## Recommended Technology Stack

| Layer | Technology | Why |
|---|---|---|
| Frontend | Flutter (iOS, Android, Web) | Single codebase, near-native performance, full web support |
| Backend | Python / FastAPI | Best-in-class AI/ML ecosystem, async performance, OpenAPI docs |
| Primary database | PostgreSQL | ACID guarantees for health/workout data |
| Secondary store | MongoDB | Flexible schema for social content |
| Cache | Redis | Low-latency reads for plans/profiles |
| Authentication | AWS Cognito | HIPAA-eligible (BAA), MFA/SSO, cost-effective at scale |

See `docs/comparison-matrix.md` and `docs/tech-stack-summary.md` for the full evaluation, and
`docs/adr/0001-fitflow-architecture.md` for the Architecture Decision Record.

## Project Structure

```
fitflow-redesign/
├── frontend/            # Flutter app (iOS, Android, Web)
├── backend/             # FastAPI Backend + AI/ML personalization
├── docs/
│   ├── tech-stack-summary.md
│   ├── comparison-matrix.md
│   ├── architecture-diagram.png
│   └── adr/
│       └── 0001-fitflow-architecture.md
├── .github/workflows/ci.yml
├── .gitignore
└── README.md
```

## Getting Started

```bash
# Clone
git clone https://github.com/<your-username>/fitflow-redesign.git
cd fitflow-redesign

# Frontend (Flutter)
# Make sure Flutter is installed
cd frontend && flutter pub get && flutter run

# Backend (FastAPI)
cd backend && pip install -r requirements.txt && uvicorn main:app --reload
```

## Branching & Contribution

- `main` is protected: changes land via pull request with at least one review and passing CI.
- Use feature branches: `feature/<short-description>`.

## License

Add your course/organization's preferred license here.
