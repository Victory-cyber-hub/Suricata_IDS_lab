# Suricata IDS Detection Lab Report

## 1. Executive Summary
Briefly describe the lab, objective, environment, detections, and outcome.

## 2. Scope and Authorization
State that testing was performed only in the authorized lab environment.

## 3. Environment
| Component | Details |
|---|---|
| IDS VM | Kali Linux |
| Traffic generator | Ubuntu VM |
| Suricata version | |
| Interface | |
| Kali IP | |
| Ubuntu IP | |
| Lab subnet | |

## 4. Topology
```text
Ubuntu VM (traffic generator)
          |
       Lab network
          |
Kali VM (Suricata IDS)
          |
 fast.log / eve.json
```

## 5. Configuration
Document interface, `HOME_NET`, rule path, and validation result.

## 6. Detection Rules
Describe SIDs 1000001, 1000002, and 1000003.

## 7. Test Execution
### ICMP
Command, timestamp, expected behavior, observed alert, evidence.

### HTTP
Command, timestamp, expected behavior, observed alert, evidence.

### SYN Scan
Command, timestamp, expected behavior, observed alert, evidence.

## 8. Alert Analysis
Explain how each alert maps to the corresponding rule and generated traffic.

## 9. Evidence
List evidence filenames and what each demonstrates.

## 10. Troubleshooting
Summarize issues encountered and how they were resolved.

## 11. Limitations
Document false positives, rule scope, environmental dependencies, and anything not tested.

## 12. Conclusion
Summarize what was demonstrated based on the evidence collected.
