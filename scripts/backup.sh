#!/usr/bin/env bash
set -euo pipefail

echo "Example backup script (sanitized)."
echo "Intended flow:"
echo "1) Stop services"
echo "2) Snapshot volumes"
echo "3) Copy to backup target"
echo "4) Verify checksums"
echo "5) Restart services"