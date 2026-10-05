# Traffic Tests

Run these tests only inside the authorized lab network.

## 1. ICMP
From Ubuntu:
```bash
ping -c 4 <KALI_IP>
```
Expected result: Suricata generates an alert matching SID `1000001`.

## 2. HTTP
Ensure an HTTP service is available on the authorized Kali lab host, then:
```bash
curl http://<KALI_IP>/
```
Expected result: an HTTP alert matching SID `1000002`.

## 3. SYN scan
From Ubuntu:
```bash
nmap -sS -p 20-100 <KALI_IP>
```
Expected result: TCP SYN activity is visible and can match SID `1000003`.

Record actual timestamps, source/destination IPs, interface, and observed alert text in `results/alert-analysis.md`.
