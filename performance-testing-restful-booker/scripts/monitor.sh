# This script is for Linux systems to monitor server performance
# Not applicable for public APIs or Windows-only environments
# Below script is for refrence purpose only



#!/bin/bash

# monitor.sh - Starts system monitoring tools in the background
# Usage: ./monitor.sh &

# Create the logs directory if it doesn't exist
REPORT_DIR="../reports/nmon"
mkdir -p "$REPORT_DIR"

echo "📊 Starting system monitoring..."

# Start nmon (collects data every 10 seconds, 60 times = 10 minutes)
nmon -f -s 10 -c 60 -F "$REPORT_DIR/nmon_output.nmon" &
NMON_PID=$!

# Capture top output every 10 seconds
top -b -d 10 > "$REPORT_DIR/top.log" &
TOP_PID=$!

# Capture vmstat output every 10 seconds, 60 times
vmstat 10 60 > "$REPORT_DIR/vmstat.log" &
VMSTAT_PID=$!

echo "✅ Monitoring started."
echo "  - NMON log:     $REPORT_DIR/nmon_output.nmon"
echo "  - Top log:      $REPORT_DIR/top.log"
echo "  - Vmstat log:   $REPORT_DIR/vmstat.log"

# Optionally wait for background processes to finish
# wait $NMON_PID $TOP_PID $VMSTAT_PID
