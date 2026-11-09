#!/usr/bin/env bash
# Check a URL you own or are authorized to test. Localhost only.
set -euo pipefail
if [[ $# -ne 1 ]]; then
  echo "Usage: $0 http://127.0.0.1:8000/health" >&2
  exit 2
fi
url="$1"
if [[ "$url" != http://127.0.0.1:* && "$url" != https://127.0.0.1:* && "$url" != http://localhost:* && "$url" != https://localhost:* ]]; then
  echo "Safety check: this starter script only accepts localhost URLs." >&2
  exit 2
fi
curl --silent --show-error --output /dev/null --write-out 'HTTP %{http_code}\n' "$url"
