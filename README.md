
# Linux Production Support & Incident Troubleshooting Lab

A hands-on Linux production support lab demonstrating application log analysis, Bash scripting, incident investigation, and root cause analysis using Ubuntu 24.04 and Docker.

## Project Overview

This project simulates a payment application incident using fictional log data.

The goal is to demonstrate practical L2/L3 production support troubleshooting techniques.

## Technologies Used

- Ubuntu 24.04 LTS
- Docker
- Linux Command Line
- Bash Scripting
- grep, tail, df, free, wc, sort
- Git and GitHub
- Incident Management and RCA

## Incident Scenario

A simulated payment application experienced HTTP 500 and HTTP 504 errors.

The investigation identified:

| Metric | Result |
|---|---|
| Total log entries | 8 |
| ERROR entries | 3 |
| HTTP 500 entries | 2 |
| HTTP 504 entries | 2 |
| Affected transactions | TXN-1002, TXN-1003 |

## Investigation Commands

```bash
pwd
whoami
cat /etc/os-release
df -h
free -h
grep "ERROR" logs/payment-api.log
grep "status=500" logs/payment-api.log
tail -n 5 logs/payment-api.log
```

## Automated Troubleshooting

A Bash script automatically analyzes application logs and reports:

- Total log entries
- ERROR count
- HTTP 500 count
- HTTP 504 count
- Affected transaction IDs
- Latest application events

### Run the Lab

Requires Docker Desktop.

**Windows PowerShell:**

```powershell
docker run --rm -v "${PWD}:/opt/support-lab" ubuntu:24.04 bash /opt/support-lab/scripts/investigate.sh
```

Run the command from the repository root.

## Project Structure

```text
linux-production-support-lab/
├── README.md
├── .gitattributes
├── docs/
│   └── INCIDENT-RCA-001.md
├── logs/
│   └── payment-api.log
├── scripts/
│   └── investigate.sh
└── screenshots/
    └── incident-investigation.png
```

## Incident Findings

**TXN-1002:** Database connection timeout followed by HTTP 500 payment failure.

**TXN-1003:** Upstream gateway slowdown followed by HTTP 504 gateway timeout.

These findings are based on fictional application logs. The underlying root causes have not been conclusively established.

## Investigation Screenshot

The following screenshot shows the successful execution of the automated Linux incident investigation script using Docker.

![Linux Production Support Incident Investigation](screenshots/incident-investigation.png)

The script identifies application errors, HTTP 500/504 failures, affected transactions, and the latest application log events.

## Incident RCA

[Read the Incident RCA Report](docs/INCIDENT-RCA-001.md)
## System Architecture

```mermaid
flowchart TD
    A["Docker Desktop"] --> B["Ubuntu 24.04 Container"]
    B --> C["Mounted Project Files"]
    C --> D["Synthetic Payment Application Logs"]
    D --> E["Bash Investigation Script"]
    E --> F["grep / tail / wc / sort"]
    F --> G["Error Counts and Transaction IDs"]
    G --> H["Incident Findings"]
    H --> I["RCA Documentation and Screenshot"]
```

### Architecture Explanation

This project demonstrates Linux-based production incident troubleshooting in an isolated Docker environment.

1. **Environment:** Docker runs an Ubuntu 24.04 container with the project directory mounted.
2. **Log analysis:** A Bash script reads synthetic payment application logs and uses Linux command-line utilities to investigate failures.
3. **Error identification:** The investigation identifies ERROR entries, HTTP 500 responses, and HTTP 504 gateway timeouts.
4. **Transaction correlation:** Application log events are correlated using transaction identifiers.
5. **Incident documentation:** Findings are recorded in an incident RCA report, supported by a screenshot of the executed investigation.

## Interview-Ready Project Explanation

### Problem Statement

Production support engineers frequently investigate application failures on Linux servers. These incidents require log analysis, error identification, and transaction-level troubleshooting.

### My Implementation

I developed a Linux production-support troubleshooting lab using Ubuntu 24.04, Docker, and Bash scripting.

The lab simulates payment-processing failures using fictional application logs. I created an automated investigation script that analyzes application events and identifies error patterns.

### Verified Investigation Results

| Metric                | Result             |
| --------------------- | ------------------ |
| Total log entries     | 8                  |
| ERROR entries         | 3                  |
| HTTP 500 responses    | 2                  |
| HTTP 504 responses    | 2                  |
| Affected transactions | TXN-1002, TXN-1003 |

The logs indicate a database connection timeout associated with `TXN-1002` and an upstream gateway slowdown associated with `TXN-1003`. These are simulated incident findings, not independently confirmed infrastructure root causes.

### How I Would Explain This in an Interview

"I built a Linux production-support lab using Ubuntu 24.04 and Docker to simulate payment application incidents.

I developed a Bash troubleshooting script to analyze application logs, identify HTTP 500 and 504 errors, and correlate affected transactions.

The investigation identified eight log entries, three ERROR events, and two affected transactions.

I documented the investigation in an incident RCA report and captured execution evidence.

This project demonstrates my ability to use Linux command-line tools, automate repetitive troubleshooting tasks, and document production incident findings."

### Skills Demonstrated

**Linux · Ubuntu · Docker · Bash · grep · tail · Log Analysis · Incident Investigation · RCA**

## Skills Demonstrated

- Linux Production Support
- L2/L3 Application Troubleshooting
- Bash Scripting
- Application Log Analysis
- HTTP Error Investigation
- Incident Management
- Root Cause Analysis
- Technical Documentation

## Data Safety

All application logs and transaction identifiers are synthetic.

No employer data, customer records, credentials, or proprietary information are included.

## Author

[Praveen Koppad - GitHub Profile](https://github.com/praveenkoppad916-hue)
