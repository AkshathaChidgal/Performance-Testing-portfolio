# 🚀 Performance Testing for Restful Booker API

⚠️ **Note:** Only limited load (1–5 users) was applied to the public API ([https://restful-booker.herokuapp.com](https://restful-booker.herokuapp.com)) for test plan validation purposes only. No stress or heavy load testing was performed out of respect for the public endpoint.

---

## 📘 Project Overview

This project demonstrates **performance testing** of the publicly available Restful Booker API using **Apache JMeter**. It focuses on validating API endpoints with minimal concurrent users, simulating realistic usage, and generating professional reports. While server-side diagnostics like GC logs, thread dumps, and NMON reports are not directly possible with public APIs, PerfMon metrics from the **local system** were captured for demonstration.

---

## 🎯 Project Objectives

- ✅ Validate API endpoints under minimal concurrent load (1–5 users)  
- ✅ Perform basic **response time analysis** and **assertions**  
- ✅ Use **parameterized CSV data** for dynamic input  
- ✅ Extract and correlate **authentication tokens and booking IDs** using JMeter extractors  
- ✅ Generate **JMeter HTML reports** for summary and detail views  
- ✅ Capture **local system metrics** using **JMeter PerfMon plugin**  
- ⚙️ Automate test execution and reporting with shell scripts  
- 🛑 Server-side diagnostics (GC logs, NMON, thread dumps) are added for reference — not executed in this public API context

---

## 🧰 Tech Stack

| Tool/Tech          | Purpose                                     |
|--------------------|---------------------------------------------|
| Apache JMeter      | Load testing and scripting                  |
| PerfMon Plugin     | Local system (CPU, memory, etc.) monitoring |
| Postman            | Optional API functional validation          |
| Shell Scripting    | Test execution and report automation        |
| NMON, GC Logs, Heap Dumps | (Included for reference; not executed here) |
| GitHub             | Version control and documentation           |

---

## 🗂️ Project Structure

```bash
performance-testing-restful-booker/
├── test-plans/
│   └── restful-booker-test-plan.jmx       # JMeter test plan
├── data/
│   ├── booking-data.csv                   # Dynamic test data
│   └── users.csv                          # Optional auth user data
├── reports/
│   ├── html-reports/                      # JMeter HTML report output
│   ├── nmon/                              # System performance logs (reference)
│   ├── perfmon/                           # Local machine metrics from JMeter PerfMon
│   └── db2mon/                            # DB metrics (not used here)
├── results/
│   └── RestfulBooker-test-results.csv     # JMeter CSV raw results
├── scripts/
│   ├── generate-report.sh                 # Script to generate HTML reports
│   └── monitor.sh                         # Linux system monitoring (optional)
├── analysis/
│   ├── gc-logs/                           # Placeholder for GC logs
│   ├── thread-dumps/                      # Placeholder for thread dumps
│   └── analysis-summary.md                # Summary of findings (PerfMon etc.)
├── postman/
│   ├── restful-booker-collection.json     # Postman test collection
│   └── environment.json                   # Postman environment config
└── README.md
