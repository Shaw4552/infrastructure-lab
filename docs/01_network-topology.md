# Network Topology Overview

## Objective

Design a segmented, secure infrastructure simulating enterprise-style network separation within a lab environment.

All IP ranges are fictional for demonstration purposes.

---

## Logical Topology

Internet  
→ Edge Router / Firewall  
→ Layer 2/3 Switch  
→ VLAN Segmented Networks  

- VLAN 10 – Management (10.0.10.0/24)
- VLAN 20 – Servers (10.0.20.0/24)
- VLAN 30 – IoT (10.0.30.0/24)
- VLAN 40 – Clients (10.0.40.0/24)
- VLAN 50 – Guest (10.0.50.0/24)
- VLAN 99 – VPN (10.10.10.0/24)

---

## Architectural Goals

- Isolate management interfaces
- Restrict east-west traffic
- Prevent IoT lateral movement
- Provide secure remote administrative access
- Support containerized service deployment

---

## Traffic Flow Model

- North-South traffic: Internet ↔ Internal VLANs (controlled via firewall)
- East-West traffic: Blocked by default between VLANs
- VPN traffic: Restricted to Management network only

---

## Design Considerations

- VLAN tagging consistency across switches
- Firewall rule order integrity
- DNS centralization
- Logging for denied traffic