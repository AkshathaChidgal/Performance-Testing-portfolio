# 🧪 Performance Testing of Restful Booker API

This project demonstrates performance testing of the publicly available [Restful Booker API](https://restful-booker.herokuapp.com) using **Apache JMeter**. It simulates real-world load conditions, evaluates system behavior under stress, and analyzes performance metrics through various tools and reports.

---

## 📌 Project Objectives

- Design and execute load, stress, and endurance tests.
- Identify system bottlenecks and response degradation patterns.
- Monitor server performance using system metrics and logs.
- Generate professional HTML, NMON, and other reports.
- Automate performance test execution and reporting via scripts.

---

## 🛠️ Tech Stack

| Tool/Tech           | Purpose                          |
|---------------------|----------------------------------|
| Apache JMeter       | Load testing and scripting       |
| Postman (Optional)  | API functional validation        |
| Shell Scripting     | Report automation, monitoring    |
| NMON, GC Logs       | Server and JVM analysis          |
| InfluxDB & Grafana  | Real-time performance monitoring |
| GitHub              | Project versioning               |

---

## 📂 Project Structure

```bash
performance-testing-restful-booker/
├── test-plans/
│   └── restful-booker-test-plan.jmx
├── data/
│   ├── booking-data.csv
│   └── users.csv
├── reports/
│   ├── html-reports/
│   ├── nmon/
│   └── db2mon/
├── results/
│   └── test-results.jtl
├── scripts/
│   ├── generate-report.sh
│   └── monitor.sh
├── analysis/
│   ├── gc-logs/
│   ├── thread-dumps/
│   └── analysis-summary.md
├── postman/
│   ├── restful-booker-collection.json
│   └── environment.json
└── README.md
