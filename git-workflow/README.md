# Git Workflow

## Initial repository
```bash
git init
git add .
git commit -m "Initial Suricata IDS detection lab"
git branch -M main
git remote add origin <YOUR_GITHUB_REPOSITORY_URL>
git push -u origin main
```

## Evidence/documentation milestones
```bash
git add .
git commit -m "Document environment and Suricata configuration"
git push

git add .
git commit -m "Document ICMP detection test"
git push

git add .
git commit -m "Document HTTP detection test"
git push

git add .
git commit -m "Document SYN scan detection test"
git push

git add .
git commit -m "Finalize lab report and evidence"
git push
```

## Portfolio hygiene
- Never commit secrets or credentials.
- Sanitize IPs or identifiers if the environment requires it.
- Keep commits focused and descriptive.
- Keep evidence filenames consistent with the report.
