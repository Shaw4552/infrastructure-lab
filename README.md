# Infrastructure Lab – Segmented Network & Secure Service Architecture

This repository documents a **sanitized infrastructure lab** designed to simulate enterprise-grade network architecture, security controls, and service deployment practices.

The lab demonstrates structured thinking around:

- VLAN segmentation
- Least-privilege firewall policy design
- Dockerized service architecture
- Secure remote administrative access (VPN)
- Backup & recovery planning
- Infrastructure hardening practices

> All IP ranges and configurations are fictionalized. No real secrets, credentials, or identifying infrastructure details are included.

---

## Architecture Overview

The lab implements a segmented network model using a default-deny security posture.

Logical VLANs:

- **Management** – 10.0.10.0/24  
- **Servers** – 10.0.20.0/24  
- **IoT** – 10.0.30.0/24  
- **Clients** – 10.0.40.0/24  
- **Guest** – 10.0.50.0/24  
- **VPN** – 10.10.10.0/24  

Key principles:

- Inter-VLAN traffic blocked by default
- Explicit allow rules for required services only
- IoT isolated from internal systems
- Management interfaces protected
- VPN restricted to administrative scope

---

## Security Model

- Default deny firewall posture
- Policy matrix documentation
- Logged denied traffic
- Segmented remote access
- No secrets committed to version control
- Environment variable templating via `.env.example`

---

## Containerized Services

Services are deployed using Docker Compose with:

- Persistent volumes
- Restart policies
- Limited port exposure
- Configuration templating
- Secret separation

This demonstrates reproducible infrastructure deployment and operational discipline.

---

## Backup & Recovery

The lab includes a documented recovery plan covering:

- Docker volume backups
- Configuration exports
- Database integrity validation
- Restore testing methodology

Recovery planning is treated as part of architecture — not an afterthought.

---

## Repository Structure

- `docs/` – Architectural documentation
- `docker/` – Sanitized deployment templates
- `scripts/` – Example operational automation
- `diagrams/` – Logical topology diagrams

---

# Interview Walkthrough Guide

Suggested review order:

1. Network Topology
2. VLAN Segmentation Strategy
3. Firewall Policy Matrix
4. Docker Architecture
5. Backup & Recovery Strategy
6. VPN Access Model

This repository demonstrates structured infrastructure thinking, layered security design, and documentation discipline aligned with real-world IT operations.
