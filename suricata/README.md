# Suricata Configuration

This directory documents the Suricata portion of the lab.

## Configuration tasks
1. Identify the monitoring interface.
2. Configure the interface in `/etc/suricata/suricata.yaml`.
3. Set `HOME_NET` to the authorized lab network.
4. Ensure `local.rules` is included in the rule configuration.
5. Validate with:
```bash
sudo suricata -T -c /etc/suricata/suricata.yaml
```
6. Restart Suricata and verify service status.

The actual system configuration file is intentionally not copied into this repository because paths, interface names, and lab IP ranges vary by environment.
