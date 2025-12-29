# SQL Server DevOps Automation Pipeline

## Overview
This project represents my journey from a traditional **DBA role toward a DevOps-oriented DBA** by building a **complete multi-environment SQL Server automation pipeline**.

The goal of this project is to demonstrate how SQL Server infrastructure and database changes can be managed using **Infrastructure as Code, CI/CD pipelines, and database version control**, following DevOps best practices.

---

## Tools & Technologies
- **Terraform** – Infrastructure as Code (IaC)
- **Docker** – SQL Server containerization
- **GitHub Actions** – CI/CD pipelines
- **Flyway** – Database versioning and migrations
- **SQL Server** – Relational database platform

---

## What I Built
- SQL Server deployments for **Dev, Test, and Prod** environments
- **Environment-specific Git branches and CI/CD workflows**
- **Production approval process** with required reviewers
- Secure **secrets management** for SA credentials
- Fully automated **infrastructure provisioning** using Terraform
- Clean and structured repository layout for infrastructure and database scripts
- **Automated SQL deployments** using Flyway to maintain database version control across environments

---

## Repository Structure
```text
.
├── infra/            # Terraform scripts for infrastructure
├── db/               # Flyway migration scripts
│   ├── V1__init.sql
│   ├── V2__schema.sql
│   └── V3__data.sql
├── .github/



CI/CD Workflow Overview

Code changes are pushed to environment-specific branches
GitHub Actions pipelines are triggered automatically
Infrastructure is provisioned using Terraform
Flyway applies versioned SQL migrations
Production deployments require manual approval
Database schema and data changes are tracked consistently

Key Learnings

Treating database changes as code
Managing SQL Server deployments across multiple environments
Designing CI/CD pipelines for controlled and auditable DB changes
Implementing approvals and secrets management in pipelines
Applying DevOps principles to traditional DBA workflows

Next Improvements

Add automated rollback testing
Integrate database health checks
Extend pipeline with automated testing


