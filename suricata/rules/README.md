# Custom Rules

`local.rules` contains three beginner-friendly custom detections used by the workflow.

| SID | Purpose |
|---|---|
| 1000001 | ICMP ping |
| 1000002 | HTTP traffic |
| 1000003 | TCP SYN scan behavior |

Copy the file to the Suricata rules directory on the IDS VM:
```bash
sudo cp local.rules /etc/suricata/rules/local.rules
```

Then validate the configuration before testing traffic.
