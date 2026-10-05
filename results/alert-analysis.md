# Alert Analysis

## Test environment
- Date:
- Ubuntu IP:
- Kali/IDS IP:
- Monitoring interface:
- Suricata version:
- Network/subnet:
- Configuration test result:

## ICMP Detection — SID 1000001
**Traffic generated**
```text
ping -c 4 <KALI_IP>
```
**Observed timestamp:**

**Observed alert:**
```text
Paste sanitized alert here.
```

**Analysis:**
- Source:
- Destination:
- Protocol:
- SID:
- Rule message:
- Expected vs observed:
- Evidence file:

## HTTP Detection — SID 1000002
**Traffic generated**
```text
curl http://<KALI_IP>/
```
**Observed timestamp:**

**Observed alert:**
```text
Paste sanitized alert here.
```

**Analysis:**
- Source:
- Destination:
- Protocol:
- SID:
- Rule message:
- Expected vs observed:
- Evidence file:

## TCP SYN Scan Detection — SID 1000003
**Traffic generated**
```text
nmap -sS -p 20-100 <KALI_IP>
```
**Observed timestamp:**

**Observed alert:**
```text
Paste sanitized alert here.
```

**Analysis:**
- Source:
- Destination:
- Protocol:
- SID:
- Rule message:
- Expected vs observed:
- Evidence file:

## Conclusion
Summarize which detections fired, what evidence confirmed them, and any limitations observed.
