# Suricata IDS Detection Lab

A beginner-friendly, GitHub-ready practical lab demonstrating how to configure **Suricata IDS**, create custom detection rules, generate controlled network traffic, validate alerts, analyze logs, preserve evidence, and document the results.

> **Lab scope:** Perform all traffic generation and scanning only against systems you own or are explicitly authorized to test.

## Learning objectives
- Identify interfaces, routes, and Suricata version.
- Configure `HOME_NET` and the monitored interface.
- Deploy and validate custom Suricata rules.
- Detect ICMP, HTTP, and TCP SYN scan activity.
- Generate controlled test traffic from an Ubuntu VM.
- Analyze `fast.log` and `eve.json`.
- Capture reproducible evidence and write a professional lab report.
- Track the project with Git and publish it to GitHub.

## Lab topology

```text
                 UBUNTU VM
              Traffic Generator
                     |
          +----------+----------+
          |          |          |
         ICMP       HTTP      SYN Scan
          |          |          |
          +----------+----------+
                     |
                  KALI VM
                SURICATA IDS
                     |
             +-------+-------+
             |               |
          fast.log        eve.json
             |               |
             +-------+-------+
                     |
               Alert Analysis
                     |
                  Evidence
                     |
                  GitHub
```

## Repository structure
```text
Suricata_IDS_Detection_Lab/
├── README.md
├── suricata/
│   ├── README.md
│   └── rules/
│       ├── README.md
│       └── local.rules
├── tests/
│   └── README.md
├── evidence/
│   └── README.md
├── results/
│   ├── README.md
│   ├── alert-analysis.md
│   └── troubleshooting.md
├── docs/
│   ├── README.md
│   └── lab-report.md
├── scripts/
│   ├── README.md
│   ├── validate-suricata.sh
│   └── check-alerts.sh
├── git-workflow/
│   └── README.md
└── .gitignore
```

## Practical workflow

### Phase 1 — Environment
Run on the appropriate VM:
```bash
ip addr
ip route
suricata -V
```

Record the interface, IP addresses, route, and Suricata version in `docs/lab-report.md`.

### Phase 2 — Configuration
Edit the Suricata configuration:
```bash
sudo nano /etc/suricata/suricata.yaml
```
Configure the monitored interface, `HOME_NET`, and the local rules file.

### Phase 3 — Install the rules
```bash
sudo cp suricata/rules/local.rules /etc/suricata/rules/local.rules
```

### Phase 4 — Validate
```bash
sudo suricata -T -c /etc/suricata/suricata.yaml
```
**Do not proceed until configuration testing succeeds.**

### Phase 5 — Start/restart IDS
```bash
sudo systemctl restart suricata
sudo systemctl status suricata
```

### Phase 6 — Generate authorized lab traffic from Ubuntu
ICMP:
```bash
ping -c 4 <KALI_IP>
```

HTTP:
```bash
curl http://<KALI_IP>/
```

Authorized lab SYN scan:
```bash
nmap -sS -p 20-100 <KALI_IP>
```

### Phase 7 — Analyze alerts on Kali
```bash
sudo tail -f /var/log/suricata/fast.log
```

```bash
sudo tail -f /var/log/suricata/eve.json | jq
```

### Phase 8 — Evidence
Save screenshots and relevant sanitized log excerpts under `evidence/`. Use descriptive filenames and never commit secrets, credentials, tokens, or unrelated personal data.

### Phase 9 — Documentation
Complete:
- `results/alert-analysis.md`
- `docs/lab-report.md`
- `results/troubleshooting.md`

### Phase 10 — GitHub
```bash
git init
git add .
git commit -m "Initial Suricata IDS detection lab"
git branch -M main
git remote add origin <YOUR_GITHUB_REPOSITORY_URL>
git push -u origin main
```

After each documented milestone:
```bash
git add .
git commit -m "Document ICMP detection test"
git push
```

## Detection rules

| SID | Detection |
|---|---|
| 1000001 | ICMP Ping Detection |
| 1000002 | HTTP Traffic Detection |
| 1000003 | TCP SYN Port Scan Detection |

## Evidence checklist
- [ ] Network interface and IP configuration
- [ ] Suricata version
- [ ] Successful configuration test
- [ ] Suricata service status
- [ ] ICMP test and corresponding alert
- [ ] HTTP test and corresponding alert
- [ ] SYN scan and corresponding alert
- [ ] `fast.log` evidence
- [ ] `eve.json` evidence
- [ ] Alert analysis
- [ ] Troubleshooting notes
- [ ] Final lab report

## Portfolio outcome
This repository demonstrates a complete progression from **IDS configuration → rule development → controlled traffic generation → detection → log analysis → evidence → professional documentation**.

## Disclaimer
This is an educational defensive-security lab. Only test systems and networks for which you have explicit authorization.
