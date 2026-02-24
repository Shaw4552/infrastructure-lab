#!/usr/bin/env bash
set -euo pipefail

echo "Example deploy script (sanitized)."
echo "Intended flow:"
echo "1) Validate environment (.env not committed)"
echo "2) docker compose pull"
echo "3) docker compose up -d"
echo "4) basic health checks"