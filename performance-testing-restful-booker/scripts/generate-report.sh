#!/bin/bash

# === CONFIGURE VARIABLES ===
JMETER_BIN_PATH="C:/apache-jmeter-5.6.3/apache-jmeter-5.6.3/bin"   # Update path to your JMeter bin
CSV_RESULTS="C:/PerfProjectRepo/Performance-Testing-portfolio/performance-testing-restful-booker/results/RestfulBooker-test-results2.csv"                    #CSV file from JMeter
OUTPUT_DIR="C:/PerfProjectRepo/Performance-Testing-portfolio/performance-testing-restful-booker/reports/html-reports-apis"                        # Output folder for report

# === GENERATE HTML REPORT ===
echo "Generating JMeter HTML report from CSV..."
"$JMETER_BIN_PATH/jmeter" \
  -g "$CSV_RESULTS" \
  -o "$OUTPUT_DIR"

echo "✅ HTML Report generated at: $OUTPUT_DIR"
