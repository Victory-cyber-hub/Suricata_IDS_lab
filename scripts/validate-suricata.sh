#!/usr/bin/env bash
set -euo pipefail

CONFIG="${1:-/etc/suricata/suricata.yaml}"

if ! command -v suricata >/dev/null 2>&1; then
  echo "ERROR: suricata is not installed or not in PATH."
  exit 1
fi

echo "[+] Suricata version:"
suricata -V
echo
echo "[+] Testing configuration: $CONFIG"
sudo suricata -T -c "$CONFIG"
echo
echo "[+] Configuration validation completed successfully."
