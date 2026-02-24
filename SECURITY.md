# Security Policy (Sanitized Repo)

This repository is intentionally sanitized for public sharing.

## What will NOT be committed
- Secrets (API keys, tokens, passwords)
- VPN configs/keys (WireGuard/OpenVPN)
- Private IP schemes tied to real environments
- Device serials, MAC addresses, hostnames that identify a network

## How secrets are handled
- Configuration is templated via `.env.example`
- Real values belong in a local `.env` (ignored by `.gitignore`)

## If a secret is accidentally committed
- Rotate the secret immediately
- Remove the secret from git history (rewrite history)
- Treat the secret as compromised