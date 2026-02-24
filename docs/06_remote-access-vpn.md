# Secure Remote Access (VPN)

## Objective

Provide secure administrative access to management infrastructure while minimizing exposure.

---

## Design Model

- Dedicated VPN subnet (10.10.10.0/24)
- Access restricted to Management VLAN
- No lateral access to Client or IoT VLANs

---

## Security Controls

- Key-based authentication
- Limited route advertisement
- No split tunneling (if full-tunnel required)
- Firewall restrictions applied to VPN clients

---

## Risk Mitigation

- Secure remote administration
- Reduced attack surface
- Segmented remote access