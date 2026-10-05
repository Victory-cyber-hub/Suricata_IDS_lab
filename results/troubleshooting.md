# Troubleshooting Log

Record troubleshooting as a reproducible incident-style log.

| Date | Symptom | Diagnosis/Checks | Resolution | Verification |
|---|---|---|---|---|
| YYYY-MM-DD | Example: Suricata test failed | Checked YAML/rule syntax | Corrected configuration | `suricata -T` passed |

## Useful checks

### Service
```bash
sudo systemctl status suricata
sudo journalctl -u suricata --no-pager -n 100
```

### Configuration
```bash
sudo suricata -T -c /etc/suricata/suricata.yaml
```

### Logs
```bash
sudo tail -f /var/log/suricata/fast.log
sudo tail -f /var/log/suricata/eve.json | jq
```

Document what you actually observed rather than copying assumptions.
