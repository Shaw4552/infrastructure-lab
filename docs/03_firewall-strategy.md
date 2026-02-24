# Firewall Policy Strategy

## Objective

Implement a least-privilege firewall model enforcing strict inter-VLAN isolation with explicit allow rules for required services only.

All policies follow a **default deny** approach.

---

## Security Model

- Block all inter-VLAN traffic by default
- Permit only required service flows
- Prevent lateral movement between device classes
- Restrict management plane access
- Log denied traffic for visibility

---

## Policy Matrix

| Source VLAN | Destination VLAN | Port(s) | Action | Reason |
|------------|------------------|---------|--------|--------|
| Clients (40) | Servers (20) | 53 (DNS) | Allow | Central DNS resolution |
| Clients (40) | Internet | 80/443 | Allow | Web access |
| Servers (20) | Internet | 80/443 | Allow | Updates & external APIs |
| VPN (99) | Management (10) | Restricted | Allow | Remote admin access |
| Guest (50) | Any Internal | Any | Deny | Prevent internal access |
| IoT (30) | Servers (20) | Any | Deny | Prevent lateral movement |
| Clients (40) | Management (10) | Any | Deny | Protect admin interfaces |

---

## Rule Ordering Strategy

1. Allow essential services
2. Allow internet-bound traffic
3. Explicitly deny high-risk paths
4. Implicit deny (default drop)

Proper rule order prevents unintended exposure.

---

## Logging & Monitoring

- Log denied inter-VLAN attempts
- Monitor repeated blocked attempts
- Review firewall logs regularly for anomalies

---

## Risk Mitigation Benefits

- Reduced blast radius if a device is compromised
- Strong isolation of IoT devices
- Secure management plane
- Controlled VPN access

---

## Lessons Learned

- Rule sprawl increases complexity
- Naming conventions matter for clarity
- Documentation prevents misconfiguration
- Testing after each rule change is critical