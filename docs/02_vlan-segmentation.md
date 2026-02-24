# VLAN Segmentation Strategy

## Objective

Design a segmented network architecture following least-privilege and default-deny principles to reduce lateral movement and improve security posture.

## VLAN Overview

| VLAN | Purpose       | Subnet          |
|------|--------------|----------------|
| 10   | Management   | 10.0.10.0/24   |
| 20   | Servers      | 10.0.20.0/24   |
| 30   | IoT          | 10.0.30.0/24   |
| 40   | Clients      | 10.0.40.0/24   |
| 50   | Guest        | 10.0.50.0/24   |
| 99   | VPN Clients  | 10.10.10.0/24  |

*Note: All IP ranges are fictional and used for demonstration only.*

---

## Design Principles

- Default deny inter-VLAN traffic
- Explicit allow rules for required services only
- Management network isolated from general client access
- IoT devices restricted from initiating connections to internal services
- Guest network internet-only access

---

## Segmentation Goals

1. Prevent IoT lateral movement
2. Protect management interfaces from client exposure
3. Limit blast radius of compromised device
4. Improve traffic visibility and logging
5. Support future automation and monitoring

---

## Traffic Flow Summary

- Clients → DNS (Servers VLAN)
- Clients → Internet
- Servers → Internet (updates only)
- VPN → Management (restricted)
- Guest → Internet only
- IoT → Internet only (no internal initiation)

---

## Lessons Learned

- VLAN tagging consistency is critical across switches and APs
- Documentation prevents firewall rule sprawl
- Segmentation simplifies troubleshooting by narrowing scope