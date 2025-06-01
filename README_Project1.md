# Performance Testing for Restful Booker API

⚠️ **Note:** Only limited load (1–5 users) was applied to the public API (https://restful-booker.herokuapp.com) for test plan validation purposes only. No stress or heavy load testing was performed.

---

## Project Overview

This project demonstrates **performance testing** of the publicly available Restful Booker API using Apache JMeter. It focuses on validating API endpoints with minimal concurrent users, simulating realistic usage scenarios, and generating insightful reports.

---

## 📌 Project Objectives

- ✅ Validate API endpoints under minimal concurrent load (1–5 users).  
- ✅ Perform basic **response time analysis** and **assertions** to ensure API correctness.  
- ✅ Use **parameterized data** to simulate realistic user input and enhance test coverage.  
- ✅ **Correlate dynamic data** such as authentication tokens and booking IDs using JMeter extractors.  
- ✅ Monitor **local system metrics** (CPU, memory) during test execution for environment awareness.  
- ✅ Generate professional **HTML reports** for summary and detailed performance insights.  
- ⚙️ Automate **test execution** and **report generation** using shell scripts for efficiency.

---

## 🛠️ Tech Stack

| Tool/Tech       | Purpose                                   |
|-----------------|-------------------------------------------|
| Apache JMeter   | Load testing and API scripting             |
| Postman (Optional) | API functional validation                 |
| Shell Scripting | Test execution automation and monitoring  |
| NMON, GC Logs   | Server and JVM performance analysis       |
| GitHub          | Version control and project management    |

---

## 🗂️ Project Structure

```bash
performance-testing-restful-booker/
├── test-plans/
│   └── restful-booker-test-plan.jmx       # JMeter test plan
├── data/
│   ├── booking-data.csv                   # Parameterized booking data
│   └── users.csv                          # Optional user auth data
├── reports/
│   ├── html-reports/                      # JMeter HTML results
│   ├── nmon/                              # System performance reports
│   └── db2mon/                            # Database-level performance reports
├── results/
│   └── RestfulBooker-test-results.csv     # Raw JMeter results
├── scripts/
│   ├── generate-report.sh                 # Report automation script
│   └── monitor.sh                         # System monitoring script
├── analysis/
│   ├── gc-logs/                           # JVM GC logs
│   ├── thread-dumps/                      # Thread dumps
│   └── analysis-summary.md                # Summary of analysis findings
├── postman/
│   ├── restful-booker-collection.json     # Postman test collection
│   └── environment.json                   # Postman environment
└── README.md
