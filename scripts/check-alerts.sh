#!/usr/bin/env bash
set -euo pipefail

FAST_LOG="${1:-/var/log/suricata/fast.log}"

if [[ ! -f "$FAST_LOG" ]]; then
  echo "ERROR: Alert log not found: $FAST_LOG"
  exit 1
fi

echo "[+] Recent Suricata alerts:"
sudo tail -n 50 "$FAST_LOG"

echo
echo "[+] Suggested live view:"
echo "sudo tail -f $FAST_LOG"
