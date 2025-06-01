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
├── CommandsforNon-gui.txt                 # Commands used for testing using non-gui mode
└── README.md
---
-GC Logs, Thread Dumps, Heap Dumps: Not applicable for public APIs, but folder structure is included for reference and real-world enterprise use cases.
---
## 📊 Performance Reports

-JMeter HTML Reports: Generated from .csv test results for visual insights.
-PerfMon Reports: Captured system metrics (CPU, Memory, Disk I/O) on Windows using JMeter’s PerfMon plugin.
-NMON (Linux only): A monitoring script monitor.sh is included for use on Linux environments.

## 🧾 Database Monitoring (DB2MON & EXPLAIN PLAN)
🔍 What is DB2MON?
DB2MON is used in IBM DB2 environments for tracking:
  -SQL execution statistics
  -Buffer pool hits/misses
  -Lock contention
  -Query durations
  -It helps identify bottlenecks in database performance.

📌 What is EXPLAIN PLAN?
  -EXPLAIN PLAN allows analysis of how DB2 will execute a query:
  -Shows whether it will use indexes or table scans
  -Helps detect inefficient SQL joins or filters
  -Crucial for SQL performance tuning

## 📦 Note on Monitoring Scripts
  -The Restful Booker API is a hosted public API.
  -Its internal database or backend code is not accessible.
  -Tools like DB2MON or EXPLAIN PLAN require access to database internals, so they are not applicable here.

## 📌 Summary
  This project simulates realistic API testing using best practices like:
  -Parameterization
  -Correlation
  -Light load validation
  -Modular scripting
  -Multi-layer reporting (JMeter, PerfMon)
